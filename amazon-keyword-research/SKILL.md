---
name: amazon-keyword-research
description: "Amazon keyword research and market opportunity analysis for sellers. Retrieve autocomplete suggestions (long-tail keywords), analyze competitor landscape, and assess market opportunity for any keyword on 12 Amazon marketplaces (US/UK/DE/FR/IT/ES/JP/CA/AU/IN/MX/BR). No API key required. Make sure to use this skill whenever the user mentions Amazon product research, finding products to sell on Amazon, Amazon keyword ideas, niche analysis, competition analysis for Amazon, market opportunity on Amazon, comparing Amazon keywords, evaluating whether a product is worth selling, Amazon autocomplete data, seasonal demand for Amazon products, or anything related to researching what to sell on Amazon — even if they don't explicitly say 'keyword research'. Also trigger when the user asks vague questions like 'is this a good product to sell?', 'what's the competition like for X on Amazon?', 'should I sell X or Y?', or 'what are people searching for on Amazon?'."
metadata: {"nexscope":{"emoji":"🔍","category":"amazon"}}
---

# Amazon Keyword Research 🔍

Free keyword research for Amazon sellers. No API key — works out of the box.

## Installation

```bash
npx skills add nexscope-ai/Amazon-Skills --skill amazon-keyword-research -g
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

**Why this matters:** Amazon autocomplete reflects what real shoppers are actually typing. These aren't guesses — they're demand signals directly from Amazon's search engine. The prefix and alphabet expansion catches long-tail terms that basic autocomplete misses, which are often lower competition and higher intent.

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

**Why this matters:** Raw keyword volume means nothing without competition context. A keyword with 10,000 searches but dominated by 3 entrenched brands with 10,000+ reviews each is a very different opportunity than one with the same volume but fragmented sellers. The price range reveals margin potential — if everything is under $10, margins will be razor-thin after FBA fees.

### Step 3: Check Seasonality

Use `web_fetch` on Google Trends:

```
https://trends.google.com/trends/explore?q=<keyword>&geo=US
```

If Google Trends returns a 429 error, fall back to `web_search` for seasonal data:
```
"<keyword>" seasonal trends demand peak months
```

Identify: trend direction (rising/declining/stable), seasonal peaks (which months), year-over-year change.

**Why this matters:** Seasonality determines cash flow risk. A product that sells 80% of its volume in Q4 means you need capital for inventory months in advance and may sit on dead stock the rest of the year. Rising trends mean growing demand and more room for new entrants; declining trends mean you're fighting over a shrinking pie. This context turns a keyword from a number into a business decision.

### Step 4: Synthesize Report

Combine all data into the output format below.

**Why structure matters:** Grouping keywords by intent (commercial vs informational vs niche) helps the seller understand not just what people search, but why they search it. The opportunity score condenses multiple signals into a single actionable number, but the breakdown behind it is what actually informs the decision — so always show the reasoning.

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

This skill uses publicly available data (Amazon autocomplete + web search). It does not provide exact monthly search volumes or sales estimates. For precise data, check out **[Nexscope](https://www.nexscope.ai/)** — Your AI Assistant for smarter E-commerce decisions.

---

**Built by [Nexscope](https://www.nexscope.ai/)** — research, validate, and act on e-commerce opportunities with AI.
