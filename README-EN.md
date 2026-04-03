# Industry Mastery (chuinb-skill)

<p align="center">
  <img src="assets/icon.png" alt="Industry Mastery Icon" width="128" height="128">
</p>

<p align="center">
  <strong>Transform from outsider to insider in hours, not months</strong>
</p>

<p align="center">
  <img src="assets/landing-banner.png" alt="Industry Mastery Banner" width="100%">
</p>

---

This is a Claude Code skill that helps you quickly master any unfamiliar industry, field, or domain. It automatically searches for the latest information, downloads relevant images and videos, generates AI concept diagrams, and outputs a beautifully formatted learning note.

---

## What Can This Skill Do For You?

Imagine these scenarios:

- Meeting with investors about blockchain next week, but you know nothing about it?
- Want to transition to the renewable energy industry and need a quick overview?
- Friends invited you to discuss coffee culture, and you want to sound knowledgeable?

**Industry Mastery** will help you:

1. Explain the industry essence in simple terms (even a 12-year-old can understand)
2. Teach you industry jargon so you can talk like an insider
3. Introduce key figures and classic cases you must know
4. Generate beautiful images and videos to make learning more engaging
5. Provide flashcards and quizzes to help you retain knowledge
6. Save everything as a note you can review anytime

---

## Installation Guide (Super Easy!)

> 💡 **All steps can be done directly in Claude Code using natural language - no manual commands needed!**

### Step 1: Make Sure You Have Claude Code Installed

If you can type `claude` in your terminal and see Claude's interface, you're all set.

Not installed yet? Visit [Claude Code official website](https://claude.ai/code) and follow the installation guide.

### Step 2: Install This Skill

Open Claude Code and simply say:

```
Help me install the skill from https://github.com/yizhiyanhua-ai/chuinb-skill to ~/.claude/skills
```

Claude will automatically download and install it for you.

### Step 3: Install Dependent Skills

This skill requires two helper skills for image generation and media downloading. Tell Claude:

```
Help me install these two skills to ~/.claude/skills:
- https://github.com/yizhiyanhua-ai/zimage-skill
- https://github.com/yizhiyanhua-ai/media-downloader
```

> 💡 **What these skills do:**
> - **zimage-skill**: Generate AI concept diagrams, flowcharts, etc.
> - **media-downloader**: Download images and video clips from the web

### Step 4: Install Dependencies

Continue telling Claude:

```
Help me install the dependencies for chuinb-skill: yt-dlp, ffmpeg, and Pillow
```

Claude will detect your system and install the required tools automatically.

### Step 5: Configure API Keys

This skill needs two free API keys:

#### 1. Get ModelScope API Key (for AI image generation)

1. Go to https://modelscope.cn
2. Register an account
3. After logging in, click your avatar → "My Access Tokens"
4. Create a new token and copy it

#### 2. Get Pexels API Key (for downloading images, optional)

1. Go to https://www.pexels.com/api/
2. Register an account
3. Click "Your API Key" to get your key

#### 3. Let Claude Configure It

Once you have the keys, tell Claude:

```
Help me configure environment variables:
MODELSCOPE_API_KEY=your-modelscope-key
PEXELS_API_KEY=your-pexels-key
```

Claude will automatically add them to your config file.

### Step 6: Verify Installation

Tell Claude:

```
Check if all dependencies for chuinb-skill are installed correctly
```

Claude will check and report the results.

---

## How to Use

### Natural Conversation (Recommended)

Open Claude Code and simply say:

```
Help me quickly understand the private equity industry
```

```
I want to become an insider in the coffee industry
```

```
I have a meeting about blockchain next week, help me get up to speed
```

### Use Commands

```
/chuinb semiconductor industry
```

```
/master venture capital
```

### Usage Flow

1. **Answer a few questions**: Claude will first ask about your learning goals, background, and time budget
2. **Wait for research**: Claude will automatically search for latest info, download images and videos
3. **Choose save location**: Claude will ask where you want to save the notes
4. **Get your learning notes**: A beautifully formatted Markdown file with images and videos

---

## Output Example

After running, you'll get a file structure like this:

```
your-specified-directory/
├── Private-Equity-Quick-Guide.md    # Main document (can be opened with Obsidian)
└── media/                            # Media folder
    ├── diagram-value-chain.jpg       # AI-generated value chain diagram
    ├── person-xxx.jpg                # Downloaded portrait photos
    └── video-explained.mp4           # Downloaded tutorial video
```

The notes include:
- One-sentence industry summary
- Industry essence analysis
- Professional terminology table
- Key figures introduction
- Classic case studies
- Video clips
- Flashcards and quizzes
- Action checklist

---

## FAQ

### Q: Getting "API Key required" error when generating images

Tell Claude: `Help me check if MODELSCOPE_API_KEY environment variable is configured correctly`

### Q: Video download fails

Tell Claude: `Help me install yt-dlp and ffmpeg`

### Q: Image download fails

This skill prioritizes AI-generated images, so it's okay if image downloads fail. If you want to download web images, you need to configure Pexels API Key.

### Q: Images/videos in notes don't display

This skill generates notes using Obsidian syntax (`![[filename]]`). We recommend using [Obsidian](https://obsidian.md) to open the notes.

### Q: Can I use Chinese or English?

Both! This skill supports bilingual Chinese and English.

---

## Technical Support

If you encounter any issues, just describe your problem in Claude Code, and Claude will help you solve it.

## Maintainer Check (Optional)

Before committing changes to the skill spec, you can run:

```bash
bash scripts/validate_skill_spec.sh
```

This verifies that key guardrail sections in `SKILL.md` exist and are not duplicated.

To run validator self-tests (including expected failure scenarios):

```bash
bash scripts/test_validate_skill_spec.sh
```

---

## Changelog

### v1.2.3 (2026-04-03)
- New: `scripts/validate_skill_spec.sh` now accepts an optional target file path (default: `SKILL.md`)
- New: `scripts/test_validate_skill_spec.sh` covering pass/missing-section/duplicate-heading scenarios
- New: GitHub Actions workflow `.github/workflows/validate-skill.yml` to run checks on push/PR

### v1.2.2 (2026-04-03)
- New: `scripts/validate_skill_spec.sh` to validate required `SKILL.md` sections and heading uniqueness
- New: Maintainer check instructions in README for quick pre-commit verification

### v1.2.1 (2026-04-03)
- Improved: Added stricter evidence rules (no fabricated sources; key claims must include source + date)
- Improved: Added a "Key Conclusions & Evidence" output template for easier review and verification
- Improved: Added reference-module routing guidance for loading only relevant files under `references/`

### v1.2.0 (2026-04-03)
- New: Research credibility guardrails (minimum source count, source-type mix, recency rules)
- New: Conflict handling protocol (explicit conflict points + best-current conclusion + uncertainty note)
- New: Media degradation fallback path (real image -> AI image -> Mermaid/text; video fallback with link + summary)
- New: Copyright and compliance note template (source attribution + usage risk reminder)
- New: Scenario-based output modes (networking / interview / investment / learning)
- New: Output quality rubric (5-dimension scoring + reinforcement for low scores)

### v1.1.0 (2026-01-22)
- New: Smart media acquisition (real image download + AI concept generation)
- New: Ask user for save path before saving
- New: Chinese and English README documentation
- Improved: Clearer execution flow

### v1.0.0
- Initial release
