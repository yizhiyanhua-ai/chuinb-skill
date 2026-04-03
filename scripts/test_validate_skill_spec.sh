#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
VALIDATOR="$ROOT_DIR/scripts/validate_skill_spec.sh"

workdir="$(mktemp -d)"
trap 'rm -rf "$workdir"' EXIT

# 1) Pass case (current SKILL.md)
bash "$VALIDATOR" "$ROOT_DIR/SKILL.md" >/dev/null

# 2) Missing section should fail
cat > "$workdir/missing.md" <<'DOC'
## Phase 2: Deep Research
### 2.1 Source Credibility Guardrails (MANDATORY)
### 2.2 Conflict Handling Protocol
### 2.3 Citation & Evidence Rules (MANDATORY)
### 2.4 Reference Module Routing
## Phase 3: Media Acquisition (MANDATORY - DO NOT SKIP)
### 3.8 媒体失败降级策略（MANDATORY）
### 3.9 版权与合规提示（MANDATORY）
### 5.3 Scenario Modes (Output Adaptation)
### 5.4 Output Quality Rubric (Self-check)
DOC

if bash "$VALIDATOR" "$workdir/missing.md" >/dev/null 2>&1; then
  echo "ERROR: expected missing-section case to fail"
  exit 1
fi

# 3) Duplicate critical heading should fail
cat > "$workdir/duplicate.md" <<'DOC'
## Phase 2: Deep Research
### 2.1 Source Credibility Guardrails (MANDATORY)
### 2.1 Source Credibility Guardrails (MANDATORY)
### 2.2 Conflict Handling Protocol
### 2.3 Citation & Evidence Rules (MANDATORY)
### 2.4 Reference Module Routing
## Phase 3: Media Acquisition (MANDATORY - DO NOT SKIP)
### 3.8 媒体失败降级策略（MANDATORY）
### 3.9 版权与合规提示（MANDATORY）
### 5.3 Scenario Modes (Output Adaptation)
### 5.4 Output Quality Rubric (Self-check)
## Quality Checklist
DOC

if bash "$VALIDATOR" "$workdir/duplicate.md" >/dev/null 2>&1; then
  echo "ERROR: expected duplicate-heading case to fail"
  exit 1
fi

echo "All validator tests passed."
