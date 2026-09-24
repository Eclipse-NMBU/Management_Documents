# Eclipse NMBU — 26H-ECL-GA Document Set: Linking, Attachments, and FULL Edition

## Context
Document set uses the ID scheme in 26H-ECL-GA-REF1: YYH/V-ECL-GA-TYPEn,
lettered suffixes for attachments/alternate outcomes. All documents use
the shared rapport class and ga-common.tex preamble. Flat folder, one
.tex file per Document ID, filename matches Document ID exactly. This
build targets 26H (autumn 2026).

## 1. Cross-document links
Every reference from one document to another must be a real hyperlink,
not a plain-text Document ID.

Implement via a single macro in ga-common.tex, e.g.:
  \GARef{label}{doc-id}{display text}
- When a document compiles standalone: emits an external link,
  \href{doc-id.pdf#label}{display text}
- When the same source compiles as part of FULL: emits an internal
  link instead, \hyperref[label]{display text}
- Controlled by one toggle set per compile job (e.g. \ifga@standalone),
  not per document and not per call site. Every document's source is
  written once and never edited when switching between standalone and
  FULL builds.

## 3. Attachments
Any document with lettered-suffix attachments (per REF1 §1.2, e.g.
CASE4A-E) gets those attachments generated as their own files and
linked from the parent document using the same \GARef mechanism.

## 4. FULL edition (26H-ECL-GA-FULL)
- Contains every document in the set, concatenated in meeting order,
  with a table of contents at the front.
- Each component document KEEPS its own individual cover page and its
  own existing page numbering, unchanged.
- Add a second, independent page counter that runs continuously across
  the whole FULL document regardless of document boundaries, printed
  in the bottom-right footer as "Super: x/y". This needs a per-page
  increment that survives \include/\input boundaries, and a two-pass
  build so the final total (y) is known before page 1 prints.

## 5. Links resolve in both contexts
A \GARef link must work correctly whether the reader has the
standalone PDF open or is reading the same content inside FULL — this
is what requirement 1's toggle exists to guarantee. No link should be
hand-duplicated for the two cases.

## 6. Ballots
BALLOT documents are pre-generated only for CAND (candidate election)
cases. For any other case, a BALLOT is produced live only if a
stemmeberettiget member invokes their right to skriftlig/hemmelig
voting on the floor (PROC2 §9.6.3) — the template must exist but is
not pre-instantiated for ordinary cases.

