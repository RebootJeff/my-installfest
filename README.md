# App Installations & App Configs

## Downloads

### [Google Chrome](https://www.google.com/chrome/browser/desktop/index.html)
- Configure browser startup to "continue where you left off"
- Maybe disable cache while DevTools is open (in DevTools settings)
- Maybe disable "prefetch resources" (in advanced settings)
- **Extensions:** [Advanced REST Client](https://chrome.google.com/webstore/detail/advanced-rest-client/hgmloofddffdnphfgcellkdfbfbjeloo?hl=en-US), [JSONView](https://chrome.google.com/webstore/detail/jsonview/chklaanhfefbnpoihckbnefhakgolnmc/related?hl=en), maybe [React Dev Tools](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi?hl=en)

### [Mozilla Firefox Developer Edition](https://www.mozilla.org/en-US/firefox/developer/)
- Maybe enable tracking protection (in `about:config` settings)
- Configure browser startup to "show windows and tabs from last time"
- Maybe also install normal Firefox for testing frameworks to use
- Cool dev tools shown on [MozHacks YouTube channel](https://www.youtube.com/playlist?list=PLo3w8EB99pqLRJBWRCoyGTIrkctoUgB9W)

### [SizeUp](http://www.irradiatedsoftware.com/sizeup/) (Mac OS window manager)
- Configure shortcuts (e.g., `CTRL + OPT + CMD + M` = maximize window)
- Disable some shortcuts (e.g., `CTRL + CMD + UP Arrow` interferes with code editor shortcut)

### [iTerm2](https://www.iterm2.com/)
- Set left `option` key to act as `+Esc`
- Set working directory to "Reuse previous session's directory"
- [Configure shortcuts](https://codingphilosophy.wordpress.com/2013/04/20/move-the-cursor-word-by-word-on-mac-os-x-iterm2/) (e.g., `OPT + LEFT Arrow` = `ESC + B` to move cursor to beginning of word)

### [Atom](https://atom.io/) (text editor)
- Enable "Show Indent Guide" in settings
- **Packages:** minimap, pigments, linter, linter-htmlhint, linter-csslint, linter-eslint, atom-beautify, Sublime-Style-Column-Selection, file-icons, autocomplete-emojis, etc.

## Command Line Installations

### [Homebrew](http://brew.sh/)
- Remember to run `$ brew update && brew doctor`

### Git
- Install via Homebrew: `$ brew install git`
- Configure [author identity](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup) via `$ git config --global user.name "John Doe" && git config --global user.email johndoe@example.com`
  - Consider keeping email address [private from GitHub](https://help.github.com/articles/keeping-your-email-address-private/).
- Configure default commit message editor [as Atom](http://blog.atom.io/2014/03/13/git-integration.html)

### Node 
- Install [via Homebrew](http://blog.teamtreehouse.com/install-node-js-npm-mac): `$ brew install node`
- [n](https://github.com/tj/n) (Node version manager) via `$ npm install -g n`

### Watch command
- Install via Homebrew: `$ brew install watch`
- Use in terminal. For example: `$ watch docker-compose ps`


# Machine Config

### Mac OSX
- Set trackpad preferences
  - Force Touch trackpads need to enable 3-finger drag via [Accessibility system preferences](https://support.apple.com/en-us/HT204609).
- Keyboard settings:
  - Disable those god awful smart quotes.
  - Enable full keyboard access to activate more shortcuts [such as tabbing to move focus](http://superuser.com/questions/473143/how-to-tab-between-buttons-on-an-mac-os-x-dialog-box).
- [Show hidden files](http://ianlunn.co.uk/articles/quickly-showhide-hidden-files-mac-os-x-mavericks/) via `$ defaults write com.apple.finder AppleShowAllFiles YES`

### Bash 
- (see `.bash_profile` file in this repo)
- Add colors based on `.bash_profile` [here](http://www.justgoscha.com/programming/2014/03/22/Pimping-my-terminal.html) (customize colors with [this guide](http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim))
- Define aliases in `.bash_profile` (or create a `.bash_aliases` file that gets imported by `.bash_profile`)
  - to use repo-specific CLI tools rather than globally installing them:
    - Grunt: `alias grunt="node_modules/.bin/grunt`
    - Gulp: apparently Gulp automatically gives precedence to local Gulp install over global Gulp install, so aliasing isn't  necessary for Gulp
  - Git:
    - [Purge merged branches](http://stackoverflow.com/questions/17983068/delete-local-git-branches-after-deleting-them-on-the-remote-repo): `alias gitpurge='git branch --merged | grep -v "\*" | grep -v "master" | xargs -n 1 git branch -d'`
