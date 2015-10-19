# Installations

## Downloads

- Google Chrome
  - [Advanced REST Client](https://chrome.google.com/webstore/detail/advanced-rest-client/hgmloofddffdnphfgcellkdfbfbjeloo?hl=en-US) (extension)
  - Maybe disable cache while DevTools is open (in DevTools settings)
  - Maybe disable "prefetch resources" (in advanced settings)
  - Configure browser startup to "continue where you left off"
- Mozilla Firefox Developer Edition
  - Maybe enable tracking protection (in `about:config` settings)
  - Configure browser startup to "show windows and tabs from last time"
  - Maybe also install normal Firefox for testing frameworks to use
- [SizeUp](http://www.irradiatedsoftware.com/sizeup/) (Mac OS window manager)
- [iTerm2](https://www.iterm2.com/)
- [Atom](https://atom.io/) (text editor)
  - Install packages: minimap, pigments, linter, linter-htmlhint, linter-csslint, linter-jshint, etc.
  - Enable "Show Indent Guide" in settings
- [Git](https://git-scm.com/)

## Command Line Installations

- [Homebrew](http://brew.sh/)
  - Remember to run `$ brew update && brew doctor`
- Node [via Homebrew](http://blog.teamtreehouse.com/install-node-js-npm-mac) (via `$ brew install node`)
  - [n](https://github.com/tj/n) (Node version manager) via `$ npm install -g n`

# Config

- iTerm2
  - Set left `option` key to act as `+Esc`
  - Set working directory to "Reuse previous session's directory"
- Bash
  - Add colors based on `.bash_profile` [here](http://www.justgoscha.com/programming/2014/03/22/Pimping-my-terminal.html) (customize colors with [this guide](http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim))
  - Define aliases in `.bash_profile` (or create a `.bash_aliases` file that gets imported by `.bash_profile`) to use repo-specific CLI tools rather than globally installing them.
    - e.g., `alias gulp="node_modules/.bin/gulp`
