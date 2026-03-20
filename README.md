# 🔍 Amazon Skills by Nexscope

Free AI agent skills for Amazon sellers — keyword research, listing optimization, competitor analysis, FBA calculations & more.

Works with **OpenClaw**, **Claude Code**, **Cursor**, **Windsurf**, **Codex**, and any agent that supports the [Skills format](https://skills.sh).

## Available Skills

| Skill | Description | Status |
|-------|-------------|--------|
| [amazon-keyword-research](./amazon-keyword-research/) | Long-tail keyword mining from Amazon autocomplete, competition analysis, seasonality trends, and market opportunity scoring. 12 marketplaces supported. | ✅ Available |
| [amazon-listing-optimization](./amazon-listing-optimization/) | Create keyword-optimized listings from scratch or audit existing ones. Supports keyword input, competitor ASIN analysis, 8-dimension scoring, and ready-to-use copy generation. | ✅ Available |
| [amazon-ppc-campaign](./amazon-ppc-campaign/) | Build PPC campaign structures from scratch or optimize existing campaigns. Calculates ACoS targets, groups keywords by campaign type, sets bid strategies, and generates negative keyword lists. | ✅ Available |
| [amazon-sales-estimator](./amazon-sales-estimator/) | Estimate monthly sales from BSR, ASIN, or keyword. Three modes: BSR Calculator, ASIN Lookup, Keyword Market Analysis. 12 marketplaces. | ✅ Available |
| [amazon-fba-calculator](./amazon-fba-calculator/) | Complete FBA fee breakdown and profit analysis. Calculate referral fees, fulfillment fees, storage costs, and net profit margins. | ✅ Available |
| [amazon-review-checker](./amazon-review-checker/) | Review authenticity analyzer. Detect fake reviews, suspicious patterns, and rating manipulation. Includes time clustering detection and verified purchase validation. | ✅ Available |
| [brand-protection-amazon](./brand-protection-amazon/) | Brand protection toolkit. Detect hijackers, counterfeits, and unauthorized sellers. Includes MAP violation monitoring and Brand Registry complaint templates. | ✅ Available |
| [profit-margin-calculator-amazon](./profit-margin-calculator-amazon/) | Profit margin calculator for Amazon sellers. Calculate cost breakdowns, break-even points, and pricing recommendations. Supports single and batch analysis. | ✅ Available |
| [supply-chain-optimization-amazon](./supply-chain-optimization-amazon/) | Supply chain bottleneck analyzer. Diagnose inventory issues, fulfillment costs, and provide cost reduction strategies. | ✅ Available |

## Quick Install

### Install all skills

```bash
npx skills add nexscope-ai/Amazon-Skills -g
```

### Install a specific skill

```bash
npx skills add nexscope-ai/Amazon-Skills --skill amazon-keyword-research -g
```

```bash
npx skills add nexscope-ai/Amazon-Skills --skill amazon-listing-optimization -g
```

```bash
npx skills add nexscope-ai/Amazon-Skills --skill amazon-ppc-campaign -g
```

```bash
npx skills add nexscope-ai/Amazon-Skills --skill amazon-sales-estimator -g
```

```bash
npx skills add nexscope-ai/Amazon-Skills --skill amazon-fba-calculator -g
```

```bash
npx skills add nexscope-ai/Amazon-Skills --skill amazon-review-checker -g
```

```bash
npx skills add nexscope-ai/Amazon-Skills --skill brand-protection-amazon -g
```

```bash
npx skills add nexscope-ai/Amazon-Skills --skill profit-margin-calculator-amazon -g
```

```bash
npx skills add nexscope-ai/Amazon-Skills --skill supply-chain-optimization-amazon -g
```

## Usage

Once installed, just ask your AI agent naturally. The agent will automatically pick the right skill.

### 🔍 amazon-keyword-research
```
Research the keyword "portable blender" on Amazon US
```

### 📝 amazon-listing-optimization
```
Create a listing for my dog t-shirt. Competitors: B0DJ5GMZHQ, B0CMD17929. 10 colors, 5 sizes, cotton.
```

### 📢 amazon-ppc-campaign
```
Build PPC campaigns for my product B0D72TSM62. Cost is $1.50, budget $50/day.
```

### 📊 amazon-sales-estimator
```
Estimate sales for BSR 1500 in Home & Kitchen on Amazon US, price $24.99
```

### 💵 amazon-fba-calculator
```
Calculate FBA fees for a product: $15 selling price, 1.2 lbs, standard size, Home & Kitchen category
```

### 🔍 amazon-review-checker
```
Analyze reviews for ASIN B0D72TSM62 — are they authentic?
```

### 🛡️ brand-protection-amazon
```
I found a hijacker on my listing B0D72TSM62. Help me file a complaint.
```

### 💰 profit-margin-calculator-amazon
```
Calculate profit margin: Product cost $8, shipping $2, selling price $29.99, FBA standard size
```

### 📦 supply-chain-optimization-amazon
```
My FBA inventory keeps running out. Lead time is 45 days, selling 20 units/day. How do I fix this?
```

## Supported Marketplaces

🇺🇸 US · 🇬🇧 UK · 🇩🇪 DE · 🇫🇷 FR · 🇮🇹 IT · 🇪🇸 ES · 🇯🇵 JP · 🇨🇦 CA · 🇦🇺 AU · 🇮🇳 IN · 🇲🇽 MX · 🇧🇷 BR

## Why Free?

These skills use publicly available data — no API key, no paid subscription, no setup friction. Install and go.

Want more? **[Nexscope](https://www.nexscope.ai/)** — Your AI Assistant for smarter E-commerce decisions. Research products, validate demand, spot trends, and get clear next steps in one conversation.

## Related

Looking for cross-platform e-commerce tools? Check out **[eCommerce Skills](https://github.com/nexscope-ai/eCommerce-Skills)** — PPC strategy, content marketing, profit calculators for Shopify, Walmart, TikTok, eBay & more.

## License

MIT

---

Built by **[Nexscope](https://www.nexscope.ai/)** — research, validate, and act on e-commerce opportunities with AI.
