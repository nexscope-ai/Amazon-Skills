---
name: amazon-repricing-strategy
description: "Amazon repricing strategy advisor — competitive pricing rules, Buy Box optimization, margin protection, and repricing tool selection. Builds custom repricing logic based on your goals: Buy Box win rate, margin targets, or velocity."
metadata:
  nexscope:
    emoji: "🔄"
    category: amazon
---

# Amazon Repricing Strategy 🔄

Amazon repricing strategy advisor — competitive pricing rules, Buy Box optimization, margin protection, and repricing tool selection. Builds custom repricing logic based on your goals: Buy Box win rate, margin targets, or velocity.

**Supported platforms:** Amazon (all marketplaces — US, UK, DE, CA, JP, AU, etc.).

Built by [Nexscope](https://www.nexscope.ai/?co-from=skill) — your AI assistant for smarter e-commerce decisions.

## Install

```bash
npx skills add nexscope/amazon-repricing-strategy
```

## Usage

```
I'm losing the Buy Box on 30% of my listings. I have 200 SKUs in electronics, price range $15-$80. Help me build a repricing strategy that wins Buy Box without destroying margins.
```

## Capabilities

- Buy Box algorithm analysis: price, fulfillment, seller metrics, shipping speed weighting
- Repricing rule design: floor/ceiling prices, competitor-based rules, velocity-based adjustments
- Margin protection: minimum margin guardrails, break-even price floors, fee-aware pricing
- Competitive landscape assessment: number of sellers, FBA vs FBM mix, pricing patterns
- Repricing tool comparison: Amazon Automate Pricing vs third-party (RepricerExpress, Informed, BQool, Aura)
- Scenario-specific strategies: private label, wholesale, arbitrage, seasonal products
- Buy Box win rate optimization: identify which factors are costing you the Box
- Time-based repricing: peak hours, day-of-week patterns, seasonal adjustments

## How This Skill Works

**Step 1:** Collect seller details — number of SKUs, categories, current Buy Box win rate, fulfillment method, average margin, pricing range, current repricing approach.

**Step 2:** Ask one follow-up with all remaining questions using multiple-choice format. Allow shorthand answers (e.g., "1b 2c 3a").

**Step 3:** Analyze the competitive landscape and design repricing rules tailored to the seller's goals and product mix.

**Step 4:** Deliver a complete repricing strategy with specific rules, tool recommendations, and implementation steps.

## Output Format

- Current state diagnosis: Buy Box win rate issues, margin analysis, competitive position
- Repricing rules: specific logic for each product segment (floor, ceiling, match/beat rules)
- Tool recommendation with setup instructions
- Implementation timeline: phased rollout to minimize risk
- KPIs to track: Buy Box %, margin %, velocity, revenue impact
- Mark estimates with ⚠️ when based on incomplete data
- End with concrete next steps

## Other Skills

More e-commerce skills: [nexscope-ai/eCommerce-Skills](https://github.com/nexscope-ai/eCommerce-Skills)

Amazon-specific skills: [nexscope-ai/Amazon-Skills](https://github.com/nexscope-ai/Amazon-Skills)

Built by [Nexscope](https://www.nexscope.ai/?co-from=skill) — your AI assistant for smarter e-commerce decisions.
