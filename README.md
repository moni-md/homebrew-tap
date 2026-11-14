# moni-md/tap

Homebrew casks for [Moni](https://moni.md/).

## Install

```sh
brew install moni-md/tap/moni
```

Homebrew adds the tap and trusts only the cask you install. This tap moved from aquariuslt/tap in November 2026; an existing `aquariuslt/tap` keeps updating through GitHub's redirect, and `brew untap aquariuslt/tap && brew tap moni-md/tap` switches to the new name.

## Casks

| Cask | App |
| --- | --- |
| `moni` | [Moni](https://moni.md/), a Markdown editor for a folder of notes. Apple silicon, macOS 13 or later. |

Moni updates itself, so `brew upgrade` skips it unless you pass `--greedy`. Each Moni release updates the version and checksum here.

`brew uninstall --zap moni` also removes Moni's settings, caches and logs. Your notes stay where they are.
