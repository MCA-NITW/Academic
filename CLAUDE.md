# CLAUDE.md

> This file stacks on top of the workspace root at `C:\Code\GitHub\`:
> - Root [`CLAUDE.md`](../../CLAUDE.md) -- voice, rules, routing map, references, skills, slash commands, conventions.
> - Root [`MEMORY.md`](../../MEMORY.md) -- live facts across repos.
> - Root [`STATUS.md`](../../STATUS.md) -- live PR/CI/security dashboard.
> - [`.claude/resources/`](../../.claude/resources/README.md) -- deep reference for collaboration, workflow, git, OSS, debugging, voice.
>
> Read those first. The guidance below only adds **repo-specific context** -- it does not override anything in the root.

## Project

Content-only archive of MCA coursework at NIT Warangal (Batch 21-24): exam papers, study materials, lab assignments, organized `Sem-1/` through `Sem-4/` by subject. Used by current and incoming MCA students for exam prep.

Lives in the [MCA-NITW org](https://github.com/MCA-NITW/Academic), not Sagar's personal account. GPL-3.0.

## Stack

- **Language**: Markdown docs + assorted course files (R scripts, PDFs, PPT/DOCX, images)
- **Framework**: none -- no application code
- **Database**: none
- **Package manager**: none
- **Deploy target**: none -- browsed directly on GitHub

## Run

Nothing to run. Content-only repo.

## Test

No test suite. CI (`.github/workflows/ci.yml`) runs two reusable workflows from `mca-nitw/.github`:

- `markdown-check.yml` -- markdownlint + link check on `**/*.md`
- `security-scan.yml` -- security scan

Lint rules relaxed via `.markdownlint.yml` (long lines, inline HTML, no-language code fences all allowed for notes).

## Entry points

- `README.md` -- index of every semester and subject; keep its tables in sync when folders change
- `Sem-1/` .. `Sem-4/` -- one folder per subject, then `Exam Papers/` / `Study Materials/` / assignments inside

## Key files

- `README.md` -- source of truth for repo structure and contribution guidelines
- `.markdownlint.yml` -- relaxed lint config; CI fails without it
- `.github/workflows/ci.yml` -- thin wrapper over org-level reusable workflows

## Gotchas

- Folder names contain spaces, parens, and apostrophes (e.g. `Artificial Intelligence (Elective)`, `Batch 21-24'`) -- always quote paths in shell commands.
- CI and Renovate both extend `mca-nitw/.github`; org-level changes there affect this repo silently.
- CHANGELOG.md is hand-maintained -- bump it on meaningful content additions.

## Repo-specific rules

- Org repo with student contributors -- keep PR reviews welcoming; enforce structure (semester -> subject, exam papers separate from study materials, batch/year noted).
- Never add copyrighted textbook PDFs; reject PRs that include them.
- License is GPL-3.0 (org standard), not MIT.
