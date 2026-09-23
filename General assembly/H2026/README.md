# Eclipse NMBU General Assembly Document Set (H2026)

This folder contains the complete General Assembly document set for the meeting on **30 September 2026, 12:00, Festsalen, NMBU**, drafted per the Master Drafting Prompt (`# Eclipse NMBU GF doc.md`), built from `Vedtekter for Eclipse NMBU (1).pdf` (Old Bylaws) and `Vedtekts ENDRINGER.pdf` (proposed New Bylaws draft, "Omstrukturert utkast · 21 Sept 2026 · @Oskar"). Each numbered folder is one document (or a small family of documents) in the set, built on the `rapport` LaTeX template (`Common/Latex/Templates/rapport.cls`). All documents use Document IDs of the form `ECL-H2026-<TYPE>-##`.

Every document loads `ga-common.tex` directly after `\documentclass`. It holds the meeting date, time and location (`\meetingdate`, `\meetingtime`, `\meetinglocation`, `\meetingline`) and the header/cover logos, so a change to the meeting details only needs to be made there.

## Decisions resolved before drafting

1. **Old Bylaws govern this General Assembly.** Where the Old Bylaws are silent, the New Bylaws rule is used: Amendments are submitted in writing before voting on Cases begins (New §9.5), the Meeting Chair proposes the Voting Order (New §9.6.1), and adopted Bylaw Amendments take effect when the protocol is signed (New §17.2).
2. **2/3 threshold for the Bylaw Amendment (Old Bylaws §4.6 / proposed New Bylaws §17.1) means 2/3 of *all* Eclipse NMBU members**, read literally, not 2/3 of those present or voting.
3. **Individual Amendments to the proposed New Bylaws text need only a simple majority of votes cast**, not the full 2/3 threshold (which applies only to the Stage-1 constitutional question; see `06 Bylaw Amendment Proposal/02-bylaw-amendment-voting-procedure.tex`).
4. **MCR/PDR/CDR:** the New Bylaws draft (§4.8, §16.1, §16.3) only defines MCR and SRR as gates, and leaves the rest to the Association's governance documents. Only MCR/SRR are stated as Bylaws requirements.
5. **Document ID scheme:** `ECL-H2026-<TYPE>-##`, newly established for this set. Existing IDs are kept; only new or split documents get new IDs.
6. **The Board has no formal veto over a signed Responsibility Contract transfer**: its role is to log it, not approve it.
7. **Alumni default public-display fields:** name, role(s)/title(s) held, and years/semesters active (see `13 Membership Contract`, §4).
8. **No incoming Cases.** The Agenda has ten fixed Cases. Documents that depend on the outcome of the Bylaw Amendment (Case 7) are split into A/B files, each stating only its own outcome.

## Cases

| Case | Item | Case Paper |
|---|---|---|
| 1 | Constitution of the Meeting | ECL-H2026-CASE-00 |
| 2 | Approval of Notice | ECL-H2026-CASE-01 |
| 3 | Approval of Agenda | ECL-H2026-CASE-02 |
| 4 | Financial statements, previous semester | ECL-H2026-CASE-03 |
| 5 | Budget, coming semester | ECL-H2026-CASE-04 |
| 6 | Semester report | ECL-H2026-CASE-05 |
| 7 | Bylaw Amendment | ECL-H2026-CASE-07A (attachments 07B, 07C) |
| 8 | C-suite structure | ECL-H2026-CASE-08A (adopted) / 08B (not adopted) |
| 9 | Election of Board Members | ECL-H2026-CASE-06A (adopted) / 06B (not adopted) |
| 10 | Other business | no Case Paper |

## Folder index

| Folder | Document(s) | Document ID(s) |
|---|---|---|
| 00 Overview | Overview of the meeting, Cases and every document in the set | ECL-H2026-OVW-01 |
| 01 Notice of Meeting | Notice of Meeting (innkalling) | ECL-H2026-NOT-01 |
| 02 Agenda | Agenda (saksliste) | ECL-H2026-AGD-01 |
| 03 Case Template | Reusable Case Paper template (saksmal) | ECL-H2026-TPL-01 |
| 04 Amendment Submission Procedure | Amendment procedure (endringsforslagsprosedyre) | ECL-H2026-PROC-01 |
| 05 Standard Case Papers | Constitution, Approval of Notice/Agenda, Financial Statements, Budget, Semester Report; Election of Board Members as 06A (CEO/CTO/CBO/CPO) and 06B (CEO/CTO/CFO/CMO) | ECL-H2026-CASE-00…05, CASE-06A/06B |
| 06 Bylaw Amendment Proposal | Case 7 with full proposed New Bylaws (English), plain-language explanation, two-stage voting procedure | ECL-H2026-CASE-07A/07B/07C |
| 07 Transitional C-suite Case | Case 8, C-suite structure: 08A (CEO/CTO/CBO/CPO, New Bylaws) and 08B (CEO/CTO/CFO/CMO, Old Bylaws) | ECL-H2026-CASE-08A/08B |
| 08 Candidate Documentation | Candidate consent form (kandidatsamtykke) | ECL-H2026-CAND-01 |
| 09 Bylaw Amendment Ballot | Stage-1 ballot | ECL-H2026-BALLOT-01 |
| 10 Election Ballots | Cut-out ballot slips, 10 per page, one page per role: CEO/CTO/CBO/CPO and CEO/CTO/CFO/CMO | ECL-H2026-BALLOT-02A/02B |
| 11 Voting Order | Voting order (voteringsorden) | ECL-H2026-VOTORD-01 |
| 12 Meeting Protocol | Protocol template (protokoll) | ECL-H2026-PROT-01 |
| 13 Membership Contract | Membership contract (medlemskontrakt) | ECL-H2026-MEMB-01 |
| 14 Responsibility and Signature Contract | Old-Bylaws signature authorisation, New-Bylaws Responsibility & Signature Contract, Board record log | ECL-H2026-RESP-01A/01B/02 |
| 15 GF for Dummies | Plain-language, non-binding guide | ECL-H2026-DUMMY-01 |
| 16 Multilingual Organisational Glossary | English (Norwegian) glossary used across the whole set | ECL-H2026-GLOSS-01 |
