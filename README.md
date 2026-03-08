# alt-git

👩‍🎓 Instead of using git, use `alt-git`. A wrapper around git plumbing commands.

> INFO: This project is for **educational purposes only**. It is not intended for production use.

## Installation

```bash
cd ~/projects/ # or any workspace that you use
git clone git@github.com:piecioshka/alt-git.git

# Bash: please add to `~/.bash_profile`
export PATH="$HOME/projects/alt-git/bin/:$PATH"

# Fish: please add to `~/.config/fish/config.fish`
set -gx PATH $HOME/projects/alt-git/bin/ $PATH
```

## Available Commands

### ▶︎ `alt-git-init` — Initialize a new repository

```bash
alt-git-init
```

Plumbing: creates `.git/refs/`, `.git/objects/`, sets `HEAD` to `refs/heads/main`.

### ▶︎ `alt-git-add <file>` — Stage a file

```bash
alt-git-add <file>
```

Plumbing: `git update-index --add`

### ▶︎ `alt-git-commit -m <message>` — Create a commit from staged files

```bash
alt-git-commit -m "Your commit message"
```

Plumbing: `git write-tree`, `git commit-tree`, `git update-ref`

### ▶︎ `alt-git-branch` — List, create, or delete branches

```bash
alt-git-branch
alt-git-branch <branch_name>
alt-git-branch -d <branch_name>
```

Plumbing: `git update-ref`, `git update-ref -d`

### ▶︎ `alt-git-switch <branch_name>` — Switch to an existing branch

```bash
alt-git-switch <branch_name>
```

Plumbing: `git symbolic-ref`

### ▶︎ `alt-git-tag` — List or create tags

```bash
alt-git-tag
alt-git-tag <tag_name>
```

Plumbing: `git update-ref refs/tags/`

## Demos

Recorded with [vhs](https://github.com/charmbracelet/vhs).

![](demo/overview.gif)

## Related

- https://github.com/piecioshka/git-scripts
- https://github.com/piecioshka/jira-scripts
- https://github.com/piecioshka/media-scripts
- https://github.com/piecioshka/my-binaries
- https://github.com/piecioshka/my-scripts

## License

[The MIT License](https://piecioshka.mit-license.org) @ 2026
