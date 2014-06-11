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
$ curl -L https://gitlab.com/jonathanwiesel/osx-provision/raw/master/bootstrap.sh | sh
```

It will do the following:

* Install Homebrew.
* Install Homebrew apps.
* Install oh-my-zsh.
* Setup environment.
* Install Homebrew Casks.
* Install Atom packages.
* Install global npm modules.
* Custom OS X config.

***

## Alfred Workflows and Themes

Alfred doesn't support automatic provision so the `alfred` directory has my most used workflows and favorite themes.

Must be installed manually by double clicking.

**Remember to enable PowerPack before installing workflows.**

Alfred configuration must be done manually :disappointed:.

***

## Dash Docsets

Dash doesn't support automatic provision so `dash-docsets` stores the ones I use.

Remember to install Alfred workflow from Dash settings.

***

## License

http://jonathanwiesel.mit-license.org/
