[![Build Status](https://secure.travis-ci.org/sboosali/reflex-dom-widgets.svg)](http://travis-ci.org/sboosali/reflex-dom-widgets)
[![Hackage](https://img.shields.io/hackage/v/reflex-dom-widgets.svg)](https://hackage.haskell.org/package/reflex-dom-widgets)

# reflex-dom-widgets

Widgets that are derived from the more fundamental ones in `reflex-dom` (like `reflex-dom-contrib` does).

## Approach

Uses the `reflex-vinyl` and `typed-dom` (/ `reflex-dom-typed`) packages. 

Tries to use richer types whenever possible: e.g. `number` parse the element value into an number, versus returning the raw string itself; `radioGroup` returns a `Set a`, not `[a]`, since there aren't duplicates or an ordering. 

## Features

Emphasis on accessibility. 

The user should be able to interact with any widget via multiple inputs methods. 
In particular:

* the keyboard navigation includes (at the least) the ability to navigation via `tab`s throughout every "widget group" interface, and via arrow keys within "widget groups". 
* both mouse interaction and keyboard shortcuts, 
* minimize unnecessary clicking / typing. for example, a radio button group takes up more scren space than a drop down list, but doesn't require an extra click (to activate the dropdown, i.e. drop it down) every time you want to change it.
* touchscreen awareness. hovering frequently provides information, but never exclusively. for example, TODO. 

## Example

```
import Reflex.Dom.Widgets

-- TODO
```

## Links

[Hackage](https://hackage.haskell.org/package/reflex-dom-widgets)

[Example module source](https://hackage.haskell.org/package/reflex-dom-widgets/docs/src/Reflex-Dom-Widgets-Example.html). 

## Development

### Nix

These nix files:

* `reflex-dom-widgets-default.nix` 
* `reflex-dom-widgets-shell.nix` 

were automatically created by the `cabal2nix` command, and can be regenerated with `./reconfigure.sh`. They shouldn't be edited manually. 

While the other nix files:

* `default.nix` 
* `shell.nix` 

import their respecitve autogen'd files, but can (and should) be edited manually when necessary. 

If, you've forked this and have rewritten your own custom nix file for development (e.g. you're on OSX, or you need an older compiler version), please suffix it with that environment (e.g. `osx-shell.nix` or `ghc-7-10-03.nix`), and submit a pull request. Ditto for `stack.yaml` files. 

