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
* Install Alfred workflows.

If you have a local config you want to use, place it on `~/.zshrc.local`.
**Don't modify the .zshrc symlink.**

***

## Alfred Workflows and Themes

~~Alfred doesn't support automatic provision so in the bootstrapping process you'll be asked if you want the workflows,
then you'll be taken to my package download page.~~

I'm using [awm](https://github.com/jonathanwiesel/awm) for automatic workflow provisioning. However a little continuity hack
is implemented since `awm` still needs user intervention to install workflows.

**Remember to enable PowerPack before installing workflows.**

Settings syncing can be enabled in the Advanced panel.

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

Remember to install Alfred workflow from Dash settings.

***

## License

http://jonathanwiesel.mit-license.org/
