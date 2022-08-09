# Fish edit

A simple edit command for fish

## Installing

Copy `edit.fish` in `~/.config/fish/functions/`

You can also use curl

```sh
curl -o $XDG_CONFIG_HOME/fish/functions/edit.fish \
https://raw.githubusercontent.com/kowalski7cc/fish-edit/master/edit.fish
```

or wget

```sh
wget -O $XDG_CONFIG_HOME/fish/functions/edit.fish \
https://raw.githubusercontent.com/kowalski7cc/fish-edit/master/edit.fish
```

It will be automatically loaded when fish is launched. You can also load it manually without restarting fish with

```sh
source $XDG_CONFIG_HOME/fish/functions/edit.fish
```

## How it works

It first will check `$VISUAL` if you are using X or Wayland and `$EDITOR` if visual unset or no X/Wayland session found.
If both are unset, it will check for the presence of the editor command, which is set by [update-alternatives](https://wiki.debian.org/TextEditor#How_to_set_a_default_text_editor).
If still no luck, it will check sequentially for one of this editors:

- nano
- pico
- vim
- vi
- ed
