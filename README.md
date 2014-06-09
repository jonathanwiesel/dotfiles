# OS X personal provisioning

Install Xcode command line tools:

```sh
$ xcode-select --install
```

Wait for installation then verify the compiler is present:

```sh
$ gcc --version
```

Run the `setup.sh` script:

```sh
$ ./setup.sh
```

It will do the following:

* Install Homebrew.
* Install Homebrew apps.
* Install oh-my-zsh.
* Setup environment.
* Install Homebrew Casks.
* Setup Atom config and packages.
* Install global npm modules.
* Custom OS X config.

***

## Alfred Workflows and Themes

Alfredapp doesn't support automatic provision so the `alfred` directory has my most used workflows and favorite themes.

Must be installed manually by double clicking.

***

## Dash Docsets

Dash doesn't support automatic provision so `dash-docsets` stores the one I use.

Remember to install Alfred workflow from Dash settings.
