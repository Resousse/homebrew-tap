# Resousse Tap

## Available casks

| Cask | Description |
| ---- | ----------- |
| [`automatic-mouse-mover`](Casks/automatic-mouse-mover.rb) | [Automatic Mouse Mover (AMM)](https://github.com/Resousse/automatic-mouse-mover): moves the mouse pointer when idle to keep the machine awake. Requires Apple Silicon and macOS Tahoe or later. |

The app is only ad-hoc signed, so the cask removes the quarantine attribute after installation to let Gatekeeper open it.

## How do I install these casks?

`brew install --cask resousse/tap/<cask>`

Or `brew tap resousse/tap` and then `brew install --cask <cask>`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "resousse/tap"
cask "<cask>"
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
