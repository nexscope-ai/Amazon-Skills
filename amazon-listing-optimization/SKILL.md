---
name: amazon-listing-optimization
description: "Amazon listing builder and optimizer for sellers. Create or optimize compliant, keyword-aware listings from a reference ASIN and core keyword, using Chrome to analyze the top 3-5 organic Amazon search competitors and separate primary title traffic terms from secondary product-highlight terms. Prioritizes Amazon JP compliance: concise 75-character main titles by default, 125-character comma-separated product highlights, factual bullets, no forced Generic for no-brand listings, prohibited-claim checks, and natural Japanese copy. Use when generating or auditing titles, product highlights, bullets, backend terms, keyword priority, competitor gaps, or launch/relaunch listing copy."
metadata: {"nexscope":{"emoji":"📝","category":"amazon"}}
---

# Amazon Listing Optimization 📝

Build compliant, keyword-aware Amazon listings from scratch, or audit and optimize existing ones. Compliance comes before keyword coverage; never add keywords in a way that violates marketplace title or bullet point requirements.

## Two Modes

| Mode | When to Use | Input | Output |
|------|-------------|-------|--------|
| **A — Create** | Building a new listing | Reference ASIN + core keyword + product facts | Full listing copy + ranked competitor evidence + keyword coverage |
| **B — Optimize** | Improving an existing listing | Reference ASIN + core keyword | Optimized listing copy + ranked competitor evidence + gap analysis |

## Required Inputs

- **Reference ASIN**: The listing to optimize or the closest product reference. Use it to verify product facts, quantity, compatibility, claims, and current copy.
- **Core keyword**: The exact shopper query to search on the target Amazon marketplace. Use it to identify ranked competitors and traffic-term priority.
- **Marketplace**: Infer from the ASIN URL or user context; ask only when it cannot be determined safely.

Do not generate final copy until both the reference ASIN and core keyword are available. Additional keyword lists or competitor ASINs are optional supporting inputs, not substitutes for ranked search evidence.

## Capabilities

- **Compliance-first listing generation**: Import keywords (from amazon-keyword-research, manual list, or extracted from competitor ASINs), rank by priority, then generate copy that passes marketplace title and bullet rules before optimizing coverage
- **Title decomposition**: Split an overloaded legacy title into a short compliant main title plus separate product highlights so important claims such as standards, tested reduction/removal items, compatibility, and replacement guidance are preserved without stuffing the title
- **Ranked competitor keyword extraction**: Search the core keyword in Chrome, exclude sponsored placements, and analyze the first 3-5 relevant organic results in displayed order
- **9-part audit & scoring**: Main title compliance, product highlights, bullet compliance, description, images, A+ content, pricing, reviews, SEO coverage
- **Keyword coverage tracking**: Visual map showing which keywords appear in title / bullets / description / missing
- **Tone selection**: Professional, Friendly, Urgent, Luxury — affects AI copywriting style
- **Competitive benchmarking**: Compare your listing against competitors
- **Multi-marketplace**: US, UK, DE, FR, IT, ES, JP, CA, AU, IN, MX, BR

## Mode A Workflow — Create Listing from Keywords

### Step A1: Build Ranked Competitor Evidence

1. Open the target Amazon marketplace in the user's external Chrome browser and search the exact core keyword.
2. Read the visible result order. Exclude Sponsored/スポンサー placements, brand-store banners, accessories, and products that do not match the same product intent.
3. Select the first 3-5 relevant organic results. Record organic rank, ASIN, title, and repeated traffic phrases. Do not silently replace ranked results with hand-picked competitors.
4. Fetch or open the reference ASIN and selected competitor detail pages only as needed to verify product facts and title context.
5. Treat third-party extension search-volume data as directional evidence when visible. Never invent exact volume. If no volume is available, label priority as rank/frequency-based.
6. If Chrome cannot access the results, report the limitation and use a clearly labeled fallback source; do not present fallback order as Amazon organic rank.

Always output the ranked competitor evidence before the keyword allocation table.

### Step A1.5: Set Marketplace Compliance Rules

Before drafting, identify the target marketplace and category. Use these defaults unless the user provides a stricter category template or Seller Central field limit:

| Marketplace | Main title default | Product highlights default | Bullet default | Output language |
|-------------|--------------------|----------------------------|----------------|-----------------|
| JP | 75 characters including spaces | One comma-separated phrase line, 125 characters max | At least 3 bullets; 10-255 characters each | Japanese |
| US/UK/AU/CA/IN | Marketplace/category title limit | One comma-separated phrase line, 125 characters max unless marketplace differs | At least 3 bullets; concise factual bullets | English |
| DE | Marketplace/category title limit | One comma-separated phrase line, 125 characters max unless marketplace differs | At least 3 bullets; concise factual bullets | German |
| FR | Marketplace/category title limit | One comma-separated phrase line, 125 characters max unless marketplace differs | At least 3 bullets; concise factual bullets | French |
| ES/MX | Marketplace/category title limit | One comma-separated phrase line, 125 characters max unless marketplace differs | At least 3 bullets; concise factual bullets | Spanish |
| IT | Marketplace/category title limit | One comma-separated phrase line, 125 characters max unless marketplace differs | At least 3 bullets; concise factual bullets | Italian |
| BR | Marketplace/category title limit | One comma-separated phrase line, 125 characters max unless marketplace differs | At least 3 bullets; concise factual bullets | Portuguese |

For Amazon JP title and bullet work, treat the Seller Central help page "Product title requirements and guidelines" as authoritative. If the user provides a category-specific flat file or Product Type template with stricter values, follow the stricter value and mention it in the compliance check.

### Step A2: Prioritize Keywords

Organize keywords into tiers:

```
🔴 Primary (try Main Title first if compliant):
  - [keyword] — [search volume if known]
  - [keyword] — [search volume if known]

🟡 Secondary (try Product Highlights if factual and natural):
  - [keyword]
  - [keyword]

🟢 Tertiary (should appear in Description or Backend):
  - [keyword]
  - [keyword]

⚪ Long-tail (use where natural):
  - [keyword phrase]
  - [keyword phrase]
```

Priority rules:
- **Primary → Main Title**: Start with the user-provided core keyword. Add terms that occur in multiple top organic titles, especially ranks 1-3, and directly identify the product. Weight evidence in this order: relevance, organic rank, frequency across competitors, visible volume, then title position.
- **Secondary → Product Highlights**: Put high-relevance traffic terms that recur in competitors but are less essential to product identity, plus verified standards, functions, material, pack count, capacity, replacement interval, and compatibility.
- **Tertiary → Bullets/Description**: Put factual long-tail phrases, use cases, detailed compatibility, and differentiators where they read naturally.
- **Backend**: Put relevant synonyms, spelling variants, and uncovered terms without duplicating phrases already indexed in visible fields.
- A term appearing once in a lower-ranked title does not outrank a recurring term in ranks 1-3. Never treat raw frequency alone as search volume.
- Never force a keyword into the title or bullets if it creates repetition, irrelevant phrasing, unverifiable claims, or unnatural marketplace-language copy

### Step A3: Collect Product Characteristics

Ask or extract from user input:
- **Product name / type**
- **Brand name**
- **Key attributes**: Material, color, size, weight, capacity, quantity
- **Key features**: What makes it different (3-5 features)
- **Target audience**: Who buys this?
- **Use cases**: Top 3 scenarios
- **What's in the box**: Everything included

### Step A4: Select Tone

| Tone | Style | Best for |
|------|-------|----------|
| **Professional** | Authoritative, spec-focused, trust-building | Electronics, tools, B2B |
| **Friendly** | Conversational, benefit-focused, relatable | Kitchen, lifestyle, gifts |
| **Urgent** | Scarcity-driven, action words, problem-solving | Health, safety, seasonal |
| **Luxury** | Premium, sensory language, exclusivity | Beauty, fashion, premium goods |

Default: **Professional** if not specified.

### Step A5: Generate Listing Copy

Run compliance checks before and after drafting. If a keyword or product fact conflicts with main title compliance, move it to Product Highlights, Bullet Points, Description, or Backend Search Terms instead of forcing it into the title.

Generate each component following these rules:

**Main Title / 主标题 (Amazon JP compliance-first, default max 75 characters including spaces):**
- Use the marketplace or category-specific limit if the category template is stricter; for Amazon JP, default to 75 characters including spaces unless the user provides a different category rule from Seller Central
- Format: `[Brand] + [product type / primary keyword] + [most important verifiable attributes] + [size/color/quantity/model when relevant]`
- Put the most relevant product-identifying term near the front, but keep the title readable and factual
- Include only attributes that distinguish the exact product: material, size, color, quantity, model, compatibility, or key specification
- For no-brand or generic listings, do not insert `Generic` into the title unless the user explicitly asks or the marketplace field requires it. Start with the product type, compatible brand target, or core search phrase instead
- Do not include promotional or subjective claims such as "best", "#1", "top rated", "premium", "ultimate", "limited time", "hot sale", or unsupported superiority claims
- Do not include price, discount, coupon, shipping, delivery speed, warranty, seller name, inventory status, launch date, competitor names, or external links
- Do not use decorative symbols, repeated punctuation, keyword stuffing, duplicated words, ALL CAPS, or irrelevant search terms
- For Amazon JP, write natural Japanese by default. Keep foreign terms only when they are standard search terms, brand/model names, or user-provided product facts

**Product Highlights / 商品亮点 (searchable subtitle field):**
- Always output this as a single separate field after Main Title and before Bullet Points
- Keep it within 125 characters. Count the final field before outputting it
- Write comma-separated short phrases, not complete sentences. Do not number the phrases and do not end with a full stop
- Treat this as searchable subtitle copy shown under the title on search results and the product detail page. It must be independent from the detail-page bullet points
- Use it to preserve important details that were previously crammed into the title but should not overload the main title: material, recommended use scenes, core functions, specifications, accessories/pack count, standards/certifications, tested removal or reduction items, compatibility, replacement interval, and domestic inspection
- Prefer a balanced mix from four groups when product facts support them: material info, use scenes, core functions, specifications/accessories
- Do not repeat the entire main title. Do not use promotional claims, decorative symbols, seller claims, price/shipping language, unsupported superiority language, or complete sentence structure
- For Amazon JP, include important searchable terms such as `JIS規格`, `PFOS・PFOA`, `19項目除去`/`19項目低減`, `国内検査済み`, `交換目安`, material, capacity, pack count, and compatible model families here when they are verified product facts and cannot all fit cleanly in the main title
- If evidence says "低減" rather than "除去", use "低減". Only use "除去" when the source listing or supplied evidence supports that exact wording

**Bullet Points (Amazon JP compliance-first):**
- Provide at least 3 bullet points; use 5 when there are enough distinct product facts
- Keep each bullet concise, factual, and easy to scan. Use 10-255 characters per bullet unless the category template gives a stricter limit
- Use sentence-style bullets, not all-caps benefit headers. Do not begin with a decorative label such as `[BENEFIT HEADER]`
- Put one clear idea in each bullet: main feature, material/quality, size/fit/compatibility, use case, included items, or care/safety note
- Embed target keywords only when they read naturally and are supported by product facts
- Do not include prohibited content: promotional pricing, discounts, coupons, shipping promises, seller/contact details, external URLs, requests for reviews, guarantees not backed by product policy, medical/drug claims, competitor comparisons, or unverifiable superlatives
- Do not repeat the same keyword across multiple bullets just to increase coverage; prefer synonyms or move lower-priority terms to description/backend search terms
- For Amazon JP, write fluent Japanese bullets. Avoid machine-translated English structure and avoid mixing English keywords unless they are natural in Japanese search behavior

Recommended bullet structure:
1. Core product identity and main use
2. Main material, specification, or performance fact
3. Size, quantity, compatibility, or what is included
4. Use case or target situation
5. Care, storage, safety, or differentiator if factual

**Description (max 2000 characters):**
- Opening: Problem/pain point the product solves
- Middle: Features → benefits (expand on bullets, don't repeat verbatim)
- Close: Call to action + what's in the box
- Embed remaining keywords not used in main title, product highlights, or bullets
- Use line breaks for readability

### Step A6: Keyword Coverage Score

After generating, produce a coverage map:

```
## Keyword Coverage Report

| Keyword | Volume | In Main Title? | In Product Highlights? | In Bullets? | In Description? | Status |
|---------|--------|----------------|------------------------|-------------|-----------------|--------|
| portable blender | 45,000 | ✅ | ❌ | ✅ | ✅ | 🟢 Covered |
| smoothie maker | 22,000 | ❌ | ✅ | ✅ | ✅ | 🟡 Consider main title only if compliant |
| USB rechargeable | 18,000 | ✅ | ✅ | ✅ | ❌ | 🟢 Covered |
| travel blender | 12,000 | ❌ | ✅ | ❌ | ✅ | 🟡 Consider bullet only if factual |
| mini blender | 8,000 | ❌ | ❌ | ❌ | ❌ | 🔴 Missing |

Coverage: 18/22 keywords (82%)
Main Title keywords: 6/8 slots used
Bullet keywords: 12/15 target keywords covered
Uncovered → recommend for Backend Search Terms
```

**Scoring:**
- 🟢 90%+ coverage = Excellent
- 🟡 70-89% = Good, minor gaps
- 🔴 <70% = Needs work, significant keywords missing

---

## Mode B Workflow — Optimize Existing Listing

### Step B1: Fetch Listing Data

Run the bundled script:

```bash
<skill>/scripts/fetch-listing.sh "<ASIN>" [marketplace]
```

**Parameters:**
- `ASIN` (required): e.g. B09V3KXJPB
- `marketplace` (optional): `us` (default), `uk`, `de`, `fr`, `it`, `es`, `jp`, `ca`, `au`, `in`, `mx`, `br`

**Extracts:** Title, brand, price, bullet points, description, image count, A+ content presence, rating, review count, BSR, categories, date first available.

If script returns incomplete data, fall back to `web_fetch` on the product URL.

### Step B2: Discover and Rank Target Keywords

Use the Step A1 Chrome workflow with the required core keyword. Compare the reference ASIN against the first 3-5 relevant organic competitors, then allocate terms using Step A2. The core keyword and recurring product-identity phrases belong in the Main Title first; secondary traffic terms and verified claim/specification phrases belong in Product Highlights; detailed long-tail terms belong in bullets, description, or backend terms.

Output this evidence table before the gap analysis:

| Organic Rank | ASIN | Competitor Title | Repeated Traffic Terms | Exclusion/Notes |
|--------------|------|------------------|------------------------|-----------------|
| 1 | [ASIN] | [title] | [terms] | Included |

Then output a keyword allocation table:

| Keyword | Evidence | Priority | Destination | Reason |
|---------|----------|----------|-------------|--------|
| [core keyword] | User input + ranks 1-3 | Primary | Main Title | Highest product intent |

### Step B3: Keyword Gap Analysis

Compare current listing against target keywords:

```
## Keyword Gap Analysis: [ASIN]

### ✅ Keywords Found in Listing
| Keyword | In Main Title | In Product Highlights | In Bullets | In Description |
|---------|---------------|-----------------------|------------|----------------|
| [kw] | ✅ | ✅ | ✅ | ❌ |

### ❌ Missing Keywords (Competitors Have, You Don't)
| Keyword | Competitor 1 | Competitor 2 | Competitor 3 | Priority |
|---------|-------------|-------------|-------------|----------|
| [kw] | ✅ Main Title | ✅ Bullet | ❌ | 🔴 High |

### Coverage: X/Y keywords (Z%)
```

### Step B3.5: Main Title, Product Highlights, and Bullet Compliance Gap Analysis

For every existing or competitor listing, separately identify compliance risks before recommending copy changes:

```
## Main Title + Product Highlights + Bullet Compliance Gap Analysis

| Field | Issue | Severity | Fix |
|-------|-------|----------|-----|
| Main Title | Over 75-character JP default / category limit | High | Shorten to core product identity and verifiable attributes |
| Main Title | Promotional claim or unverifiable superlative | High | Replace with factual attribute or move verified fact to Product Highlights |
| Main Title | Repeated keyword or keyword stuffing | Medium | Keep one natural occurrence; move extras to Product Highlights or backend terms |
| Product Highlights | Missing key facts from old title | High | Add verified comma-separated phrases for material, scenes, functions, specifications, standards, PFOS/PFOA, pack count, replacement guidance, or compatibility |
| Product Highlights | Over 125 characters or written as sentences/list items | High | Rewrite as one comma-separated phrase line within 125 characters |
| Product Highlights | Unsupported claim wording | High | Use the exact supported wording, such as reduction vs removal |
| Bullets | Fewer than 3 usable bullets | High | Add factual bullets from verified product facts |
| Bullets | Promotional pricing/shipping/review request/external contact | High | Remove prohibited content |
| Bullets | All-caps header or unnatural translation | Medium | Rewrite as natural marketplace-language sentence |
```

### Step B4: 9-Part Audit

Score each on the scale shown, with keyword integration factored in:

| Dimension | Max Score | Key Criteria |
|-----------|-----------|-------------|
| **Main Title** | /15 | Marketplace-compliant? Under Amazon JP 75-character default or category limit? Factual? No prohibited claims, duplicated words, keyword stuffing, decorative symbols, irrelevant terms, or forced `Generic` for no-brand listings? |
| **Product Highlights** | /10 | One comma-separated phrase line? Within 125 characters? Independent from bullets? Key searchable facts preserved: material, scenes, functions, specs, pack count, standards, PFOS/PFOA, inspection, compatibility, or replacement interval? |
| **Bullet Points** | /15 | At least 3 bullets? 10-255 chars each unless category limit differs? Factual, readable, non-promotional, no all-caps headers, keywords embedded naturally? |
| **Images** | /10 | 7+ images? White bg main? Infographic? Lifestyle? Size ref? Video? |
| **A+ Content** | /10 | Present? Brand story? Comparison chart? Lifestyle imagery? |
| **Description** | /10 | Keywords not in title/bullets? Readable? Problem→solution flow? |
| **Pricing** | /10 | Competitive? Coupon/deal present? |
| **Reviews** | /10 | 4.0+ stars? 100+ reviews? Recent reviews positive? |
| **SEO Coverage** | /10 | Primary kw in title+bullets+desc? Long-tail present? No wasted repeats? **Keyword coverage %** |

### Step B5: Generate Optimized Copy

Rewrite the listing incorporating missing keywords:
- Show **before vs after** for each component
- Highlight which keywords were added and where
- Maintain the brand's existing tone unless a different tone is requested
- Fix compliance issues before adding new keywords. If a missing keyword would make the main title, product highlights, or bullets non-compliant, place it in description or backend search terms and explain why

---

## Output Formats

The primary deliverable is always a **ready-to-use listing** that the seller can copy-paste directly into Seller Central. Diagnostic data (scores, keyword analysis) comes after as supporting evidence.

### Mode A Output — New Listing

```
# ✅ Your Listing — Ready to Use

## Main Title / 主标题
[short compliant title — copy this directly into Seller Central title field]

## Product Highlights / 商品亮点
[comma-separated short phrases under 125 characters; no numbering; no full sentence]

## Bullet Points
1. [factual bullet with a naturally embedded keyword]
2. [factual bullet with a distinct product fact]
3. [factual bullet with size/material/compatibility/use case]
4. [optional factual bullet if supported by product facts]
5. [optional factual bullet if supported by product facts]

## Description
[description text — copy this directly into Seller Central]

## Backend Search Terms
[comma-separated keywords to paste into Seller Central → Keywords → Search Terms]

---

# 📊 How We Built This Listing (Diagnostic)

**Marketplace:** Amazon [XX] | **Tone:** [tone] | **Keywords imported:** [count]
**Main title characters:** [X]/[75 or category limit] | **Product highlights characters:** [X]/125 | **Bullet count:** [X] | **Description characters:** [X]/2000

## Compliance Check: Main Title + Product Highlights + Bullet Points

| Field | Check | Result | Notes |
|-------|-------|--------|-------|
| Main Title | Within marketplace/category limit | Pass/Fail | [character count] |
| Main Title | Factual product identity, no promotional claims, no forced Generic for no-brand listings | Pass/Fail | [notes] |
| Main Title | No duplicated words, keyword stuffing, decorative symbols, or irrelevant terms | Pass/Fail | [notes] |
| Product Highlights | One comma-separated phrase line, no numbering, no complete sentences | Pass/Fail | [notes] |
| Product Highlights | Within 125 characters | Pass/Fail | [character count] |
| Product Highlights | Key old-title facts preserved outside the title | Pass/Fail | [notes] |
| Product Highlights | Accurate claim wording and factual support | Pass/Fail | [notes] |
| Product Highlights | Independent from detail-page bullet points | Pass/Fail | [notes] |
| Bullets | At least 3 bullets, each within limit | Pass/Fail | [count and range] |
| Bullets | Factual, natural, no all-caps headers or promotional content | Pass/Fail | [notes] |
| Bullets | Keywords used naturally and supported by product facts | Pass/Fail | [notes] |

## Keyword Coverage: [X]%

| Keyword | Volume | In Main Title | In Product Highlights | In Bullets | In Description | Status |
|---------|--------|---------------|-----------------------|------------|----------------|--------|
| [kw] | [vol] | ✅/❌ | ✅/❌ | ✅/❌ | ✅/❌ | 🟢🟡🔴 |

## Keyword Priority Breakdown
🔴 Primary (Main Title): [list]
🟡 Secondary (Product Highlights): [list]
🟢 Tertiary (Bullets/Description): [list]
⚪ Backend: [list]
```

### Mode B Output — Audit + Optimized Listing

```
# ✅ Optimized Listing — Ready to Use

## Main Title / 主标题
[optimized short compliant title — copy this directly into Seller Central title field]

## Product Highlights / 商品亮点
[optimized comma-separated short phrases under 125 characters; no numbering; no full sentence]

## Bullet Points
1. [optimized factual bullet]
2. [optimized factual bullet]
3. [optimized factual bullet]
4. [optional optimized factual bullet]
5. [optional optimized factual bullet]

## Description
[optimized description — copy this directly into Seller Central]

## Backend Search Terms
[comma-separated keywords to paste into Seller Central → Keywords → Search Terms]

---

# 📊 Audit Report: [ASIN]

**Product:** [title] | **Brand:** [brand]
**Price:** [price] | **Rating:** [stars] ([count] reviews)

## Score: [X/100] → [Y/100] (after optimization)

| Dimension | Before | After | Key Change |
|-----------|--------|-------|-----------|
| Main Title Compliance | /15 | /15 | [limit, claim, repetition, keyword stuffing, no-brand naming fixes] |
| Product Highlights | /10 | /10 | [125-character phrase field, old-title facts preserved, claim wording corrected] |
| Bullet Compliance | /15 | /15 | [count, length, factuality, prohibited-content fixes] |
| Images | /10 | — | [recommendation only] |
| A+ Content | /10 | — | [recommendation only] |
| Description | /10 | /10 | [what changed] |
| Pricing | /10 | — | [observation] |
| Reviews | /10 | — | [observation] |
| SEO Coverage | /10 | /10 | [what changed] |

## Keyword Coverage: [X]% → [Y]%

| Keyword | Before | After | Where Added |
|---------|--------|-------|-------------|
| [kw] | ❌ | ✅ | Main Title + Bullet 2 |
| [kw] | ✅ Main Title only | ✅ Main Title + Bullets | Bullet 4 |

## What Changed (Before → After)

**Main Title:**
> ❌ [original]
> ✅ [optimized]

**Product Highlights:**
> ❌ [missing, overloaded in old title, too long, or sentence/list format]
> ✅ [one comma-separated phrase line under 125 characters]

**Bullets:**
> ❌ 1. [original]
> ✅ 1. [optimized — added: +[kw1], +[kw2]]

## Compliance Check: Main Title + Product Highlights + Bullet Points

| Field | Before | After | Result |
|-------|--------|-------|--------|
| Main title length | [X]/[limit] | [Y]/[limit] | Pass/Fail |
| Main title claims and prohibited content | [issue] | [fix] | Pass/Fail |
| Main title repetition / keyword stuffing / no-brand naming | [issue] | [fix] | Pass/Fail |
| Product highlights format | [issue] | [comma-separated phrases, no numbering, no sentences] | Pass/Fail |
| Product highlights length | [X]/125 | [Y]/125 | Pass/Fail |
| Product highlights completeness | [missing facts] | [preserved facts] | Pass/Fail |
| Product highlights claim wording | [issue] | [fix] | Pass/Fail |
| Product highlights independence from bullets | [issue] | [fix] | Pass/Fail |
| Bullet count and length | [issue] | [fix] | Pass/Fail |
| Bullet factuality and prohibited content | [issue] | [fix] | Pass/Fail |

## 🔴 Issues Fixed
1. [what was wrong → how we fixed it]

## 🟡 Recommendations (requires seller action)
1. [image improvements, A+ content, pricing — things the skill can't rewrite]

## 🟢 What Was Already Working
1. [positive aspects preserved]
```

### Competitive Comparison (if requested)

```
| Dimension | Your Listing | Competitor 1 | Competitor 2 | Competitor 3 |
|-----------|-------------|-------------|-------------|-------------|
| Main Title score | /15 | /15 | /15 | /15 |
| Product Highlights score | /10 | /10 | /10 | /10 |
| Bullets score | /15 | /15 | /15 | /15 |
| Images | [count] | [count] | [count] | [count] |
| A+ Content | Yes/No | Yes/No | Yes/No | Yes/No |
| Keyword coverage | X% | X% | X% | X% |
| Price | — | — | — | — |
| Rating | — | — | — | — |
| **Total** | **/100** | **/100** | **/100** | **/100** |
```

### Key principles

1. The seller's workflow is: **copy the listing → paste into Seller Central → done.** The diagnostic section explains WHY those specific words were chosen, but the listing itself must stand alone as a complete, ready-to-use deliverable. Never output only a report without the actual listing copy.

2. **Output language must match the target marketplace.** Amazon US/UK/AU/CA/IN → English. Amazon DE → German. Amazon FR → French. Amazon JP → Japanese. Amazon ES/MX → Spanish. Amazon IT → Italian. Amazon BR → Portuguese. The entire output (listing copy AND diagnostic section) must be in the marketplace language, regardless of what language the user is speaking in the conversation.

## Integration with amazon-keyword-research

This skill works best when chained with [amazon-keyword-research](https://github.com/nexscope-ai/Amazon-Skills/tree/main/amazon-keyword-research):

```
Step 1: "Research keywords for portable blender on Amazon US"
   → amazon-keyword-research returns keyword list with volumes

Step 2: "Now create a listing using those keywords. Product: 380ml BPA-free blender, USB-C rechargeable. Tone: Friendly."
   → amazon-listing-optimization Mode A uses the keywords to generate optimized copy
```

## Limitations

This skill uses publicly available data from Amazon product pages. It cannot access backend search terms, exact search volumes, or PPC/conversion data. For deeper analytics, check out **[Nexscope](https://www.nexscope.ai/?co-from=skill)** — Your AI Assistant for smarter E-commerce decisions.

---

**Built by [Nexscope](https://www.nexscope.ai/?co-from=skill)** — research, validate, and act on e-commerce opportunities with AI.
