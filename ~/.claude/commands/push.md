---
allowed-tools: Bash(git add:*), Bash(git status:*), Bash(git diff:*), Bash(git commit:*), Bash(git push:*)
argument-hint: [commit message]
description: Commit and push code
---

Execute the following steps:

1. Run `git status` to view current changes
2. Run `git diff --staged` and `git diff` to view specific changes
3. If there are unstaged changes, run `git add .` to add all changes
4. Commit with the following commit message: $ARGUMENTS
   - If no message is provided, auto-generate a concise commit message based on the changes
5. Run `git push` to push to the remote repository

Notes:

- Briefly describe the changes before committing
- If push fails (e.g., need to pull first), inform me of the specific situation
