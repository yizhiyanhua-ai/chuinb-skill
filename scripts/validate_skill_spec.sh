#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SKILL_FILE="${1:-$ROOT_DIR/SKILL.md}"

if [[ ! -f "$SKILL_FILE" ]]; then
  echo "ERROR: SKILL.md not found at $SKILL_FILE"
  exit 1
fi

required_sections=(
  "## Phase 2: Deep Research"
  "### 2.1 Source Credibility Guardrails (MANDATORY)"
  "### 2.2 Conflict Handling Protocol"
  "### 2.3 Citation & Evidence Rules (MANDATORY)"
  "### 2.4 Reference Module Routing"
  "## Phase 3: Media Acquisition (MANDATORY - DO NOT SKIP)"
  "### 3.8 媒体失败降级策略（MANDATORY）"
  "### 3.9 版权与合规提示（MANDATORY）"
  "### 5.3 Scenario Modes (Output Adaptation)"
  "### 5.4 Output Quality Rubric (Self-check)"
  "## Quality Checklist"
)

missing=0
for section in "${required_sections[@]}"; do
  if ! rg -n --fixed-strings "$section" "$SKILL_FILE" >/dev/null; then
    echo "MISSING: $section"
    missing=1
  fi
done

if [[ $missing -ne 0 ]]; then
  echo "\nValidation failed: one or more required sections are missing."
  exit 1
fi

# Ensure no duplicated section headings for critical sections.
critical_unique=(
  "### 2.1 Source Credibility Guardrails (MANDATORY)"
  "### 2.2 Conflict Handling Protocol"
  "### 2.3 Citation & Evidence Rules (MANDATORY)"
  "### 2.4 Reference Module Routing"
)

for section in "${critical_unique[@]}"; do
  count=$(rg -n --fixed-strings "$section" "$SKILL_FILE" | wc -l | tr -d ' ')
  if [[ "$count" != "1" ]]; then
    echo "ERROR: Section appears $count times (expected 1): $section"
    exit 1
  fi
done

echo "Validation passed: SKILL.md contains required guardrails and structure."
