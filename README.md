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
* Install Alfred workflows.
* Install Dash docsets.
* Install oh-my-zsh.
* Setup dotfiles.
* Install Homebrew Casks.
* Install global npm modules.
* Custom OS X config.
