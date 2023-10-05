#! /bin/zsh

for file in ${HOME}/.ssh/id_*; do
    [[ -e "${file}" ]] || continue
    if [[ "$file" != *.pub ]]
    then
        ssh-add -K $file
    fi
done
ssh-add -l
