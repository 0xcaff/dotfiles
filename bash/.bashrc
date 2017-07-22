#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export ANDROID_EMULATOR_USE_SYSTEM_LIBS=1

# Set up NVM
# Lazily initialize nvm to keep shell start up time fast.
export NVM_DIR="$HOME/.nvm"
export NVM_SH="$NVM_DIR/nvm.sh"
source $NVM_SH

# https://github.com/creationix/nvm/issues/860
declare -a NODE_GLOBALS=(`find $NVM_DIR/versions/node -maxdepth 3 -type l -wholename '*/bin/*' | xargs -n1 basename | sort | uniq`)

NODE_GLOBALS+=("node")
NODE_GLOBALS+=("nvm")

load_nvm () {
    # echo "Loading NVM..."
    [ -s "$NVM_SH" ] && source "$NVM_SH"
    # echo "Loaded NVM"
}

unhook_nvm_load () {
    # echo "Unhooking NVM Lazy Loader"
    for cmd in "${NODE_GLOBALS[@]}"; do
        unset -f "${cmd}"
    done
    # echo "Unhooked NVM Lazy Loader"
}

for cmd in "${NODE_GLOBALS[@]}"; do
    eval "function ${cmd} () { unhook_nvm_load; load_nvm; ${cmd} \$@; }"
done

export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin
