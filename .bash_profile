
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source ~/.nvm/nvm.sh

export XCODE_BUILD=$"$HOME/Library/Developer/Xcode/DerivedData"
export ANDROID_HOME="/Users/apple/Library/Android/sdk"
export BASH_HOME=~/.bash_profile
export PATH=$PATHexport PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PATH="~/Daemon/$PATH"

# Colors
export CLICOLOR=1
export GREP_OPTIONS='--color=auto'



export DEVELOP="~/Developer"

alias debugunity='adb logcat Unity:V Androidruntime:E  *:S'
alias bashstart='source ~/.bash_profile'
alias develop='cd ~/Developer'
alias rct='cd ~/'
alias adbclear='adb logcat -c'
alias dos2unixcd='find . -type f -exec dos2unix {} \;'
PATH=$PATH:/opt/metasploit-framework/bin
export PATH=$PATH:/opt/metasploit-framework/bin
export GOPATH="$HOME/gocode"
