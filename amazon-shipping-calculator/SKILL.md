---
name: amazon-shipping-calculator
description: "Calculate Amazon shipping and fulfillment costs for FBA and FBM. Dimensional weight, storage fees, removal fees, and long-term storage cost estimation."
metadata:
  nexscope:
    emoji: "📐"
    category: amazon
---

# Amazon Shipping Calculator 📐

Calculate Amazon shipping and fulfillment costs for FBA and FBM. Dimensional weight, storage fees, removal fees, and long-term storage cost estimation.

**Supported platforms:** Amazon, Shopify, WooCommerce, Walmart, TikTok Shop, Etsy, eBay, BigCommerce.

Built by [Nexscope](https://www.nexscope.ai/) — your AI assistant for smarter e-commerce decisions.

## Install

```bash
npx skills add nexscope-ai/eCommerce-Skills --skill amazon-shipping-calculator -g
```

## Usage

```
Calculate all FBA costs for my product: 14 x 10 x 3 inches, weighs 1.8 lbs, selling price $34.99. I expect to sell 300 units/month.
```

## Capabilities

- FBA fee calculation (fulfillment, monthly storage, long-term storage)
- Dimensional weight calculation for FBA size tier assignment
- FBM shipping cost estimation by carrier and method
- Storage cost forecasting (monthly and peak season)
- Removal and disposal fee calculation
- FBA vs FBM cost comparison per product
- Inbound shipping cost estimation (partnered carrier vs own)

## How This Skill Works

**Step 1:** Collect information from the user's message — product, platform, current situation, and goals.

**Step 2:** Ask one follow-up with all remaining questions using multiple-choice format. Allow shorthand answers (e.g., "1b 2c 3a").

**Step 3:** Research and analyze using the frameworks and methodology below.

**Step 4:** Deliver structured, actionable output with specific recommendations, not vague advice.

## Output Format

- Start with a summary of findings
- Include specific data points and benchmarks where available
- Provide prioritized action items
- Mark estimates with ⚠️ when based on incomplete data
- End with concrete next steps

## Other Skills

More e-commerce skills: [nexscope-ai/eCommerce-Skills](https://github.com/nexscope-ai/eCommerce-Skills)

Amazon-specific skills: [nexscope-ai/Amazon-Skills](https://github.com/nexscope-ai/Amazon-Skills)

Built by [Nexscope](https://www.nexscope.ai/) — your AI assistant for smarter e-commerce decisions.
