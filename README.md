# moni-md/tap

Homebrew tap for [Moni](https://moni.md/), a Markdown editor for a folder of notes. Moni needs Apple silicon and macOS 13 or later.

## Install

```sh
brew install moni-md/tap/moni
```

## Update

Moni updates itself, so `brew upgrade` skips it unless you pass `--greedy`:

```sh
brew upgrade --greedy moni
```

## Uninstall

```sh
brew uninstall --zap moni
```

`--zap` also removes Moni's settings, caches and logs. Your notes stay where they are.
