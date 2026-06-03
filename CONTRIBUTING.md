# Contributing to Took

Thanks for your interest. Contributions are welcome — please read this first.

## Development setup

```sh
git clone https://github.com/tookbot/took.git
cd took/oss
npm install
npm run build --if-present
npm test --if-present
```

## The RePPIT expectation

We dogfood Took. Every non-trivial change should follow the loop:

1. **Research** — understand the problem; check existing issues and code.
2. **Propose** — open an issue or comment with your approach before writing code.
3. **Plan** — outline the files you will touch and the done criteria.
4. **Implement** — make the smallest change that satisfies the plan.
5. **Test** — add or update a test that would have caught the bug or proves the feature.

## Code style

- TypeScript ESM, extensionless relative imports.
- Only `commander` and `picocolors` as runtime dependencies — do not add more.
- Keep functions small and named; comment the "why", not the "what".

## Running tests

```sh
npm test
```

Tests live alongside source in `tests/`. Use `vitest`.

## Submitting a pull request

- One logical change per PR.
- Reference the related issue.
- The PR description should explain **why**, not just what changed.
