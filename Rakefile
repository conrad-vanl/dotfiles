# ====================================
#   Variables
# ====================================

# ----- Versions ----- #

global_ruby_version = '2.2.3'
global_node_version = '5.0.0'

# ----- Original Locations ----- #

original_locations                   = {}
original_locations[:ackrc]           = "#{ ENV['HOME'] }/.dotfiles/ack/ackrc"
original_locations[:agignore]        = "#{ ENV['HOME'] }/.dotfiles/ag/agignore"
original_locations[:atom]            = "#{ ENV['HOME'] }/.dotfiles/atom"
original_locations[:bash_directory]  = "#{ ENV['HOME'] }/.dotfiles/bash"
original_locations[:bash_powerline]  = "#{ ENV['HOME'] }/.dotfiles/bash/partials/prompt-powerline"
original_locations[:bash_profile]    = "#{ ENV['HOME'] }/.dotfiles/bash/bash_profile"
original_locations[:bundle]          = "#{ ENV['HOME'] }/.dotfiles/bundle/config"
original_locations[:gemrc]           = "#{ ENV['HOME'] }/.dotfiles/gem/gemrc"
original_locations[:gitconfig]       = "#{ ENV['HOME'] }/.dotfiles/git/gitconfig"
original_locations[:gitconfig_local] = "#{ ENV['HOME'] }/.dotfiles-local/git/gitconfig"
original_locations[:gitignore]       = "#{ ENV['HOME'] }/.dotfiles/git/gitignore"
original_locations[:gvimrc]          = "#{ ENV['HOME'] }/.dotfiles/vim/gvimrc"
original_locations[:inputrc]         = "#{ ENV['HOME'] }/.dotfiles/bash/inputrc"
original_locations[:rspec]           = "#{ ENV['HOME'] }/.dotfiles/rspec/rspec"
original_locations[:tmux_conf]       = "#{ ENV['HOME'] }/.dotfiles/tmux/tmux.conf"
original_locations[:tmuxline_conf]   = "#{ ENV['HOME'] }/.dotfiles/tmux/tmuxline_snapshot"
original_locations[:vim]             = "#{ ENV['HOME'] }/.dotfiles/vim"
original_locations[:vimrc]           = "#{ ENV['HOME'] }/.dotfiles/vim/vimrc"

# ----- New Locations ----- #

new_locations                   = {}
new_locations[:ackrc]           = "#{ ENV['HOME'] }/.ackrc"
new_locations[:agignore]        = "#{ ENV['HOME'] }/.agignore"
new_locations[:atom]            = "#{ ENV['HOME'] }/.atom"
new_locations[:bash_directory]  = "#{ ENV['HOME'] }/.bash"
new_locations[:bash_powerline]  = "#{ ENV['HOME'] }/.bash-powerline.sh"
new_locations[:bash_profile]    = "#{ ENV['HOME'] }/.bash_profile"
new_locations[:bundle]          = "#{ ENV['HOME'] }/.bundle/config"
new_locations[:gemrc]           = "#{ ENV['HOME'] }/.gemrc"
new_locations[:gitconfig]       = "#{ ENV['HOME'] }/.gitconfig"
new_locations[:gitconfig_local] = "#{ ENV['HOME'] }/.gitconfig.local"
new_locations[:gitignore]       = "#{ ENV['HOME'] }/.gitignore"
new_locations[:gvimrc]          = "#{ ENV['HOME'] }/.gvimrc"
new_locations[:inputrc]         = "#{ ENV['HOME'] }/.inputrc"
new_locations[:rspec]           = "#{ ENV['HOME'] }/.rspec"
new_locations[:tmux_conf]       = "#{ ENV['HOME'] }/.tmux.conf"
new_locations[:tmuxline_conf]   = "#{ ENV['HOME'] }/.tmuxline_snapshot"
new_locations[:vim]             = "#{ ENV['HOME'] }/.vim"
new_locations[:vimrc]           = "#{ ENV['HOME'] }/.vimrc"

# ----- Installation Order ----- #

current_step = 0

installation_order = [
  'install_git_submodules',
  'install_symlinks',
  'install_vim',
  'install_rbenv',
  'install_global_ruby',
  'install_homebrew',
  'install_homebrew_packages',
  'install_tmux_plugin_manager',
  'install_global_node',
  'install_npm_packages',
  'install_gems',
  'install_osx_settings',
  'install_cask',
  'install_mas_apps',
  'install_outliers',
  'install_sublime_text_settings',
  'install_pow',
  'install_cleanup'
]

# ====================================
#   Installation Start
# ====================================

task :install do
  puts '---------------------------------------------'
  puts ' drewbarontini/dotfiles Installation'
  puts " --> Type 'start'"
  puts '---------------------------------------------'

  hush_login_file = "#{ ENV['HOME'] }/.hushlogin"

  unless File.exist?(hush_login_file)
    system "touch #{ hush_login_file }"
  end

  run installation_order[current_step] if response?('start')
end

# ====================================
#   Install Git Submodules
# ====================================

task :install_git_submodules, :run do |task, args|
  current_step = current_step + 1

  prompt 'submodules'

  if response?('y')
    message 'Installing git submodules...'

    system 'git submodule init'
    system 'git submodule update'

    run installation_order[current_step] unless args[:run] == 'single'
  end
end

# ====================================
#   Install Symlinks
# ====================================

task :install_symlinks, :run do |task, args|
  current_step = current_step + 1

  prompt 'symlinks'

  if response?('y')
    message 'Symlinking files...'

    create_symlinks(original_locations, new_locations)

    run installation_order[current_step] unless args[:run] == 'single'
  end
end

# ====================================
#   Install Vim
# ====================================

task :install_vim, :run do |task, args|
  current_step = current_step + 1

  prompt 'Vim'

  if response?('y')
    message 'Installing Vundle...'

    vundle_directory = "#{ ENV['HOME'] }/.vim/bundle/Vundle.vim"

    unless File.exists?(vundle_directory)
      system "git clone https://github.com/VundleVim/Vundle.vim.git #{ vundle_directory }"
      puts "Done! Run ':PluginInstall' in Vim to install plugins."
    else
      puts "#{ vundle_directory } already exists. Contining.."
    end

    run installation_order[current_step] unless args[:run] == 'single'
  end
end

# ====================================
#   Install rbenv
# ====================================

task :install_rbenv, :run do |task, args|
  current_step = current_step + 1

  prompt 'rbenv'

  if response?('y')
    message 'Installing rbenv...'

    system 'bash setup/rbenv'

    run installation_order[current_step] unless args[:run] == 'single'
  end
end

# ====================================
#   Install Global Ruby
# ====================================

task :install_global_ruby, :run do |task, args|
  current_step = current_step + 1

  prompt 'global ruby'

  if response?('y')
    message "Installing Ruby #{ global_ruby_version }..."

    system "rbenv install #{ global_ruby_version }"
    system "rbenv rehash"
    system "rbenv global #{ global_ruby_version }"

    run installation_order[current_step] unless args[:run] == 'single'
  end
end

# ====================================
#   Install Homebrew
# ====================================

task :install_homebrew, :run do |task, args|
  current_step = current_step + 1

  prompt 'Homebrew'

  if response?('y')
    message 'Installing Homebrew...'

    system 'ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'

    run installation_order[current_step] unless args[:run] == 'single'
  end
end

# ====================================
#   Install Homebrew Packages
# ====================================

task :install_homebrew_packages, :run do |task, args|
  current_step = current_step + 1

  prompt 'Homebrew Packages'

  if response?('y')
    message 'Installing Homebrew Packages...'

    system 'bash setup/brew'

    run installation_order[current_step] unless args[:run] == 'single'
  end
end

# ====================================
#   Install Tmux Plugin Manager
# ====================================

task :install_tmux_plugin_manager, :run do |task, args|
  current_step = current_step + 1

  prompt 'Tmux Plugin Manager'

  if response?('y')
    message 'Installing Tmux Plugin Manager...'

    tpm_directory = "#{ ENV['HOME'] }/.tmux/plugins/tpm"

    unless File.exists?(tpm_directory)
      system 'git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm'
      puts "Done! Run 'Prefix + I' in Tmux to install plugins."
    else
      puts "#{ tpm_directory } already exists. Contining.."
    end

    run installation_order[current_step] unless args[:run] == 'single'
  end
end

# ====================================
#   Install Global Node
# ====================================

task :install_global_node, :run do |task, args|
  current_step = current_step + 1

  nvm_directory = "#{ ENV['HOME'] }/.nvm"

  prompt 'NVM'

  if response?('y')
    message "Installing Node #{ global_node_version }..."

    unless File.exists?(nvm_directory)
      system 'mkdir ~/.nvm'
      system "nvm install #{ global_node_version }"
      system "nvm alias default v#{ global_node_version }"
    end

    run installation_order[current_step] unless args[:run] == 'single'
  end
end

# ====================================
#   Install NPM Packages
# ====================================

task :install_npm_packages, :run do |task, args|
  current_step = current_step + 1

  prompt 'NPM Packages'

  if response?('y')
    message 'Installing NPM Packages...'

    system 'bash setup/npm'

    run installation_order[current_step] unless args[:run] == 'single'
  end
end

# ====================================
#   Install Gems
# ====================================

task :install_gems, :run do |task, args|
  current_step = current_step + 1

  prompt 'Ruby Gems'

  if response?('y')
    message 'Installing Ruby Gems...'

    system 'bash setup/gems'

    run installation_order[current_step] unless args[:run] == 'single'
  end
end

# ====================================
#   Install OS X Settings
# ====================================

task :install_osx_settings, :run do |task, args|
  current_step = current_step + 1

  prompt 'OS X Settings'

  if response?('y')
    message 'Installing OS X Settings...'

    system 'bash setup/osx'

    run installation_order[current_step] unless args[:run] == 'single'
  end
end

# ====================================
#   Install Cask
# ====================================

task :install_cask, :run do |task, args|
  current_step = current_step + 1

  prompt 'Cask & Applications'

  if response?('y')
    message 'Installing Cask & Applications...'

    system 'bash setup/cask'

    run installation_order[current_step] unless args[:run] == 'single'
  end
end

# ====================================
#   Install MAS Apps
# ====================================

task :install_mas_apps, :run do |task, args|
  current_step = current_step + 1

  prompt 'Mac App Store Apps'

  if response?('y')
    message 'Installing Mac App Store apps...'

    system 'bash setup/mas-apps'

    run installation_order[current_step] unless args[:run] == 'single'
  end
end

# ====================================
#   Install Outliers
# ====================================

task :install_outliers, :run do |task, args|
  current_step = current_step + 1

  prompt 'Outlier Applications'

  if response?('y')
    message 'Installing Outlier Applications...'

    system 'bash setup/outliers'

    run installation_order[current_step] unless args[:run] == 'single'
  end
end

# ====================================
#   Install Sublime Text Settings
# ====================================

task :install_sublime_text_settings, :run do |task, args|
  current_step = current_step + 1

  prompt 'Sublime Text Settings'

  if response?('y')
    message 'Installing Sublime Text Settings...'

    system 'bash setup/sublime'
    system 'defaults write com.sublimetext.2 ApplePressAndHoldEnabled -bool false'

    message "Now, install Package Control. Type 'next' when you are ready."

    if response?('next')
       run installation_order[current_step] unless args[:run] == 'single'
    end
  end
end

# ====================================
#   Install Pow
# ====================================

task :install_pow, :run do |task, args|
  current_step = current_step + 1

  prompt 'Pow'

  if response?('y')
    message 'Installing Pow...'

    system 'curl get.pow.cx | sh'

    run installation_order[current_step] unless args[:run] == 'single'
  end
end

# ====================================
#   Install Cleanup
# ====================================

task :install_cleanup do
  system "source #{ ENV['HOME'] }/.bash_profile"
  puts "Done! Run 'open ~/.dotfiles' to see your new files."
end

# ====================================
#   Install Command Line Tools
# ====================================

task :install_command_line_tools do
  prompt 'Command Line Tools'

  if response?('y')
    message 'Installing Command Line Tools...'

    system 'xcode-select --install'
  end
end

# Prints out a message to the console
#
# == Parameters
#
# @param string [String] the string to print out
#
# == Usage
#
#   message 'This is a message to show.'
#
def message(string)
  puts
  puts "--> #{ string }"
end

# Prints out a message prompt for the user
#
# == Parameters
#
# @param section [String] the section to ask about
#
# == Usage
#
#   prompt 'Command Line Tools'
#
def prompt(section)
  puts
  puts '---------------------------------------------'
  puts " Ready to install #{ section }? [y|n]"
  puts '---------------------------------------------'
end

# Determines the user's response
#
# == Parameters
#
# @param value [String] the response that is expected
#
# == Usage
#
#   if response?('yes')
#     # ...
#   end
#
def response?(value)
  STDIN.gets.chomp == value ? true : false
end

# Runs a particular Rake task
#
# == Parameters
#
# @param task [String] the task to run
#
# == Usage
#
#   run 'install_homebrew'
#
def run(task)
  Rake::Task[task].invoke
end

# Determines if a symlink can be made
#
# == Parameters
#
# @param destination_path [String] the destination of the symlink
#
# == Usage
#
#   if can_symlink?(destination_path)
#     # ...
#   end
#
def can_symlink?(destination_path)
  File.exists?(destination_path) ? false : true
end

# Creates all of the specified symlinks
#
# == Parameters
#
# @param original_locations [Hash] set of original locations
# @param new_locations [Hash] set of new locations
#
# == Usage
#
#   create_symlinks(original_locations, new_locations)
#
def create_symlinks(original_locations, new_locations)
  (0..original_locations.count - 1).each do |index|
    old = original_locations[ original_locations.keys[index] ]
    new = new_locations[ new_locations.keys[index] ]

    if can_symlink?(new)
      File.symlink(old, new)
      puts "#{ old } -> #{ new } symlink created."
    else
      puts "#{ new } already exists. Continuing..."
    end
  end
end
