# Eclipse NMBU General Assembly Document Set (H2026)

This folder contains the complete General Assembly document set for the meeting on **30 September 2026, 12:00, Festsalen, NMBU**, drafted per the Master Drafting Prompt (`# Eclipse NMBU GF doc.md`), built from `Vedtekter for Eclipse NMBU (1).pdf` (Old Bylaws) and `Vedtekts ENDRINGER.pdf` (proposed New Bylaws draft, "Omstrukturert utkast · 21 Sept 2026 · @Oskar"). Each numbered folder is one document (or a small family of documents) in the set, built on the `rapport` LaTeX template (`Common/Latex/Templates/rapport.cls`). All documents use Document IDs of the form `{YY}{H|V}-ECL-GA-{TYPE}{n}` (e.g. `26H-ECL-GA-CASE0`), and each file's name matches its Document ID.

Every document loads `ga-common.tex` directly after `\documentclass`. It holds the meeting date, time and location (`\meetingdate`, `\meetingtime`, `\meetinglocation`, `\meetingline`) and the header/cover logos, so a change to the meeting details only needs to be made there.

## Decisions resolved before drafting

1. **Old Bylaws govern this General Assembly.** Where the Old Bylaws are silent, the New Bylaws rule is used: Amendments are submitted in writing before voting on Cases begins (New §9.5), the Meeting Chair proposes the Voting Order (New §9.6.1), and adopted Bylaw Amendments take effect when the protocol is signed (New §17.2).
2. **2/3 threshold for the Bylaw Amendment (Old Bylaws §4.6 / proposed New Bylaws §17.1) means 2/3 of *all* Eclipse NMBU members**, read literally, not 2/3 of those present or voting.
3. **Individual Amendments to the proposed New Bylaws text need only a simple majority of votes cast**, not the full 2/3 threshold (which applies only to the Stage-1 constitutional question; see `06 Bylaw Amendment Proposal/02-bylaw-amendment-voting-procedure.tex`).
4. **MCR/PDR/CDR:** the New Bylaws draft (§4.8, §16.1, §16.3) only defines MCR and SRR as gates, and leaves the rest to the Association's governance documents. Only MCR/SRR are stated as Bylaws requirements.
5. **Document ID scheme:** `{YY}{H|V}-ECL-GA-{TYPE}{n}` (semester-year, half, organisation, scope, type and sequence number; e.g. `26H-ECL-GA-AGD1`), newly established for this set, replacing the earlier `ECL-H2026-<TYPE>-##` scheme. Every file's name matches its own Document ID. Cases 2 (Approval of Notice) and 3 (Approval of Agenda) are folded into Case 1 (Constitution of the Meeting), so all later Cases are renumbered down by two.
6. **The Board has no formal veto over a signed Responsibility Contract transfer**: its role is to log it, not approve it.
7. **Alumni default public-display fields:** name, role(s)/title(s) held, and years/semesters active (see `13 Membership Contract`, §4).
8. **No incoming Cases.** The Agenda has ten fixed Cases. Documents that depend on the outcome of the Bylaw Amendment (Case 7) are split into A/B files, each stating only its own outcome.

## Cases

| Case | Item | Case Paper |
|---|---|---|
| 1 | Constitution of the Meeting (includes approval of Notice and Agenda) | 26H-ECL-GA-CASE0 |
| 2 | Financial statements, previous semester | 26H-ECL-GA-CASE1 |
| 3 | Budget, coming semester | 26H-ECL-GA-CASE2 |
| 4 | Semester report | 26H-ECL-GA-CASE3 |
| 5 | Bylaw Amendment | 26H-ECL-GA-CASE4A (attachments CASE4B, CASE4C) |
| 6 | C-suite structure | 26H-ECL-GA-CASE5A (adopted) / CASE5B (not adopted) |
| 7 | Election of Board Members | 26H-ECL-GA-CASE6A (adopted) / CASE6B (not adopted) |
| 8 | Other business | no Case Paper |

## Folder index

| Folder | Document(s) | Document ID(s) |
|---|---|---|
| 00 Overview | Overview of the meeting, Cases and every document in the set | 26H-ECL-GA-OVW1 |
| 01 Notice of Meeting | Notice of Meeting (innkalling) | 26H-ECL-GA-NOT1 |
| 02 Agenda | Agenda (saksliste) | 26H-ECL-GA-AGD1 |
| 03 Case Template | Reusable Case Paper template (saksmal) | 26H-ECL-GA-TPL1 |
| 04 Amendment Submission Procedure | Amendment procedure (endringsforslagsprosedyre) | 26H-ECL-GA-PROC1 |
| 05 Standard Case Papers | Constitution (incl. Notice/Agenda approval), Financial Statements, Budget, Semester Report; Election of Board Members as CASE6A (CEO/CTO/CBO/CPO) and CASE6B (CEO/CTO/CFO/CMO) | 26H-ECL-GA-CASE0…3, CASE6A/6B |
| 06 Bylaw Amendment Proposal | Case 5 with full proposed New Bylaws (English), plain-language explanation, two-stage voting procedure | 26H-ECL-GA-CASE4A/4B/4C |
| 07 Transitional C-suite Case | Case 6, C-suite structure: CASE5A (CEO/CTO/CBO/CPO, New Bylaws) and CASE5B (CEO/CTO/CFO/CMO, Old Bylaws) | 26H-ECL-GA-CASE5A/5B |
| 08 Candidate Documentation | Candidate consent form (kandidatsamtykke) | 26H-ECL-GA-CAND1 |
| 09 Bylaw Amendment Ballot | Stage-1 ballot | 26H-ECL-GA-BALLOT1 |
| 10 Election Ballots | Cut-out ballot slips, 10 per page, one page per role: CEO/CTO/CBO/CPO and CEO/CTO/CFO/CMO | 26H-ECL-GA-BALLOT2A/2B |
| 11 Voting Order | Voting order (voteringsorden) | 26H-ECL-GA-VOTORD1 |
| 12 Meeting Protocol | Protocol template (protokoll) | 26H-ECL-GA-PROT1 |
| 13 Membership Contract | Membership contract (medlemskontrakt) | 26H-ECL-GA-MEMB1 |
| 14 Responsibility and Signature Contract | Old-Bylaws signature authorisation, New-Bylaws Responsibility & Signature Contract, Board record log | 26H-ECL-GA-RESP1A/1B/2 |
| 15 GF for Dummies | Plain-language, non-binding guide | 26H-ECL-GA-DUMMY1 |
| 16 Multilingual Organisational Glossary | English (Norwegian) glossary used across the whole set | 26H-ECL-GA-GLOSS1 |
