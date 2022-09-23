# Turn on vim mode on the command line
set -o vi

#actual bash things
alias ll="ls -lah"

#Edit files
alias vb="vim ~/.bashrc"
alias sb="source ~/.bashrc && echo bashrc reloaded"
alias vv="vim ~/_vimrc"
alias vvs="vim ~/.vsvimrc"
alias vg="vim ~/.gitconfig"

#Git shortcuts
alias g="git"

#Coding Shortcuts
alias cc="cd /c/code/"
alias ss="start *.sln"
alias sa="dotnet new sln && dotnet sln add ."

# Create a directory and move to it
mkcd () {
    mkdir "$1"
    cd "$1"
}
