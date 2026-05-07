![Eclipse logo](../Common/Eclipse%20Images/EclipseFullTextBW.png)

![Eclipse](../Common/Eclipse%20Images/EclipsePlack.png)

# Test Waiver (Template)

> A waiver is a **last resort** exception that allows progress despite a failing or unperformed test.
>
> A waiver must be used only when testing is not possible (or would be actively unsafe), and must include mitigations that reduce risk.

## Waiver metadata

- Waiver ID: $\underline{\hspace{5cm}}$
- Date: $\underline{\hspace{5cm}}$
- Project: $\underline{\hspace{5cm}}$
- Requested by (name + role): $\underline{\hspace{5cm}}$
- Test lead (name + role): $\underline{\hspace{5cm}}$
- Validator (name + role): $\underline{\hspace{5cm}}$

## Test being waived

- Test name: $\underline{\hspace{5cm}}$
- Scope (what is affected if this is not tested):

## Reason for waiver

- Why the test was not performed / cannot be performed:
- Constraints (equipment missing, time, safety, access, board state, etc.):

## Risk assessment

- Failure modes introduced by skipping the test:
- Worst-case consequence:
- Likelihood estimate:
- Detection options remaining (what will still detect the failure in flight or on bench):

## Mitigations and compensating controls

List concrete actions that reduce risk. Examples:

- Additional inspection (visual, continuity, thermal)
- Reduced operating envelope (frequency, voltage, duty, rate)
- Extra runtime monitoring / logging
- Redundant test(s) that partially cover the same failure modes

Mitigations:

- [ ]
- [ ]
- [ ]

## Decision

- Decision:
  - [ ] Approved (waiver accepted)
  - [ ] Rejected (test must be executed before proceeding)

## Sign-off

Test Lead: $\underline{\hspace{5cm}}$ Date: $\underline{\hspace{3cm}}$

Validator: $\underline{\hspace{5cm}}$ Date: $\underline{\hspace{3cm}}$
