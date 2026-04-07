---
name: amazon-profit-analyzer
description: "Comprehensive Amazon profit analysis — revenue breakdown, fee structure, true net margin, and optimization opportunities. Analyzes per-ASIN and portfolio-level profitability including advertising costs, returns, and hidden fees."
metadata:
  nexscope:
    emoji: "💰"
    category: amazon
---

# Amazon Profit Analyzer 💰

Comprehensive Amazon profit analysis — revenue breakdown, fee structure, true net margin, and optimization opportunities. Analyzes per-ASIN and portfolio-level profitability including advertising costs, returns, and hidden fees.

**Supported platforms:** Amazon (US, UK, DE, CA, JP, AU, and all marketplaces).

Built by [Nexscope](https://www.nexscope.ai/) — your AI assistant for smarter e-commerce decisions.

## Install

```bash
npx skills add nexscope/amazon-profit-analyzer
```

## Usage

```
Analyze the profitability of my Amazon product: I sell a yoga mat for $34.99, COGS is $8, I spend $400/month on PPC with 15% ACoS. My return rate is about 5%. Is this product actually profitable?
```

## Capabilities

- Per-ASIN profit waterfall: Revenue → COGS → FBA fees → referral fees → ad spend → returns → net profit
- Hidden fee identification: long-term storage, removal orders, reimbursement gaps, coupon costs
- ACoS/TACoS impact on true margin — break-even ACoS calculation
- Return cost analysis: return shipping, restocking loss, unsellable inventory
- Portfolio-level profitability: identify top performers vs. margin drains
- Scenario modeling: price change impact, fee increase simulation, ad budget shifts
- Benchmark comparison: category-average margins, fee ratios, return rates

## How This Skill Works

**Step 1:** Collect product details from the user — selling price, COGS, category, dimensions/weight (for FBA fees), monthly units, ad spend, return rate.

**Step 2:** Ask one follow-up with all remaining questions using multiple-choice format. Allow shorthand answers (e.g., "1b 2c 3a").

**Step 3:** Build a complete profit waterfall breaking down every cost line. Calculate true net margin after ALL fees (not just the obvious ones).

**Step 4:** Deliver structured output with specific dollar amounts, margin percentages, and prioritized optimization recommendations.

## Output Format

- Profit waterfall table: each cost as $ amount and % of revenue
- True net margin (not gross margin — include everything)
- Break-even analysis: minimum price, maximum ACoS, maximum return rate
- Top 3 optimization opportunities ranked by $ impact
- Mark estimates with ⚠️ when based on incomplete data (e.g., assumed FBA fees without exact dimensions)
- End with concrete next steps

## Other Skills

More e-commerce skills: [nexscope-ai/eCommerce-Skills](https://github.com/nexscope-ai/eCommerce-Skills)

Amazon-specific skills: [nexscope-ai/Amazon-Skills](https://github.com/nexscope-ai/Amazon-Skills)

Built by [Nexscope](https://www.nexscope.ai/) — your AI assistant for smarter e-commerce decisions.
