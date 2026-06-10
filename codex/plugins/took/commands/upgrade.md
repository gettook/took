---
description: "Upgrade your Took plan (Max/Pro). Pays via Stripe Checkout from the terminal — the same per-user link the website uses — then unlocks paid features like Pipp mode and took eval."
argument-hint: "[max|pro]"
allowed-tools:
  - Bash
---

## Upgrade your Took plan

Some Took features are paid: the **Pipp** and **Pipp Health** registers need
**Max**, and `took eval` in the engineer register needs **Pro**. `took upgrade`
pays the same way app.tookbot.com does — a per-user Stripe Checkout link tagged to
your account, so the payment maps straight back to you — then auto-applies the
plan so paid features unlock. Your card is handled by Stripe, never by Took.

Running the upgrade (defaults to **Max**; pass `pro` for Pro):

!took upgrade $ARGUMENTS

A browser opens to Stripe Checkout. Pay there; Took then polls until the webhook
lands your new plan and caches it locally, so `took pipp` / `took eval` unlock
right away. If the browser doesn't open, the link is printed — open it yourself.
Already on the plan? It says so and does nothing.
