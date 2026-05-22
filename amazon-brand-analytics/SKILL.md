---
name: amazon-brand-analytics
description: "Amazon Brand Analytics interpretation and strategic insights for Brand Registry owners. Decode Search Frequency Rank (SFR) data, analyze Market Basket patterns, interpret Item Comparison reports, and extract demographic insights to optimize product strategy and advertising spend. Works with Brand Analytics data from all Amazon marketplaces. Requires Brand Registry access. Use when: (1) analyzing Search Frequency Rank data for keyword opportunities, (2) interpreting Market Basket data for cross-sell and bundling, (3) understanding Item Comparison competitive positioning, (4) extracting customer demographic insights, (5) optimizing product portfolio based on customer behavior, (6) building data-driven advertising strategies."
metadata: {"nexscope":{"emoji":"📊","category":"amazon"}}
---

# Amazon Brand Analytics 📊

Unlock Brand Analytics insights for strategic growth. Requires Brand Registry — works with your data.

## Installation

```bash
npx skills add nexscope-ai/Amazon-Skills --skill amazon-brand-analytics -g
```

## Capabilities

- **Search Frequency Rank (SFR) analysis**: Decode keyword opportunities, click share gaps, and conversion optimization
- **Market Basket intelligence**: Identify cross-sell opportunities, bundle strategies, and category expansion
- **Item Comparison insights**: Understand competitive positioning and customer consideration factors
- **Demographic analysis**: Extract customer segment insights and geographic opportunities
- **Seasonal trend detection**: Identify timing patterns and market shifts from search data
- **Strategic recommendations**: Convert raw data into actionable growth strategies
- **Multi-marketplace support**: Works with Brand Analytics from all Amazon regions

## Usage Examples

Users can ask naturally. Examples:

```
Analyze my Search Frequency Rank data for "wireless earbuds" — show keyword opportunities and click share gaps
```

```
Review my Market Basket data for the last 6 months. What cross-sell and bundling opportunities do you see?
```

```
Interpret my Item Comparison report for yoga mats — how do customers evaluate my product vs competitors?
```

```
Generate Brand Analytics strategy report for Q4 combining SFR, Market Basket, and demographic data
```

```
Find seasonal trends and opportunity keywords from my Brand Analytics data for kitchen appliances
```

## Three Analysis Modes

| Mode | Input Required | Output | Best For |
|------|----------------|--------|----------|
| **SFR Analysis** | Search Frequency Rank data export | Keyword opportunities, click/conversion gaps | Advertising optimization |
| **Market Basket** | Market Basket Analysis export | Cross-sell opportunities, bundle recommendations | Product strategy |
| **Item Comparison** | Item Comparison report data | Competitive positioning insights | Product development |

## Workflow

### Step 1: Data Preparation

**For SFR Analysis:**
1. Export Search Frequency Rank report from Brand Analytics (last 90 days recommended)
2. Focus on top 100-200 keywords by search frequency rank
3. Note current click share and conversion share for each keyword

**For Market Basket Analysis:**
1. Export Market Basket Analysis report (6-12 months for pattern recognition)
2. Include both "Customers who bought X also bought Y" data
3. Filter for statistically significant purchase combinations (10+ co-purchases)

**For Item Comparison:**
1. Export Item Comparison report for your main ASINs
2. Include comparison data with top 5-10 competitors
3. Note customer consideration patterns and demographic breakdowns

### Step 2: Pattern Recognition

Use the provided data to identify:

**SFR Insights:**
- Keywords with high search frequency but low click share (opportunity gaps)
- Conversion share significantly below click share (optimization needs)
- Seasonal search pattern changes
- Emerging keyword trends

**Market Basket Patterns:**
- Products with >25% co-purchase rate (strong bundle candidates)
- Category cross-over patterns (expansion opportunities)
- Price point correlations in purchase combinations
- Geographic or demographic purchase pattern differences

**Item Comparison Analysis:**
- Customer consideration factors ranked by importance
- Your brand's competitive strengths and weaknesses
- Price sensitivity patterns in your category
- Feature preferences by customer segment

### Step 3: Strategic Synthesis

Convert insights into actionable recommendations following the output format below.

## Output Format

Present analysis in this structure:

```
## Brand Analytics Strategic Report: [Brand/Category]

**Analysis Period:** [timeframe] | **Data Sources:** [SFR/Market Basket/Item Comparison]
**Marketplace:** Amazon [region] | **Report Date:** [current date]

### 1. Search Frequency Rank Opportunities

**Top Keyword Gaps:**

| Keyword | Search Rank | Your Click Share | Category Avg | Opportunity Score |
|---------|-------------|------------------|--------------|-------------------|
| "wireless earbuds waterproof" | #23 | 2.1% | 8.4% | High |
| "bluetooth headphones gym" | #45 | 0.8% | 5.2% | Medium |
| "noise cancelling earbuds" | #67 | 4.2% | 6.1% | Low |

**Seasonal Trends:**
- [Keyword] searches peak in [months] (+X% vs baseline)
- [Category] shows declining trend (-X% YoY)
- Emerging opportunity: [new keyword trend]

**Recommended Actions:**
1. Increase advertising spend on high-opportunity keywords
2. Optimize listings for gap keywords with low click share
3. Prepare seasonal campaigns for [upcoming peaks]

### 2. Market Basket Insights

**Cross-Sell Opportunities:**

| Product Combination | Co-Purchase Rate | Revenue Opportunity | Recommendation |
|--------------------|------------------|--------------------|--------------| 
| Your Product + [Item A] | 34% | +$2.3M annually | Create bundle |
| Your Product + [Item B] | 28% | +$1.8M annually | Cross-promote |
| [Item C] + [Item D] | 25% | +$1.2M annually | New product opportunity |

**Category Expansion Insights:**
- 23% of customers also purchase [adjacent category]
- Geographic concentration: [region] shows 40% higher cross-category rate
- Demographic pattern: [age group] drives 60% of cross-category purchases

### 3. Competitive Positioning

**Item Comparison Analysis:**

**Customer Consideration Factors (Ranked):**
1. Price (43% primary factor)
2. Reviews/Rating (31% weight)  
3. Brand Recognition (18% influence)
4. Feature Set (12% consideration)

**Your Competitive Position:**
✅ **Strengths:** Higher ratings (4.6 vs 4.2), strong brand recall in 35-54 demo
⚠️ **Weaknesses:** Price perception, limited feature differentiation

**Market Opportunities:**
- Premium segment under-served (15% price tolerance above current range)
- Feature gap: customers want [specific feature] (mentioned in 67% of comparisons)
- Geographic expansion: strong brand preference in [regions]

### 4. Strategic Recommendations

**Immediate Actions (Next 30 Days):**
1. Launch [product bundle] based on Market Basket data
2. Increase ad spend on [top 3 opportunity keywords]
3. A/B test premium pricing in [geographic segments]

**Q4 Strategy:**
1. Prepare seasonal campaigns for [trending keywords]
2. Develop [feature enhancement] to address competitive gap
3. Expand into [adjacent category] with [specific product]

**2027 Growth Plan:**
1. Full [category] expansion based on cross-sell data
2. Premium line development for feature-conscious segment
3. Geographic expansion focus on [high-opportunity regions]

**Projected Impact:**
- Bundle optimization: +$X.XM revenue
- Keyword optimization: +X% conversion rate
- Category expansion: +$X.XM TAM
```

## Integration with Other Skills

This skill works perfectly with other Brand Registry and competitive analysis skills.

### With amazon-keyword-research

```bash
npx skills add nexscope-ai/Amazon-Skills --skill amazon-keyword-research -g
```

```
Step 1: "Analyze my SFR data for keyword opportunities"
   → amazon-brand-analytics identifies click share gaps

Step 2: "Research long-tail variations of those opportunity keywords"
   → amazon-keyword-research expands the keyword universe
```

### With amazon-competitor-monitoring

```bash
npx skills add nexscope-ai/Amazon-Skills --skill amazon-competitor-monitoring -g
```

```
Step 1: "Review my Item Comparison data for competitive positioning"
   → amazon-brand-analytics reveals competitor strengths/weaknesses

Step 2: "Set up monitoring for those key competitors"
   → amazon-competitor-monitoring tracks their strategy changes
```

## Requirements

⚠️ **Brand Registry Required**: This skill requires access to Amazon Brand Analytics data, which is only available to Brand Registry participants. You must export data from your Brand Analytics dashboard to use this skill effectively.

## Limitations

This skill provides frameworks for interpreting Brand Analytics data but requires you to export and provide the raw data from Amazon's Brand Analytics dashboard. For automated Brand Analytics processing and real-time strategic recommendations, check out **[Nexscope](https://www.nexscope.ai/?co-from=skill)** — Your AI Assistant for smarter E-commerce decisions.

---

**Built by [Nexscope](https://www.nexscope.ai/?co-from=skill)** — research, validate, and act on e-commerce opportunities with AI.