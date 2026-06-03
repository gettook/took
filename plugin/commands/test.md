---
description: "Coach the Test phase: every behavior change ships with a runnable, automatic test. Surfaces the verifiable-tests principle and runs took diff to confirm test coverage."
argument-hint: "<optional: what was implemented>"
allowed-tools:
  - Bash
---

## Test phase — automatic verification, not faith

The *verifiable-tests* principle: if the behavior change can't be verified by running a command, it can't be verified at all. This is not about 100% coverage — it's about the specific behaviors that changed in this diff having a test that would catch a regression.

**What counts:**
- A new test that exercises the new or changed behavior
- A modified existing test that now covers the changed path
- An integration test that proves the happy path end-to-end

**What doesn't count:**
- A test that was already passing before the change (irrelevant)
- A test of a different behavior in the same file (insufficient)
- Manual testing ("I tried it and it worked")

Review the diff for test coverage:

!took diff

If `behaviorChangedWithoutTests` is flagged, the diff is not ready to ship. Write the test before moving on.

For regulated work, move to `/took:secure` after tests pass. For standard work, move to `/took:pr-ready`.
