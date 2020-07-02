if [ -f "${HOME}/.bashrc" ]; then
  source "${HOME}/.bashrc"
fi

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    source $HOME/.bash-git-prompt/gitprompt.sh
else
    echo "Install bash-git-prompt: https://github.com/magicmonty/bash-git-prompt"
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc' ]; then . '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc' ]; then . '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc'; fi

eval `keychain --eval --agents ssh id_rsa`
