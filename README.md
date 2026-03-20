# 🔍 Amazon Skills by Nexscope

Free AI agent skills for Amazon sellers — keyword research, listing optimization, FBA calculations, competitor analysis & more.

Works with **OpenClaw**, **Claude Code**, **Cursor**, **Windsurf**, **Codex**, and any agent that supports the [Skills format](https://skills.sh).

## Available Skills

| Skill | Description | Status |
|-------|-------------|--------|
| [amazon-keyword-research](./amazon-keyword-research/) | Long-tail keyword mining from Amazon autocomplete, competition analysis, seasonality trends, and market opportunity scoring. 12 marketplaces. | ✅ Available |
| [amazon-listing-optimization](./amazon-listing-optimization/) | Create keyword-optimized listings from scratch or audit existing ones. Supports competitor ASIN analysis and 8-dimension scoring. | ✅ Available |
| [amazon-ppc-campaign](./amazon-ppc-campaign/) | Build PPC campaign structures or optimize existing campaigns. Calculates ACoS targets, groups keywords, sets bid strategies. | ✅ Available |
| [amazon-sales-estimator](./amazon-sales-estimator/) | Estimate monthly sales from BSR, ASIN, or keyword. Three modes: BSR Calculator, ASIN Lookup, Keyword Market Analysis. | ✅ Available |
| [amazon-fba-calculator](./amazon-fba-calculator/) | Complete FBA fee breakdown and profit analysis. Calculate referral fees, fulfillment fees, storage costs, and net margins. | ✅ Available |
| [amazon-review-checker](./amazon-review-checker/) | Review authenticity analyzer. Detect fake reviews, suspicious patterns, time clustering, and verified purchase validation. | ✅ Available |
| [brand-protection-amazon](./brand-protection-amazon/) | Brand protection toolkit. Detect hijackers, counterfeits, MAP violations. Includes Brand Registry complaint templates. | ✅ Available |
| [profit-margin-calculator-amazon](./profit-margin-calculator-amazon/) | Profit margin calculator. Cost breakdowns, break-even analysis, and pricing recommendations. Single and batch mode. | ✅ Available |
| [supply-chain-optimization-amazon](./supply-chain-optimization-amazon/) | Supply chain bottleneck analyzer. Diagnose inventory issues and fulfillment costs with cost reduction strategies. | ✅ Available |
| [tariff-calculator-amazon](./tariff-calculator-amazon/) | Universal tariff calculator. Import duties, landed costs, VAT/GST for any trade route. Section 301, USMCA, HS code lookup. | ✅ Available |

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

```bash
npx skills add nexscope-ai/Amazon-Skills --skill tariff-calculator-amazon -g
```

## Usage

Once installed, just ask your AI agent naturally. The agent will automatically pick the right skill.

### 🔍 amazon-keyword-research
```
Research the keyword "portable blender" on Amazon US
```

### 📝 amazon-listing-optimization
```
Create a listing for my dog t-shirt. Competitors: B0DJ5GMZHQ, B0CMD17929. Cotton, 10 colors.
```

### 📢 amazon-ppc-campaign
```
Build PPC campaigns for my product B0D72TSM62. Cost is $1.50, budget $50/day.
```

### 📊 amazon-sales-estimator
```
Estimate sales for BSR 1500 in Home & Kitchen on Amazon US
```

### 💵 amazon-fba-calculator
```
Calculate FBA fees: $15 selling price, 1.2 lbs, standard size, Home & Kitchen
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
Calculate profit: Product cost $8, shipping $2, selling price $29.99, FBA standard
```

### 📦 supply-chain-optimization-amazon
```
My FBA inventory keeps running out. Lead time 45 days, selling 20/day. Fix it.
```

### 🌍 tariff-calculator-amazon
```
Calculate import duties for shipping electronics from China to US. Product value $5,000.
```

## Supported Marketplaces

🇺🇸 US · 🇬🇧 UK · 🇩🇪 DE · 🇫🇷 FR · 🇮🇹 IT · 🇪🇸 ES · 🇯🇵 JP · 🇨🇦 CA · 🇦🇺 AU · 🇮🇳 IN · 🇲🇽 MX · 🇧🇷 BR

## Why Free?

These skills use publicly available data — no API key, no paid subscription, no setup friction. Install and go.

Want more? **[Nexscope](https://www.nexscope.ai/)** — Your AI Assistant for smarter E-commerce decisions.

## Related

Looking for cross-platform tools? Check out **[eCommerce Skills](https://github.com/nexscope-ai/eCommerce-Skills)** — marketing, profit calculators, brand protection for Shopify, Walmart, TikTok, eBay & more.

## License

MIT

---

Built by **[Nexscope](https://www.nexscope.ai/)** — research, validate, and act on e-commerce opportunities with AI.
