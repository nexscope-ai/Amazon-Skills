---
name: amazon-sales-estimator
description: "Amazon sales volume estimator for sellers and product researchers. Estimate monthly sales and revenue from BSR (Best Seller Rank), ASIN, or keyword. Three modes: (A) BSR Calculator — input BSR + marketplace + price + category to get instant sales estimate, (B) ASIN Lookup — input ASIN to auto-fetch data and estimate sales, (C) Keyword Market Analysis — input keyword to analyze total market size and competition. Works on 12 Amazon marketplaces. No API key required. Use when: (1) estimating how many units a product sells per month, (2) sizing a market or niche opportunity, (3) analyzing competitor sales performance, (4) comparing sales across price points, (5) identifying top sellers vs long-tail distribution."
metadata: {"nexscope":{"emoji":"📊","category":"amazon"}}
---

# Amazon Sales Estimator 📊

Estimate monthly sales from BSR, analyze market size, and benchmark competitor performance. No API key — works out of the box.

## Installation

```bash
npx skills add nexscope-ai/Amazon-Skills --skill amazon-sales-estimator -g
```

## Three Modes

| Mode | When to Use | Input | Output |
|------|-------------|-------|--------|
| **A — BSR Calculator** | Quick estimate from known BSR | BSR + Marketplace + Price + Category | Monthly units, monthly revenue |
| **B — ASIN Lookup** | Estimate sales for a specific product | ASIN or product URL | Auto-fetch data + sales estimate |
| **C — Keyword Market Analysis** | Size a niche opportunity | Keyword (+ optional marketplace) | Total market sales, top sellers, price distribution |

## Capabilities

- **BSR-to-sales conversion**: Estimate monthly unit sales from Best Seller Rank using category-specific formulas
- **Revenue calculation**: Monthly sales × price = estimated monthly revenue
- **Market sizing**: Aggregate sales across products in a keyword search
- **Price band analysis**: Distribution of sales across price ranges
- **Competition breakdown**: Top sellers vs long-tail distribution
- **Multi-marketplace**: US, UK, DE, FR, IT, ES, JP, CA, AU, IN, MX, BR

## Handling Incomplete Input

If the user's intent is unclear or information is missing, guide them with all options and required inputs upfront:

**User says:** `"Help me estimate Amazon sales"` or `"I want to check sales"`

**Agent should respond:**

> I can help you estimate Amazon sales in 3 ways. Pick one and provide the required info:
>
> **A. BSR Calculator** — Quick estimate from BSR number
> - BSR (required): e.g., 1500
> - Category (required): e.g., Home & Kitchen
> - Price (required): e.g., $24.99
> - Marketplace (optional, default US)
>
> **B. ASIN Lookup** — Check sales for a specific product
> - ASIN or URL (required): e.g., B09V3KXJPB
> - Marketplace (optional, default US)
>
> **C. Market Analysis** — Size a keyword/niche opportunity
> - Keyword (required): e.g., "yoga mat"
> - Marketplace (optional, default US)
> - Filters (optional): price range, min reviews
>
> Example: "Mode A: BSR 1500, Home & Kitchen, $24.99" or "Mode B: B09V3KXJPB"

---

## Mode A — BSR Calculator

### Input

| Field | Required | Description | Example |
|-------|----------|-------------|---------|
| **BSR** | ✅ | Best Seller Rank number | 1500 |
| **Marketplace** | ✅ | Amazon site | US, UK, DE, JP... |
| **List Price** | ✅ | Product price | $24.99 |
| **Category** | ✅ | Product category | Home & Kitchen |

### Usage Examples

```
Estimate sales for BSR 1500 in Home & Kitchen on Amazon US, price $24.99
```

```
BSR 500, category Electronics, marketplace DE, price €39.99
```

```
What's the monthly sales for a product ranked #10,000 in Sports & Outdoors at $15.99?
```

### Workflow

1. **Receive input**: BSR, Category, Price, Marketplace
2. **Look up base sales**: Use BSR-to-sales reference table for the marketplace
3. **Apply category multiplier**: Adjust based on category (Electronics 1.2x, Clothing 0.8x, etc.)
4. **Calculate monthly units**: Base sales × category multiplier
5. **Calculate revenue**: Monthly units × price
6. **Output results**: Monthly units, daily units, monthly revenue

### Output

```
# 📊 Sales Estimate

**Input:**
- BSR: #1,500 in Home & Kitchen
- Marketplace: Amazon US
- Price: $24.99

**Results:**

| Metric | Estimate |
|--------|----------|
| **Est. Monthly Units** | ~450 units |
| **Est. Monthly Revenue** | ~$11,246 |
| **Est. Daily Units** | ~15 units |

*Estimate based on BSR-to-sales conversion formula for the selected category and marketplace.*
```

---

## Mode B — ASIN Lookup

### Input

| Field | Required | Description | Example |
|-------|----------|-------------|---------|
| **ASIN** | ✅ | Amazon product ID or URL | B09V3KXJPB |
| **Marketplace** | Optional | Defaults to US | UK, DE, JP... |

### Usage Examples

```
Estimate monthly sales for ASIN B09V3KXJPB
```

```
How many units does this sell? https://www.amazon.com/dp/B0D72TSM62
```

```
Get sales estimate for B0CPY1GFVZ on Amazon DE
```

### Workflow

1. **Fetch product data** using `web_fetch` on Amazon product page
2. **Extract**: Title, Price, BSR, Category, Rating, Reviews
3. **Apply BSR-to-sales formula** for the category and marketplace
4. **Calculate revenue**: Monthly units × Price

### Output

```
# 📊 Sales Estimate: B09V3KXJPB

## Product Info
- **Title:** [Product Title]
- **Price:** $24.99
- **BSR:** #1,500 in Home & Kitchen
- **Rating:** 4.5★ (1,234 reviews)

## Sales Estimate

| Metric | Estimate |
|--------|----------|
| **Est. Monthly Units** | ~450 units |
| **Est. Monthly Revenue** | ~$11,246 |
| **Est. Daily Units** | ~15 units |

## Competitive Context
- Ranks in **top 0.5%** of Home & Kitchen category
- Above average for $20-30 price range
```

---

## Mode C — Keyword Market Analysis

### Input

| Field | Required | Description | Example |
|-------|----------|-------------|---------|
| **Keyword** | ✅ | Search term | yoga mat |
| **Marketplace** | Optional | Amazon site (default: US) | UK, DE, JP... |
| **Filters** | Optional | Price range, min reviews | $15-$40, 100+ reviews |

### Usage Examples

```
Analyze the market size for "yoga mat" on Amazon US
```

```
What's the total monthly sales for "portable blender" keyword?
```

```
Size the "dog shirt" market on Amazon US. Show top sellers and price distribution.
```

### Workflow

1. **Search products** using `web_search` for `site:amazon.com "{keyword}"`
2. **Fetch top 10-20 product pages** to get BSR data
3. **Estimate sales for each product** using Mode A formula
4. **Aggregate** total market size
5. **Analyze** price distribution and competition

### Output

```
# 📊 Market Analysis: "yoga mat"

**Marketplace:** Amazon US | **Products Analyzed:** 25

## Market Size

| Metric | Value |
|--------|-------|
| **Est. Total Monthly Units** | ~85,000 units |
| **Est. Total Monthly Revenue** | ~$2.1M |
| **Average Price** | $24.50 |

## Top 5 Sellers

| # | ASIN | Price | BSR | Est. Units/Mo |
|---|------|-------|-----|---------------|
| 1 | B0XX... | $22.99 | #45 | ~8,500 |
| 2 | B0YY... | $29.99 | #78 | ~6,200 |
| 3 | B0ZZ... | $18.99 | #120 | ~4,800 |
| ... | ... | ... | ... | ... |

## Market Concentration

- **Top 3:** 23% of total sales
- **Top 10:** 52% of total sales
- **Long tail:** 48% of total sales

→ **Fragmented market** — opportunity for new entrants

## Price Distribution

| Price Band | % of Sales |
|------------|------------|
| $0 - $20 | 25% |
| $20 - $35 | 55% |
| $35+ | 20% |

**Sweet spot:** $20-$35
```

---

## BSR-to-Sales Reference

### Amazon US — Baseline (Home & Kitchen)

| BSR Range | Est. Monthly Sales |
|-----------|-------------------|
| 1-100 | 3,000 - 10,000+ |
| 100-500 | 1,000 - 3,000 |
| 500-2,000 | 300 - 1,000 |
| 2,000-10,000 | 100 - 300 |
| 10,000-50,000 | 30 - 100 |
| 50,000-100,000 | 10 - 30 |
| 100,000+ | < 10 |

### Category Multipliers

| Category | Multiplier |
|----------|------------|
| Electronics | 1.2x |
| Home & Kitchen | 1.0x |
| Toys | 1.1x |
| Sports & Outdoors | 0.9x |
| Clothing | 0.8x |
| Books | 0.7x |

### Marketplace Adjustments

| Marketplace | Factor |
|-------------|--------|
| US | 1.0x |
| JP | 0.6x |
| DE | 0.5x |
| UK | 0.4x |
| CA | 0.3x |
| Others | 0.2x |

---

## Integration with Other Skills

This skill works well when chained with other skills from the [Nexscope Amazon-Skills](https://github.com/nexscope-ai/Amazon-Skills) and [eCommerce-Skills](https://github.com/nexscope-ai/eCommerce-Skills) repositories.

### With amazon-keyword-research

```bash
npx skills add nexscope-ai/Amazon-Skills --skill amazon-keyword-research -g
```

```
Step 1: "Research keywords for yoga mat"
   → amazon-keyword-research returns keyword list with search volumes

Step 2: "Now analyze the market size for the top keyword"
   → amazon-sales-estimator Mode C sizes the opportunity
```

### With amazon-listing-optimization

```bash
npx skills add nexscope-ai/Amazon-Skills --skill amazon-listing-optimization -g
```

```
Step 1: "Estimate sales for competitors: B0ABC, B0XYZ"
   → amazon-sales-estimator Mode B provides benchmark data

Step 2: "Create a listing to beat those competitors"
   → amazon-listing-optimization generates optimized copy
```

### With amazon-ppc-campaign

```bash
npx skills add nexscope-ai/Amazon-Skills --skill amazon-ppc-campaign -g
```

```
Step 1: "Estimate my product's monthly sales"
   → amazon-sales-estimator provides revenue baseline

Step 2: "Build PPC campaigns with 30% ACoS target"
   → amazon-ppc-campaign calculates bids based on your revenue data
```

### More Skills

Browse all available skills:
- **Amazon Skills:** https://github.com/nexscope-ai/Amazon-Skills
- **eCommerce Skills:** https://github.com/nexscope-ai/eCommerce-Skills

---

## Limitations

This skill uses publicly available data from Amazon product pages. It cannot access historical BSR data, actual seller sales figures, or PPC conversion metrics. For deeper analytics and historical trends, check out **[Nexscope](https://www.nexscope.ai/)** — your AI assistant for smarter e-commerce decisions.

---

**Built by [Nexscope](https://www.nexscope.ai/)** — research, validate, and act on e-commerce opportunities with AI.
