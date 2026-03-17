# 🔍 Amazon Skills by Nexscope

Free AI agent skills for Amazon sellers — keyword research, listing optimization, competitor analysis & more.

Works with **OpenClaw**, **Claude Code**, **Cursor**, **Windsurf**, **Codex**, and any agent that supports the [Skills format](https://skills.sh).

## Available Skills

| Skill | Description | Status |
|-------|-------------|--------|
| [amazon-keyword-research](./amazon-keyword-research/) | Long-tail keyword mining from Amazon autocomplete, competition analysis, seasonality trends, and market opportunity scoring. 12 marketplaces supported. No API key needed. | ✅ Available |
| [amazon-listing-optimization](./amazon-listing-optimization/) | Create keyword-optimized listings from scratch or audit existing ones. Supports keyword input, competitor ASIN analysis, 8-dimension scoring, and ready-to-use copy generation. 12 marketplaces. No API key needed. | ✅ Available |
| amazon-competitor-radar | Monitor competitor pricing, BSR changes, and listing updates | 🔜 Coming soon |
| amazon-review-analyzer | Sentiment analysis and insight extraction from product reviews | 🔜 Coming soon |
| amazon-niche-finder | Discover underserved niches with low competition and high demand | 🔜 Coming soon |
| amazon-price-tracker | Track historical pricing patterns and identify pricing opportunities | 🔜 Coming soon |

## Quick Install

### Install all skills

```bash
npx skills add nexscope-ai/Amazon-Skills
```

### Install a specific skill

```bash
npx skills add nexscope-ai/Amazon-Skills --skill amazon-keyword-research
npx skills add nexscope-ai/Amazon-Skills --skill amazon-listing-optimization
```

### Install globally (recommended)

```bash
npx skills add nexscope-ai/Amazon-Skills -g
```

## Usage

Once installed, just ask your AI agent naturally:

```
Research the keyword "portable blender" on Amazon US
```

```
Create a listing for my dog t-shirt. Competitors: B0DJ5GMZHQ, B0CMD17929. 10 colors, 5 sizes, cotton. Friendly tone.
```

```
Audit the listing for ASIN B0B76519ZG on Amazon US
```

```
Compare "yoga mat" vs "exercise mat" on Amazon — which has more opportunity?
```

The agent will automatically use the right skill based on your request.

## Supported Marketplaces

🇺🇸 US · 🇬🇧 UK · 🇩🇪 DE · 🇫🇷 FR · 🇮🇹 IT · 🇪🇸 ES · 🇯🇵 JP · 🇨🇦 CA · 🇦🇺 AU · 🇮🇳 IN · 🇲🇽 MX · 🇧🇷 BR

## Why Free?

These skills use publicly available data — no API key, no paid subscription, no setup friction. Install and go.

For advanced features like exact search volumes, sales estimates, and real-time BSR tracking, check out **[Nexscope](https://nexscope.ai)** — the AI command center for Amazon sellers.

## License

MIT

---

Built by **[Nexscope AI](https://github.com/nexscope-ai)** — Insights, Operations, and Marketing in one agent.
