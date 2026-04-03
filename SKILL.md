---
name: chuinb
description: >
  This skill transforms users into confident industry insiders through immersive, research-driven learning experiences.
  It should be used when users want to quickly master an unfamiliar industry, field, skill, or domain — whether for
  professional networking, investment decisions, career transitions, or pure curiosity. The skill combines Feynman
  Technique, First Principles thinking, and 80/20 analysis with deep web research to generate beautifully formatted,
  media-rich learning notes with interactive flashcards and quizzes. Triggers include: "help me understand [industry]",
  "I need to learn about [field] quickly", "make me an insider in [domain]", "行业速成", "快速掌握", "深度学习笔记",
  "/chuinb", "/master", or any request to rapidly acquire domain expertise.
---

# Industry Mastery: 行业速成大师

> **Transform from outsider to insider in hours, not months.**

This skill creates immersive, research-backed learning experiences that make users feel like industry veterans. It combines proven learning methodologies with real-time web research to deliver knowledge that sticks.

## Core Philosophy

### The Three Pillars

```
┌─────────────────────────────────────────────────────────────────┐
│                    INDUSTRY MASTERY                             │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│   🧠 FEYNMAN TECHNIQUE        ⚛️ FIRST PRINCIPLES               │
│   "If you can't explain       "Boil everything down             │
│    it simply, you don't        to fundamental truths,           │
│    understand it well enough"   then reason up from there"      │
│                                                                 │
│                    📊 80/20 PARETO                              │
│                    "20% of knowledge delivers                   │
│                     80% of practical value"                     │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

---

## ⚠️ CRITICAL: Execution Flow (MUST FOLLOW)

### Overview

```
┌─────────────────────────────────────────────────────────────────┐
│                    EXECUTION FLOW                               │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  Phase 1: User Profiling ──────────────────────────────────     │
│           Ask 3 questions about goal, background, time          │
│                          ↓                                      │
│  Phase 2: Deep Research ───────────────────────────────────     │
│           WebSearch + WebFetch for content                      │
│                          ↓                                      │
│  Phase 3: Media Acquisition (MANDATORY) ───────────────────     │
│           Download images + videos + generate AI images         │
│                          ↓                                      │
│  Phase 4: Ask Save Path ───────────────────────────────────     │
│           Use AskUserQuestion to get save location              │
│                          ↓                                      │
│  Phase 5: Generate & Save ─────────────────────────────────     │
│           Create markdown file with embedded media              │
│                          ↓                                      │
│  Phase 6: Interactive Follow-up ───────────────────────────     │
│           Offer deep dives, practice scenarios                  │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

---

## Phase 1: User Profiling (MANDATORY FIRST STEP)

Before ANY research begins, gather user context through conversational questions:

```
┌─────────────────────────────────────────────────────────────────┐
│  🎯 USER PROFILING QUESTIONS                                    │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  1. 「你的目标」What do you want to achieve?                    │
│     □ 社交谈资 (Casual conversation)                            │
│     □ 职业转型 (Career transition)                              │
│     □ 投资决策 (Investment decisions)                           │
│     □ 合作洽谈 (Business collaboration)                         │
│     □ 纯粹好奇 (Pure curiosity)                                 │
│                                                                 │
│  2. 「当前背景」What's your current profession/background?      │
│     (This helps tailor analogies and explanations)              │
│                                                                 │
│  3. 「时间预算」How much time can you invest?                   │
│     □ 30分钟速览 (Quick overview)                               │
│     □ 2小时深入 (Deep dive)                                     │
│     □ 持续学习 (Ongoing learning)                               │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

**Present these questions conversationally, not as a form.** Adapt based on context clues in the user's initial request.

---

## Phase 2: Deep Research

Execute comprehensive web research covering:

1. **Industry Fundamentals**
   - Core business models and value chains
   - Key players (companies, organizations)
   - Market size and growth trends

2. **Key Figures & Events**
   - Influential people (founders, thought leaders, critics)
   - Historical milestones and turning points
   - Recent news and developments

3. **Professional Vocabulary**
   - Industry jargon and acronyms
   - Insider phrases and expressions
   - Common misconceptions to avoid

4. **Real Cases & Stories**
   - Success stories with specific details
   - Notable failures and lessons learned
   - Current controversies or debates

**Research Tools:**
- Use `WebSearch` for current information, news, trends
- Use `WebFetch` for detailed article content

### 2.1 Source Credibility Guardrails (MANDATORY)

在整理研究结果前，必须执行以下可信度约束：

- **最少来源数量**：至少引用 5 个有效来源
- **来源类型配比**（至少覆盖 2 类）：
  - 官方/监管/机构报告（公司财报、政府、协会、咨询机构）
  - 主流媒体或行业媒体
  - 专业研究文章或高质量数据库
- **时间窗口要求**：
  - 至少 2 条信息来自最近 12 个月
  - 涉及“最新进展”时，优先最近 90 天来源
- **可追溯性**：关键结论后面必须附来源链接或出处说明

### 2.2 Conflict Handling Protocol

当不同来源出现冲突信息时，遵循以下流程：

1. 明确列出冲突点（例如市场规模、增长率、关键事件日期）
2. 给出每个版本的来源与时间
3. 解释可能的差异原因（统计口径、地区范围、时间维度）
4. 给出“当前最可信结论 + 不确定性说明”

### 2.3 Citation & Evidence Rules (MANDATORY)

- **严禁编造来源**：找不到可信出处时，明确写“暂无权威来源支持”
- **关键结论必须可追溯**：核心观点后附 `[来源名, 日期] + 链接`
- **数据必须带时间戳**：市场规模、增速、排名等信息需注明统计年份

推荐在输出中使用如下格式：

```markdown
### 关键结论与证据

1. 结论 A（置信度：高）
   - 证据 1: [来源名称, 2026-03-10](https://example.com)
   - 证据 2: [来源名称, 2025-11-22](https://example.com)
   - 备注: 不同机构口径略有差异，已按“全球口径”统一
```

### 2.4 Reference Module Routing

按主题选择最小必要参考文件，避免过载：

- 术语与表达：`references/jargon-patterns.md`
- 行业分类研究框架：`references/industry-templates.md`
- 学习方法解释：`references/learning-theories.md`

仅加载与当前用户目标相关的部分，不必每次全量展开。

---

## Phase 3: Media Acquisition (MANDATORY - DO NOT SKIP)

⚠️ **THIS PHASE IS REQUIRED FOR EVERY EXECUTION**

媒体素材是让学习笔记生动有力的关键。**必须**执行媒体获取流程，但数量和类型根据内容需要灵活调整。

### 3.1 媒体获取原则

**核心原则：根据内容类型选择最合适的获取方式**

```
┌─────────────────────────────────────────────────────────────────┐
│                    媒体获取决策树                                │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│  需要什么类型的图片？                                            │
│       │                                                         │
│       ├─→ 事实性图片 ──→ 优先网络下载真实图片                    │
│       │   • 人物照片（创始人、专家、名人）                       │
│       │   • 产品图片、公司 Logo                                  │
│       │   • 剧照、海报、新闻配图                                 │
│       │   • 历史事件照片                                         │
│       │   • 实物图片（咖啡豆、芯片、汽车等）                     │
│       │                                                         │
│       └─→ 概念性图片 ──→ 使用 AI 生成                           │
│           • 价值链/生态系统图                                    │
│           • 流程图、关系图                                       │
│           • 抽象概念的视觉化                                     │
│           • 数据可视化、信息图                                   │
│           • 氛围图、风格示意图                                   │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

### 3.2 媒体数量指南（灵活调整）

**不设硬性数量限制**，根据内容丰富度和主题特点决定：

| 内容类型 | 建议媒体配置 | 说明 |
|----------|-------------|------|
| 人物密集型（如影评、商业领袖） | 3-5 张人物照片 + 1-2 个访谈视频 | 优先下载真实照片 |
| 概念密集型（如金融、技术） | 2-4 张概念图 + 1-2 个解释视频 | 优先 AI 生成 |
| 案例密集型（如商业分析） | 2-3 张案例图 + 1-2 张流程图 | 混合使用 |
| 视觉艺术类（如电影、设计） | 4-6 张剧照/作品图 + 1-2 个片段 | 优先下载真实图片 |

### 3.3 图片获取策略

#### 策略 A：事实性图片 → 优先网络下载

**适用场景**：
- 人物照片（创始人、CEO、专家、艺术家、导演、演员等）
- 产品图片、公司 Logo、品牌视觉
- 电影剧照、海报、专辑封面
- 新闻事件配图、历史照片
- 实物图片（食物、设备、建筑等）

**获取方式**：

```bash
# 方式 1: 使用 media-downloader（需要 API Key）
python ~/.claude/skills/media-downloader/media_cli.py image "关键词" -n 数量 -o 输出目录

# 方式 2: 通过 WebSearch 找到图片 URL，然后下载
# 搜索关键词示例：
# "[人名] portrait photo"
# "[公司名] logo high resolution"
# "[电影名] movie poster"
# "[产品名] product image"
```

**搜索关键词模板**：
```
人物照片:   "[姓名] portrait" / "[姓名] headshot" / "[姓名] photo"
公司Logo:   "[公司名] logo png" / "[公司名] brand"
电影海报:   "[电影名] movie poster" / "[电影名] official poster"
剧照:       "[电影名] still" / "[电影名] scene" / "[电影名] screenshot"
产品图:     "[产品名] product photo" / "[产品名] official image"
```

#### 策略 B：概念性图片 → 使用 AI 生成

**适用场景**：
- 行业价值链、生态系统图
- 业务流程图、工作流程
- 抽象概念的视觉化表达
- 关系图、层级图
- 氛围图、风格示意图
- 找不到合适真实图片时的备选

**使用 zimage-skill 生成**：

```bash
MODELSCOPE_API_KEY="your-key" python3 ~/.claude/skills/zimage-skill/generate.py "prompt" "output.jpg"
```

**Prompt 模板**：

```
# 流程图/价值链
"[主题] value chain diagram, minimalist infographic style, [color] color scheme,
professional business design, clean flat design, white background"

# 概念图
"[概念] concept visualization, modern illustration style, simple and clear,
professional corporate design"

# 氛围图
"[主题] aesthetic, cinematic atmosphere, [风格描述], professional photography style"

# 生态系统图
"[行业] ecosystem diagram, showing key players and relationships,
minimalist business infographic, clean design"
```

#### 策略 C：备选方案

当以上方式都失败时：
- 提供外部链接：`[查看图片](url)`
- 使用文字描述代替
- 使用 Mermaid 图表（适用于流程图）

### 3.4 视频获取策略

**使用 media-downloader 下载 YouTube 视频**：

```bash
python ~/.claude/skills/media-downloader/media_cli.py youtube "URL" -o "输出目录" --end 120
```

**视频类型与搜索关键词**：

| 视频类型 | 搜索关键词模板 | 适用场景 |
|----------|---------------|----------|
| 解释性视频 | `"[概念] explained"`, `"how [X] works"` | 复杂概念讲解 |
| 入门视频 | `"[行业] 101"`, `"[行业] for beginners"` | 行业入门 |
| 人物访谈 | `"[人名] interview"`, `"[人名] talk"` | 人物介绍 |
| TED 演讲 | `"[主题] TED talk"` | 思想启发 |
| 纪录片片段 | `"[主题] documentary"` | 深度内容 |
| 新闻报道 | `"[事件] news report"` | 时事案例 |

**视频要求**：
- 时长：根据内容价值灵活裁剪（建议 60-180 秒）
- 内容：与主题直接相关
- 质量：至少 720p

### 3.5 媒体文件命名规范

```
人物照片:   person-[姓名拼音或英文].jpg
概念图:     diagram-[描述].jpg
剧照/海报:  poster-[作品名].jpg / still-[作品名].jpg
案例图:     case-[案例名].jpg
产品图:     product-[产品名].jpg
视频:       video-[主题].mp4
```

### 3.6 媒体嵌入格式 (Obsidian)

```markdown
图片: ![[media/filename.jpg]]
视频: ![[media/filename.mp4]]
带说明: ![[media/filename.jpg|这是图片说明]]
```

### 3.7 媒体获取检查清单

在完成媒体获取后，确认：

- [ ] 所有提到的关键人物都有对应图片（真实照片优先）
- [ ] 核心概念有视觉化表达（AI 生成或真实图片）
- [ ] 至少有 1 个相关视频片段
- [ ] 图片和视频数量与内容丰富度匹配
- [ ] 所有媒体文件已下载到本地 media 文件夹
- [ ] 文件命名清晰规范

### 3.8 媒体失败降级策略（MANDATORY）

当媒体获取失败时，不允许直接跳过，必须按顺序降级：

1. **事实图失败**：尝试 AI 生成替代图，并明确标注“AI 生成示意图”
2. **AI 图失败**：改用 Mermaid/ASCII 图或文字结构化描述
3. **视频失败**：提供高质量外链 + 60-120 秒关键内容摘要

### 3.9 版权与合规提示（MANDATORY）

在文档的“延伸阅读”或末尾补充：

- 媒体来源说明（来源平台/作者/链接）
- 版权状态提示（仅学习参考或可商用）
- 商业使用风险提醒（建议优先使用可复用许可素材）

---

## Phase 4: Ask Save Path (MANDATORY)

⚠️ **在生成内容之前，必须询问用户保存路径**

使用 `AskUserQuestion` 工具询问用户：

```
问题: "请告诉我你想把学习笔记保存到哪里？"

选项:
1. 当前目录 (Current directory)
2. 桌面 (Desktop)
3. 自定义路径 (Custom path)
```

**如果用户选择自定义路径**:
- 等待用户输入完整路径
- 验证路径是否存在，不存在则创建

**默认文件结构**:
```
[用户指定路径]/
├── [主题]速成指南.md          # 主文档
└── media/                      # 媒体文件夹
    ├── diagram-*.jpg
    ├── person-*.jpg
    ├── case-*.jpg
    └── video-*.mp4
```

---

## Phase 5: Content Generation & Save

### 5.1 Output Structure Template

```markdown
# [Industry/Field Name] 行业速成指南

> 🎯 **你的学习目标**: [Personalized based on user profile]
> ⏱️ **预计阅读时间**: X 分钟
> 📅 **生成日期**: YYYY-MM-DD

---

## 一句话看懂这个行业

[Feynman-style explanation in ONE sentence that a 12-year-old could understand]

---

## 第一性原理：行业的本质

[Break down to fundamental truths. What problem does this industry solve? Why does it exist?]

![[media/diagram-value-chain.jpg]]
*行业价值链图解*

### 核心价值链
[Visual diagram or clear explanation of how value flows]

### 关键驱动因素
[What makes this industry tick? 3-5 key factors]

---

## 行话速成：像内行人一样说话

| 术语 | 含义 | 使用场景 |
|------|------|----------|
| Term 1 | Meaning | When to use |
| Term 2 | Meaning | When to use |
| ... | ... | ... |

### 常用表达
- "[Insider phrase 1]" — 意思是...
- "[Insider phrase 2]" — 用于...

### 新手常犯的错误
- ❌ 不要说"..." → ✅ 应该说"..."

---

## 必知人物

### [Name 1] — [Title/Role]
> "[Famous quote]"

[Brief bio and why they matter]

### [Name 2] — [Title/Role]
...

---

## 经典案例

### 案例一：[Success/Failure Story Title]

**背景**: ...
**过程**: ...
**结果**: ...
**启示**: [Key takeaway in user's professional context]

![[media/case-example.jpg]]

---

## 精选视频片段

### [Video Title]
![[media/video-explanation.mp4]]
> 📌 **关键点**: [1-2 sentence summary of why this matters]

---

## 闪念卡片 (Flashcards)

<details>
<summary>🔮 点击展开卡片 1</summary>

**Q: [Question]**

---

**A: [Answer]**

</details>

[Generate 5-10 flashcards covering key concepts]

---

## 自测问答

### 问题 1
[Scenario-based question]

<details>
<summary>💡 查看答案</summary>

[Answer with explanation]

</details>

[Generate 3-5 quiz questions]

---

## 行动清单

基于你的目标「[user goal]」，建议的下一步：

- [ ] [Actionable item 1]
- [ ] [Actionable item 2]
- [ ] [Actionable item 3]

---

## 延伸阅读

- [Resource 1](url) — 推荐理由
- [Resource 2](url) — 推荐理由

---

> 💡 **学习小贴士**: [Personalized tip based on user's background]
```

### 5.2 Save Files

1. 创建 media 文件夹
2. 将所有媒体文件保存到 media 文件夹
3. 保存主 markdown 文件

### 5.3 Scenario Modes (Output Adaptation)

根据用户目标自动选择输出重点（可显式声明 mode）：

- `mode=networking`：强调谈资、人物、热点话题
- `mode=interview`：强调高频问答、结构化表达、案例拆解
- `mode=investment`：强调商业模式、增长驱动、风险与竞争格局
- `mode=learning`：强调概念体系、学习路径、记忆卡片

### 5.4 Output Quality Rubric (Self-check)

交付前按 1-5 分自评并简要补强薄弱项：

- 清晰度（小白可理解）
- 准确性（来源可信、可追溯）
- 实用性（可用于会议/面试/投资交流）
- 记忆性（闪卡与测验质量）
- 可读性（结构、排版、图文对应）

若总分 < 18，需至少补强 2 个低分维度后再交付。

---

## Phase 6: Interactive Elements

After delivering the main note, offer interactive follow-ups:

1. **Deep Dive Options**
   - "想深入了解 [specific topic] 吗？"
   - "需要更多 [cases/videos/terminology] 吗？"

2. **Practice Scenarios**
   - "假设你在 [场景]，对方问你 [问题]，你会怎么回答？"
   - Provide feedback on user's responses

3. **Knowledge Checks**
   - Generate additional flashcards on demand
   - Create scenario-based quizzes

4. **Connection Building**
   - "这和你的 [user's profession] 有什么关联？"
   - Help user find bridges between new knowledge and existing expertise

---

## Content Guidelines

### Writing Style

- **Conversational yet professional** — Like a knowledgeable friend explaining things
- **Rich in analogies** — Connect new concepts to familiar ones (based on user's background)
- **Concrete over abstract** — Always include specific examples, numbers, names
- **Visual thinking** — Use diagrams, tables, and formatting liberally

### Personalization Markers

Throughout the note, include personalized elements:

- `「结合你的[background]来理解」` — Bridge to user's expertise
- `「对于[goal]来说，关键是...」` — Goal-oriented framing
- `「这就像你熟悉的[analogy from user's field]」` — Familiar analogies

---

## Quality Checklist

Before delivering the note, verify:

- [ ] User profile questions were asked and answers incorporated
- [ ] At least 5 web searches performed for current information
- [ ] At least 5 valid references collected and traceable
- [ ] At least 2 references are from the last 12 months
- [ ] At least 2 source types covered (official/media/research)
- [ ] Conflicting facts (if any) are explicitly reconciled
- [ ] Minimum 3 real cases with specific details
- [ ] 10+ industry terms explained
- [ ] 2+ key figures profiled
- [ ] 5+ flashcards generated
- [ ] 3+ quiz questions created
- [ ] **媒体获取完成**：
  - [ ] 事实性图片（人物、剧照等）优先从网络下载真实图片
  - [ ] 概念性图片（流程图、价值链）使用 AI 生成
  - [ ] 图片数量与内容丰富度匹配（不设硬性限制）
  - [ ] 至少 1 个相关视频片段
- [ ] **User was asked for save path before saving**
- [ ] **Markdown file saved with embedded media**
- [ ] Media source and copyright/compliance note included
- [ ] Output mode selected or inferred from user goal
- [ ] Rubric self-check completed (target total >= 18)
- [ ] Personalization markers present throughout
- [ ] Actionable next steps provided

---

## Tool Integration

### Required Tools

| Tool | Purpose | When to Use |
|------|---------|-------------|
| `WebSearch` | 搜索行业信息 | 每次必用 |
| `WebFetch` | 获取网页详细内容 | 每次必用 |
| `zimage-skill` | 生成概念图 | 概念性图片（流程图、价值链等） |
| `media-downloader` | 下载图片和视频 | 事实性图片 + YouTube 视频 |
| `AskUserQuestion` | 询问保存路径 | 保存前必用 |

### zimage-skill (AI 图片生成)

**功能**: 使用 AI 生成概念图、流程图等

**使用方式**:
```bash
MODELSCOPE_API_KEY="your-key" python3 ~/.claude/skills/zimage-skill/generate.py "prompt" "output.jpg"
```

**Prompt 最佳实践**:
```
"[主题] diagram/infographic, minimalist style, [color] color scheme,
professional design, clean flat design, white background"
```

### media-downloader (媒体下载器)

**功能**: 下载 YouTube 视频并裁剪

**使用方式**:
```bash
# 下载并裁剪视频
python ~/.claude/skills/media-downloader/media_cli.py youtube "URL" -o "目录" --end 120

# 检查配置状态
python ~/.claude/skills/media-downloader/media_cli.py status
```

---

## Example Triggers

- "帮我快速了解私募股权行业"
- "I need to understand the semiconductor industry by next week"
- "想成为咖啡行业的内行人"
- "Help me master the basics of venture capital"
- "下周要和动漫行业的人聊天，帮我速成"
- "/chuinb blockchain"
- "/master contemporary art"

---

## Troubleshooting

### zimage-skill 报错 "API Key required"

需要设置环境变量：
```bash
export MODELSCOPE_API_KEY="your-api-key"
```

获取 API Key: https://modelscope.cn/my/myaccesstoken

### media-downloader 图片下载失败

需要配置图库 API Key：
```bash
export PEXELS_API_KEY="your-key"
export PIXABAY_API_KEY="your-key"
```

**备选方案**: 使用 zimage-skill 生成图片代替下载

### YouTube 视频下载失败

确保已安装 yt-dlp：
```bash
pip install yt-dlp
```
