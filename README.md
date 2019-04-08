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
$ bash <(curl -fsSL https://raw.githubusercontent.com/jonathanwiesel/dotfiles/master/bootstrap.sh)
```

It will do the following:

* Install Homebrew.
* Install Homebrew apps.
* Install Homebrew Casks.
* Link dotfiles.
* Install global npm modules.
* Install VS Code extensions.

If you have a local config you want to use, place it on `~/.zshrc.local`.
**Don't modify the .zshrc symlink.**

***

## License

http://jonathanwiesel.mit-license.org/
