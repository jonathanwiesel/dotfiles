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
* Link dotfiles.
* Install Atom packages.
* Install global npm modules.
* Setup custom OS X config.
* Install Homebrew Casks.

If you have a local config you want to use, place it on `~/.zshrc.local`.
**Don't modify the .zshrc symlink.**

***

## Dash Docsets

Dash doesn't support automatic provision yet. My installed docsets are:

```
Angular
Applescript
Bash
Bootstrap
CSS
Express
Grunt
HTML
iOS
Jade
JavaScript
jQuery
Man Pages
MongoDB
Mongoose
Nginx
Node.js
PHP
Redis
Vagrant
```

***

## License

http://jonathanwiesel.mit-license.org/
