---
name: git-worktree
description: Git worktree management commands for creating and removing worktrees when developing new features with Claude Code, use `agta feature-name` to create worktree feature branch.
---
# Git Worktree Management

Use these commands to manage git worktrees when developing new features. This is especially useful when working on experimental changes or features that you want to keep isolated from your main branch.

## Available Commands

### `agta [branch-name]`

Creates a new git worktree and branch for feature development.

**Usage:**

```bash
agta feature-xyz
```

This will:

1. Create a new branch called `feature-xyz`
2. Create a new worktree directory at `../current-dir--feature-xyz`
3. Switch to the new worktree directory

**Example workflow:**

```bash
# In your main project directory
cd ~/projects/myapp
agta new-feature

# You're now in ~/projects/myapp--new-feature with a new branch
# Make your changes, then commit them
git add .
git commit -m "Add new feature"
```

### `agtd`

Removes the current worktree and its associated branch.

**Usage:**

```bash
agtd
```

This will:

1. Prompt for confirmation
2. Switch back to the main directory
3. Remove the worktree
4. Delete the associated branch

**Requirements:**

- Must be run from within a worktree directory (one that contains `--` in its name)
- Requires `gum` to be installed for the confirmation prompt

## When to Use

Use these commands when:

- You want to experiment with a new feature without affecting your main branch
- You need to quickly switch between different features
- You want to keep multiple versions of your codebase available simultaneously
- Working on a complex refactoring that might break existing functionality

## Installation

These commands are defined in `agent-git-tree.sh` and should be sourced in your shell configuration file (`.zshrc` or `.bashrc`).
