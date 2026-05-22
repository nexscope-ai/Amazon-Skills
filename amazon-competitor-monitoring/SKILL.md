---
name: amazon-competitor-monitoring
description: "Amazon competitor monitoring and competitive intelligence for sellers. Track pricing changes, inventory levels, new product launches, review velocity, and advertising patterns for competitor ASINs. Set up monitoring alerts for price drops, stock-outs, and market changes. Works on 12 Amazon marketplaces. No API key required. Use when: (1) monitoring competitor pricing strategies, (2) tracking competitor inventory and stock patterns, (3) detecting new product launches in your category, (4) analyzing competitor review velocity and ratings, (5) identifying market opportunities from competitor gaps, (6) setting up competitive alerts and benchmarks."
metadata: {"nexscope":{"emoji":"🔍","category":"amazon"}}
---

# Amazon Competitor Monitoring 🔍

Track competitor strategies, pricing changes, and market opportunities. No API key — works out of the box.

## Installation

```bash
npx skills add nexscope-ai/Amazon-Skills --skill amazon-competitor-monitoring -g
```

## Capabilities

- **Price monitoring**: Track competitor pricing changes, discount patterns, and Buy Box rotation
- **Inventory tracking**: Monitor stock levels, restock patterns, and out-of-stock opportunities  
- **Product launches**: Detect new competitor products and category expansions
- **Review intelligence**: Analyze review velocity, rating changes, and sentiment shifts
- **Advertising insights**: Identify competitor ad strategies and keyword targeting patterns
- **Performance benchmarking**: Compare your metrics against competitor baselines
- **Multi-marketplace support**: US, UK, DE, FR, IT, ES, JP, CA, AU, IN, MX, BR

## Usage Examples

Users can ask naturally. Examples:

```
Monitor competitor ASIN B08XYZ123 for pricing changes on Amazon US
```

```
Track the top 5 competitors in portable blenders category — alert me for price drops over 10%
```

```
Analyze competitor pricing strategy for ASIN B09ABC456 over the last 90 days
```

```
Set up monitoring for yoga mat category — track new launches and inventory patterns
```

```
Compare my product B0DEF789 against top 3 competitors: pricing, reviews, and BSR performance
```

## Workflow

### Step 1: Identify Competitors

Use `web_search` to find competitor products:

1. Search `"[product category]" site:amazon.com` — identify top products by relevance
2. Search `"[your main keyword]" amazon best sellers` — find category leaders
3. Extract ASINs, current prices, ratings, and BSR data from search results

### Step 2: Baseline Data Collection

For each competitor ASIN, use `web_fetch` to gather current state:
- Product title and current price
- Best Seller Rank and category position
- Customer rating and review count
- Availability status (in stock/low stock/out of stock)
- Prime eligibility and shipping options

### Step 3: Historical Context Research

Use `web_search` to understand competitor patterns:
1. Search `"[ASIN] price history discount"` — find pricing pattern information
2. Search `"[brand] new product launch amazon"` — detect launch patterns
3. Search `"[ASIN] reviews complaints issues"` — identify competitor weaknesses

### Step 4: Competitive Analysis Report

Synthesize findings into actionable insights following the output format below.

## Output Format

Present the final report in this structure:

```
## Competitor Analysis Report: [Category]

**Marketplace:** Amazon [US/UK/DE/...] | **Analysis Date:** [current date]
**Competitors Analyzed:** [count] | **Monitoring Period:** [timeframe]

### 1. Pricing Intelligence

| ASIN | Product | Current Price | Price Change | Alert Status |
|------|---------|---------------|--------------|--------------|
| B08ABC123 | [Competitor A] | $19.99 | ↓ 20% (30d) | 🔴 Major Drop |
| B09DEF456 | [Competitor B] | $34.99 | → Stable | 🟢 Normal |
| B0GHI789 | [Competitor C] | $27.50 | ↑ 5% (7d) | 🟡 Minor Rise |

**Price Range:** $19.99 - $34.99 | **Average:** $27.49

### 2. Inventory & Availability

| ASIN | Stock Status | Restock Pattern | Opportunity Window |
|------|-------------|-----------------|-------------------|
| B08ABC123 | In Stock | Weekly | Low |
| B09DEF456 | Low Stock (3 left) | Monthly | High - Stock Out Risk |
| B0GHI789 | Out of Stock | Unknown | High - Market Gap |

### 3. Performance Metrics

| ASIN | BSR | Rating | Reviews | Review Velocity |
|------|-----|--------|---------|----------------|
| B08ABC123 | #156 | 4.3★ | 1,247 | 15/week |
| B09DEF456 | #89 | 4.6★ | 2,891 | 8/week |
| B0GHI789 | #2,456 | 4.1★ | 456 | 3/week |

### 4. Market Opportunities

**Immediate Actions:**
- Price gap at $22-25 range (no strong competitor)
- Inventory opportunity during Competitor C stock-out
- Feature gap: competitors lack [specific feature]

**Strategic Insights:**
- Market leader vulnerable on durability complaints
- Premium segment emerging above $35
- Seasonal demand increase detected

**Recommended Monitoring Alerts:**
- Price drops >10% in 7-day period
- Stock-out events for top 3 competitors  
- New product launches in category
- Review velocity spikes (>2x normal)
```

## Integration with Other Skills

This skill works well when chained with other skills from the [Nexscope Amazon-Skills](https://github.com/nexscope-ai/Amazon-Skills) repository.

### With amazon-sales-estimator

```bash
npx skills add nexscope-ai/Amazon-Skills --skill amazon-sales-estimator -g
```

```
Step 1: "Monitor competitors B08ABC123, B09DEF456"
   → amazon-competitor-monitoring provides pricing and BSR data

Step 2: "Estimate monthly sales for those competitors"  
   → amazon-sales-estimator calculates revenue benchmarks
```

### With amazon-keyword-research

```bash
npx skills add nexscope-ai/Amazon-Skills --skill amazon-keyword-research -g
```

```
Step 1: "Find competitor keyword strategies for yoga mat"
   → amazon-keyword-research reveals keyword gaps

Step 2: "Monitor top competitors in that keyword space"
   → amazon-competitor-monitoring tracks their performance
```

## Limitations

This skill uses publicly available Amazon data and web search results. It cannot access real-time pricing APIs, historical BSR data, or automated alerts. For live competitor monitoring with automatic notifications and deeper analytics, check out **[Nexscope](https://www.nexscope.ai/?co-from=skill)** — Your AI Assistant for smarter E-commerce decisions.

---

**Built by [Nexscope](https://www.nexscope.ai/?co-from=skill)** — research, validate, and act on e-commerce opportunities with AI.