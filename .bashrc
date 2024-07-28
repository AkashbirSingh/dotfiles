# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR="helix"
export GOPATH="$HOME/go"
export PATH=$PATH:$GOPATH/bin

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias update="yay -Syyu"
alias osu="cd /mnt/sda/osu && gamemoderun ./osu.AppImage & exit"
alias vpnc="sudo protonvpn c"
alias vpnd="sudo protonvpn d"
alias ll="ls -la"
alias dev="cd /mnt/sda/dev"
alias shell="alacritty --working-directory ./ &"
alias diffusion="/mnt/sda/llm/stable-diffusion-webui/webui.sh --xformers --listen --api --no-half --no-half-vae --lowvram --opt-split-attention --always-batch-cond-uncond"
alias llm="sh /mnt/sda/llm/text-generation-webui/start_linux.sh --gradio-auth admin:passy"

del(){
  rm -rf $1;
}

macchina

eval "$(starship init bash)"
