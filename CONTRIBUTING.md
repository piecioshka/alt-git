# Contributing to alt-git

How the scripts are organized and how to add a new command. For installation and the list of commands, see the [README](README.md).

## Project structure

```
bin/alt-git-*            - one Bash script per command
test.sh                  - walkthrough that runs every command in a fresh repo
demo/generate-vhs-demo   - turns test.sh into demo/overview.gif
demo/overview.gif        - the GIF shown in the README
```

There is no package manager, build step or CI. Prerequisites: Bash and Git; `tree` is used by `test.sh`, and [VHS](https://github.com/charmbracelet/vhs) by the demo script.

## Adding a command

1. Create `bin/alt-git-<name>` starting with `#!/usr/bin/env bash` and `set -e`, and make it executable (`chmod +x`).
2. Validate the arguments and print an `Error: ...` message with `exit 1` when they are wrong.
3. Call Git plumbing commands only (`git update-index`, `git write-tree`, `git commit-tree`, `git update-ref`, `git symbolic-ref`, ...), with a `## git <porcelain equivalent>` comment above the call.
4. Add a section to "Available Commands" in the README: the usage, then a `Plumbing:` line listing the commands it uses.
5. Add the command to `test.sh`.

## Trying it out

`test.sh` expects the `bin/` directory on `PATH` and an empty directory as the working directory, because it starts with `alt-git-init`:

```bash
export PATH="$PWD/bin:$PATH"
mkdir -p tmp/test-git-repo && cd tmp/test-git-repo
bash ../../test.sh
```

`tmp/` is ignored by Git.

## Demo GIF

```bash
./demo/generate-vhs-demo
```

Run it from the repository root with `bin/` on `PATH`. It clears `tmp/test-git-repo/`, types every line of `test.sh` into a VHS session and writes `demo/overview.gif`.

## Conventions

- Scripts should pass ShellCheck (for example SC2148 - missing shebang - was fixed in `test.sh`).
- Commit messages follow Conventional Commits (`fix:`, `chore:`).
