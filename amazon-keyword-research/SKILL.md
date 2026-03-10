---
name: amazon-keyword-research
description: "Amazon keyword research for sellers. Retrieve autocomplete suggestions (long-tail keywords), analyze competitor landscape, and assess market opportunity for any keyword on Amazon US/UK/DE/JP/CA/AU and 6 more marketplaces. No API key required. Use when: (1) researching Amazon product ideas or niches, (2) finding long-tail keyword opportunities from Amazon autocomplete, (3) analyzing keyword competition on Amazon (number of results, price range, ratings, top brands), (4) checking seasonal search trends for a product category, (5) comparing multiple Amazon keywords, (6) evaluating market entry difficulty for a keyword."
metadata: {"clawdbot":{"emoji":"🔍"}}
---

# Amazon Keyword Research 🔍

Free keyword research for Amazon sellers. No API key — works out of the box.

## Installation

```bash
npx skills add nexscope-ai/amazon-keyword-research -g
```

## Capabilities

- **Long-tail keyword mining**: Extract 100-200 real search terms from Amazon's autocomplete engine
- **Competitor landscape analysis**: Product count, price range, average rating, review distribution, top brands
- **Seasonal trend detection**: 12-month Google Trends data to identify peak seasons and demand shifts
- **Market opportunity scoring**: 1-10 score combining competition density, price room, and demand signals
- **Multi-marketplace support**: US, UK, DE, FR, IT, ES, JP, CA, AU, IN, MX, BR
- **Keyword comparison**: Side-by-side analysis of multiple keywords

## Usage Examples

Users can ask naturally. Examples:

```
Research the keyword "portable blender" on Amazon US
```

```
Find long-tail keywords for "yoga mat" on Amazon
```

```
I want to sell resistance bands. What does the Amazon keyword landscape look like?
```

```
Compare "laptop stand" vs "monitor stand" on Amazon US — which has more opportunity?
```

```
Analyze "Küchenmesser" on Amazon Germany
```

```
Research "water bottle" across Amazon US, UK, and DE
```

## Workflow

### Step 1: Gather Autocomplete Data

Run the bundled script to collect Amazon autocomplete suggestions:

```bash
<skill>/scripts/research.sh "<keyword>" [marketplace]
```

**Parameters:**
- `keyword` (required): The seed keyword to research
- `marketplace` (optional): `us` (default), `uk`, `de`, `fr`, `it`, `es`, `jp`, `ca`, `au`, `in`, `mx`, `br`

**What the script does:**
- Queries Amazon's autocomplete API with the seed keyword
- Expands with prefixes: "best [keyword]", "cheap [keyword]", "top [keyword]"
- Expands with a-z suffixes: "[keyword] a", "[keyword] b", ... "[keyword] z"
- Returns deduplicated, sorted list of real search suggestions — one per line

Example:
```bash
<skill>/scripts/research.sh "portable blender" us
# Returns 100-200 long-tail keywords
```

For multi-marketplace research, run the script once per marketplace.

### Step 2: Analyze Competition

Use `web_search` to gather competitor intelligence:

1. Search `"<keyword>" site:amazon.com` — note approximate result count for competition density
2. Search `"<keyword>" amazon best sellers price review` — extract price patterns, rating averages, dominant brands
3. Summarize: total competitors, price range (min/avg/max), average star rating, top 5 brands by visibility

### Step 3: Check Seasonality

Use `web_fetch` on Google Trends:

```
https://trends.google.com/trends/explore?q=<keyword>&geo=US
```

Identify: trend direction (rising/declining/stable), seasonal peaks (which months), year-over-year change.

### Step 4: Synthesize Report

Combine all data into the output format below.

## Output Format

Present the final report in this structure:

```
## Keyword Research Report: [keyword]
**Marketplace:** Amazon [US/UK/DE/...]
**Date:** [current date]

### 1. Long-tail Keywords ([count] found)

**High Commercial Intent:**
- [keyword with "buy", "best", "vs", "for" etc.]
- ...

**Informational / Research:**
- [keyword with "how to", "what is", "review" etc.]
- ...

**Niche / Specific:**
- [long, specific keywords indicating clear purchase intent]
- ...

### 2. Competition Landscape

| Metric | Value |
|--------|-------|
| Estimated competitors | [number] |
| Price range | $[min] - $[max] |
| Average price | $[avg] |
| Average rating | [stars] |
| Top brands | [brand1, brand2, brand3...] |

### 3. Seasonal Trends

[Describe 12-month trend: peaks, valleys, stable periods]
[Note any upcoming peak seasons relevant to the keyword]

### 4. Market Opportunity Score: [X/10]

**Score breakdown:**
- Competition density: [low/medium/high] — [why]
- Price room: [low/medium/high] — [why]
- Demand trend: [growing/stable/declining] — [why]
- Niche potential: [low/medium/high] — [why]

**Recommendation:** [1-2 sentence actionable recommendation]
```

## Multi-Keyword Comparison

When the user asks to compare two or more keywords, run the full workflow (Steps 1-4) for each keyword separately, then present results in a side-by-side comparison table.

**Example user input:**
```
Compare "laptop stand" vs "monitor stand" vs "tablet stand" on Amazon US — which one should I sell?
```

**How to execute:** Run the script 3 times:
```bash
<skill>/scripts/research.sh "laptop stand" us
<skill>/scripts/research.sh "monitor stand" us
<skill>/scripts/research.sh "tablet stand" us
```

Then complete Steps 2-3 for each keyword, and output a comparison table:

| Metric | laptop stand | monitor stand | tablet stand |
|--------|-------------|---------------|-------------|
| Long-tail count | — | — | — |
| Avg price | — | — | — |
| Top brand dominance | — | — | — |
| Trend direction | — | — | — |
| Opportunity score | — | — | — |

End with a **Recommendation** stating which keyword has the best opportunity and why.

## Limitations

This skill uses publicly available data (Amazon autocomplete + web search). It does not provide exact monthly search volumes or sales estimates. For precise data, stay tuned for **[Nexscope](https://github.com/nexscope-ai)** — coming soon.

---

**Part of the [Nexscope](https://github.com/nexscope-ai) suite — AI-powered Amazon seller tools.**
