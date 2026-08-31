# homebrew-margin

The Homebrew tap for [margin](https://github.com/priyanshujain/margin) and its siblings.

```
brew tap priyanshujain/margin
brew trust priyanshujain/margin
brew install --cask margin
```

The `trust` step is not optional. Homebrew 6 refuses to load a cask from a tap it has not been told
to trust, and the error it gives instead does not mention installing anything, so leaving it out of
the instructions just sends people somewhere confusing.

The casks here are rewritten by each app's release workflow, so a version bump lands within a
minute of the GitHub release leaving draft. Nothing in this repo is edited by hand except when a
cask gains or loses a stanza.
