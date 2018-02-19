#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias l='ls --color=auto'
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias chrome='chromium --disable-web-security --user-data-dir'

alias tunnelUnicorn='ssh -f -N -L 9000:127.0.0.1:3000 unicorn@192.168.1.2'
alias geth='/home/john/Repos/go-ethereum/build/bin/geth'
alias gethshell='geth attach http://localhost:8545'
alias rungeth='geth --etherbase "0x4b90aa9452061bee746faaf233e70504b6c3af88" --datadir "/home/john/Chains" --verbosity=4 --networkid=71171 --ipcdisable --port=30301 --maxpeers=0 --rpc  --rpcapi "eth,net,web3,personal" --rpcaddr="0.0.0.0" --rpcport=8545 --rpccorsdomain="http://localhost:3000" --nat "any" --nodiscover --mine --minerthreads "1" console'

alias runminio='minio server storage'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
