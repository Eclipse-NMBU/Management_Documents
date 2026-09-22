# Eclipse NMBU — General Assembly Document Set (H2026)

This folder contains the complete General Assembly document set drafted per the Master Drafting Prompt (`# Eclipse NMBU GF doc.md`), built from `Vedtekter for Eclipse NMBU (1).pdf` (Old Bylaws) and `Vedtekts ENDRINGER.pdf` (proposed New Bylaws draft, "Omstrukturert utkast · 21 Sept 2026 · @Oskar"). Each numbered folder is one document (or a small family of documents) in the set, built on the `rapport` LaTeX template (`Common/Latex/Templates/rapport.cls`). All documents use Document IDs of the form `ECL-H2026-<TYPE>-##`.

## Decisions resolved before drafting

These were genuine ambiguities or contradictions between the Master Drafting Prompt and the actual Bylaws text, resolved with the Board/requester before any document was written:

1. **This General Assembly is the Spring GA** ("GF Vår" per the Master Drafting Prompt), governed by the **Old Bylaws** until the Bylaw Amendment is adopted. The `H2026` folder name is the organisation's own internal label and is *not* tied to Norwegian "Høst" (autumn) — kept as-is.
2. **2/3 threshold for the Bylaw Amendment (Old Bylaws §4.6 / proposed New Bylaws §17.1) means 2/3 of *all* Eclipse NMBU members**, read literally — not 2/3 of those present or voting.
3. **Individual Amendments to the proposed New Bylaws text need only a simple majority of votes cast**, not the full 2/3 threshold (which applies only to the Stage-1 constitutional question — see `06 Bylaw Amendment Proposal/02-bylaw-amendment-voting-procedure.tex`).
4. **MCR/PDR/CDR:** the Master Drafting Prompt names MCR/PDR/CDR project gates, but the actual New Bylaws draft (§4.8, §16.1, §16.3) only defines MCR and SRR, deferring the rest to a governance document that hasn't been written yet. Only MCR/SRR are stated as concrete Bylaws requirements; PDR/CDR are flagged as forward references to that forthcoming document.
5. **Document ID scheme:** `ECL-H2026-<TYPE>-##`, newly established for this set (no prior convention existed elsewhere in the repo).
6. **The Board has no formal veto over a signed Responsibility Contract transfer** — its role is to log it, not approve it.
7. **Alumni default public-display fields:** name, role(s)/title(s) held, and years/semesters active — not yet written into the Bylaws text itself (see `13 Membership Contract`, §4).

## Clarifications still needed (per Master Drafting Prompt §22)

These are flagged inline (search each document for "NOTE" / "pending Board confirmation") but are collected here because they affect governance, voting or legal effect and should be confirmed by the Board **before** the Notice of Meeting is sent:

1. **Governance — the project-lifecycle governance document** referenced by New Bylaws §16.3 (phase division, gate reviews, and any PDR/CDR gates) does not exist yet. `06 Bylaw Amendment Proposal/00-proposed-new-bylaws.tex` (§16.3) and `01-plain-language-explanation.tex` flag this as forthcoming.
2. **Voting — the two-stage Bylaw Amendment procedure** (Stage 1 gate at 2/3-of-all-members; Stage 2 per-amendment simple majority; no separate final ratification vote) is the **Board's proposed mechanism**, not a rule stated in either Bylaws text, since neither version describes how multiple submitted Amendments to a Bylaw Amendment are handled. It is presented to the General Assembly for approval as part of the Voting Order (`11 Voting Order`) — it is not yet settled law.
3. **Voting — the Amendment submission deadline** (paired with the Case Papers deadline, one week before the GA) is the Board's proposed operative rule; the Old Bylaws do not fix a separate deadline for Amendments (`04 Amendment Submission Procedure`, §6).
4. **Transition — no fixed GA date yet.** Every deadline in the Notice of Meeting and elsewhere is expressed relative to the (unknown) GA date, per Old Bylaws §4.2/§4.5, rather than as an absolute date. Fill in the actual date, time and location as soon as they're set, then recompute the absolute deadlines.
5. **Cross-referencing — adopt (or replace) the Document ID scheme.** No prior convention existed elsewhere in this repository (the Waiver/Integration templates just use a blank "ID: ___" line); confirm `ECL-H2026-<TYPE>-##` as the pattern for this and future document sets, or specify an alternative.

## No other substantive clarification questions remain

Every other requirement in the Master Drafting Prompt (§§1–21, 23) was either directly resolved from the Old Bylaws / New Bylaws text, or is a placeholder explicitly permitted by §23 (final case numbers, candidate names, vote counts, exact date/time/location, financial figures) — none of these were fabricated; they are marked `[TBD]` or `[NOTE ...]` throughout.

## Folder index

| Folder | Document(s) | Document ID(s) |
|---|---|---|
| 01 Notice of Meeting | Notice of Meeting (innkalling) | ECL-H2026-NOT-01 |
| 02 Agenda | Agenda (saksliste) | ECL-H2026-AGD-01 |
| 03 Case Template | Reusable Case Paper template (saksmal) | ECL-H2026-TPL-01 |
| 04 Amendment Submission Procedure | Amendment procedure (endringsforslagsprosedyre) | ECL-H2026-PROC-01 |
| 05 Standard Case Papers | Constitution, Approval of Notice/Agenda, Financial Statements, Budget, Semester Report, Election of Board Members | ECL-H2026-CASE-00…06 |
| 06 Bylaw Amendment Proposal | Full proposed New Bylaws (English), plain-language explanation, two-stage voting procedure | ECL-H2026-CASE-07A/07B/07C |
| 07 Transitional C-suite Case | Conditional C-suite structure case | ECL-H2026-CASE-08 |
| 08 Candidate Documentation | Candidate consent form (kandidatsamtykke) | ECL-H2026-CAND-01 |
| 09 Bylaw Amendment Ballot | Stage-1 ballot | ECL-H2026-BALLOT-01 |
| 10 Election Ballots | CEO/CTO/CBO/CPO and CEO/CTO/CFO/CMO ballots | ECL-H2026-BALLOT-02A/02B |
| 11 Voting Order | Voting order (voteringsorden) | ECL-H2026-VOTORD-01 |
| 12 Meeting Protocol | Protocol template (protokoll) | ECL-H2026-PROT-01 |
| 13 Membership Contract | Membership contract (medlemskontrakt) | ECL-H2026-MEMB-01 |
| 14 Responsibility and Signature Contract | Old-Bylaws signature authorisation, New-Bylaws Responsibility & Signature Contract, Board record log | ECL-H2026-RESP-01A/01B/02 |
| 15 GF for Dummies | Plain-language, non-binding guide | ECL-H2026-DUMMY-01 |
| 16 Multilingual Organisational Glossary | English (Norwegian) glossary used across the whole set | ECL-H2026-GLOSS-01 |
