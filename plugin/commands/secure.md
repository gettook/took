---
description: "Run the Secure phase (RePPITS): compliance checklists against the current diff. HIPAA/SOC2/HITRUST assessment with code-vs-org control separation. Pipp Health only."
argument-hint: ""
allowed-tools:
  - Bash
---

## Secure phase — compliance that isn't theater

The *secure-gate* principle: run HIPAA/SOC2/HITRUST checklists against the diff after Test passes. The *code-vs-org* principle: a green diff never auto-passes controls that code can't prove.

**The defining distinction:**
Some controls are *code-verifiable* — encryption in transit, input validation, secret management, access control logic. These can be assessed directly from the diff.

Other controls are *organizational* — physical safeguards, board oversight, BAA agreements with subprocessors, breach-notification processes. Code can't prove these. They are surfaced separately and tracked, never silently passed.

**The loop:**
```
Implement → Test → Secure
              ↑          |
              └──────────┘  (if issues found, loop until clean)
```

Running the Secure phase now:

!took secure

Any `block`-severity findings must be resolved before this diff ships. Organizational controls are reported for awareness — follow up with the appropriate process owner.

**This is an assessment, not a certification.** Took surfaces and tracks; it does not certify compliance. Consult a qualified compliance officer or counsel for formal attestation.
