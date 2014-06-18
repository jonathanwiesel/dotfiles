# OS X personal provisioning

Install Xcode command line tools:

```sh
$ xcode-select --install
```

Wait for installation then verify the compiler is present:

```sh
$ gcc --version
```

Execute the provision script:

```sh
$ curl -L https://raw.githubusercontent.com/jonathanwiesel/dotfiles/master/bootstrap.sh | sh
```

It will do the following:

* Install Homebrew.
* Install Homebrew apps.
* Link dotfiles.
* Install Atom packages.
* Install global npm modules.
* Setup custom OS X config.
* Install Homebrew Casks.

If you have a local config you want to use, place it on `~/.zshrc.local`.
**Don't modify the .zshrc symlink.**

***

## Alfred Workflows and Themes

Alfred doesn't support automatic provision so in the bootstrapping process you'll be asked if you want the workflows,
then you'll be taken to my package download page.

**Remember to enable PowerPack before installing workflows.**

Settings syncing can be enabled in the Advanced panel.

***

## Dash Docsets

Dash doesn't support automatic provision so `dash-docsets` stores the ones I use.

Remember to install Alfred workflow from Dash settings.

***

## License

http://jonathanwiesel.mit-license.org/
