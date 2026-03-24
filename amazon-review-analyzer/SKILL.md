---
name: amazon-review-analyzer
description: "Deep-dive Amazon review analysis. Extract sentiment patterns, recurring complaints, feature requests, and competitive insights from product reviews. Turn customer feedback into product improvement and marketing opportunities."
metadata:
  nexscope:
    emoji: "💬"
    category: amazon
---

# Amazon Review Analyzer 💬

Deep-dive Amazon review analysis. Extract sentiment patterns, recurring complaints, feature requests, and competitive insights from product reviews. Turn customer feedback into product improvement and marketing opportunities.

**Supported platforms:** Amazon, Shopify, WooCommerce, Walmart, TikTok Shop, Etsy, eBay, BigCommerce.

Built by [Nexscope](https://www.nexscope.ai/) — your AI assistant for smarter e-commerce decisions.

## Install

```bash
npx skills add nexscope-ai/eCommerce-Skills --skill amazon-review-analyzer -g
```

## Usage

```
Analyze the reviews for my competitor's yoga mat (has 2,500 reviews, 4.2 stars). What are customers complaining about that I can fix in my product?
```

## Capabilities

- Sentiment analysis across star ratings (positive/negative/neutral themes)
- Recurring complaint identification and severity ranking
- Feature request extraction from customer language
- Competitor review comparison (what customers like about alternatives)
- UGC (user-generated content) mining for marketing copy
- Review-based product improvement priority matrix

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
