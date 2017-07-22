# dotfiles

Theese dotfiles are split into folders. Install them into your home directory by
tying stow followed by the folder name. This must be done for the root of the
repo. For example:

    stow develop

To uninstall:

    stow -D develop

Some configurations need to be installed into the root directory. This can be
done by calling:

    stow --target=/ nginx

## Dependencies
* `gnome`:
  * arc-gtk-theme

* `terminator`:
  * nerd fonts (hack)

