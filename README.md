Conrad's fork of the great work started (and continued) by @drewbarontini. Original readme below.

# Dotfiles

My personal dotfiles covering a wide range of development and macOS settings.

```shell
git clone git@github.com:conrad-vanl/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

```shell
rake install                              # Install conrad-vanl/dotfiles
rake install:cleanup                      # Clean up after installation
rake install:command_line_tools           # Install XCode command line tools
rake install:gems                         # Install Ruby gems
rake install:git_submodules               # Install git submodules
rake install:homebrew                     # Install Homebrew for managing dev packages
rake install:brewfile                     # Install Homebrew packages and Mac apps
rake install:macos_settings               # Install custom macOS settings and configuration
rake install:npm_packages                 # Install NPM packages
rake install:nvm                          # Install NVM for managing Node versions
rake install:outliers                     # (INACTIVE) Install outlier applications
rake install:pow                          # (INACTIVE) Install Pow for Rails URLs in dev
rake install:rbenv                        # Install rbenv for managing Ruby versions
rake install:symlinks                     # Create symlinks
rake install:terminal_italics             # Install Terminal italics
rake install:tmux_plugin_manager          # Install tpm for managing Tmux plugins
rake install:visual_studio_code_settings  # Install Visual Studio Code settings
rake install:vundle                       # Install Vundle for managing Vim plugins
rake update                               # Update conrad-vanl/dotfiles
```
