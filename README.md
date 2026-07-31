# dotfiles

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

## Setup on a new machine

Install chezmoi with curl:

```sh
sh -c "$(curl -fsLS get.chezmoi.io)"
```

Or with Homebrew:

```sh
brew install chezmoi
```

If chezmoi is already installed:

```sh
chezmoi init --apply bopeng95
```

This clones the repo into `~/.local/share/chezmoi` and applies everything to your home directory.

## Daily usage

```sh
chezmoi diff              # preview what would change
chezmoi apply             # apply the dotfiles to your home directory
chezmoi update            # pull latest changes from the repo and apply them
```

## Editing dotfiles (personal use)

Editing and pushing changes requires write access to this repo — others can apply the dotfiles but not modify this repo. To maintain your own version, fork it and `chezmoi init --apply <your-username>`.

```sh
chezmoi edit ~/.zshrc     # edit the source file for a managed dotfile
chezmoi apply             # apply the change
chezmoi cd                # cd into the source directory (this repo)
```

To start managing a new file:

```sh
chezmoi add ~/.somefile
```

Then commit and push from the source directory:

```sh
chezmoi cd
git add -A && git commit -m "update dotfiles" && git push
```

## Layout

Source files live under `home/` (set via `.chezmoiroot`). File names use chezmoi conventions — `dot_zshrc` becomes `~/.zshrc`, `dot_config/` becomes `~/.config/`, and so on.
