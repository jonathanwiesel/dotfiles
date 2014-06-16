# OS X personal provisioning

Install Xcode command line tools:

```sh
$ xcode-select --install
```

Wait for installation then verify the compiler is present:

```sh
$ gcc --version
```

Verify you have ZSH:

```sh
$ zsh --version
zsh 5.0.2 (x86_64-apple-darwin13.0)
```

> If not present you can install it via Homebrew then link to it by adding `/usr/local/bin/zsh` to `/etc/shells`

Execute the provision script:

```sh
$ curl -L https://raw.githubusercontent.com/jonathanwiesel/dotfiles/master/bootstrap.sh | sh
```

It will do the following:

* Install Homebrew.
* Install Homebrew apps.
* Install oh-my-zsh.
* Link dotfiles.
* Install Atom packages.
* Install global npm modules.
* Setup custom OS X config.
* Install Homebrew Casks.

***

## Alfred Workflows and Themes

Alfred doesn't support automatic provision so the `alfred` directory has my most used workflows and favorite themes.

Must be installed manually by double clicking.

**Remember to enable PowerPack before installing workflows.**

Settings syncing can be enabled in the Advanced panel.

***

## Dash Docsets

Dash doesn't support automatic provision so `dash-docsets` stores the ones I use.

Remember to install Alfred workflow from Dash settings.

***

## License

http://jonathanwiesel.mit-license.org/
