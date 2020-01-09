_sn() {
    local cur opts
    COMPREPLY=()
    if [ "$COMP_CWORD" == 1 ]
    then
      cur="${COMP_WORDS[COMP_CWORD]}"
      opts="--help --version artifacts clean directories fat files help parallel sort update"

      # shellcheck disable=2207
      COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
    else
      cur="${COMP_WORDS[COMP_CWORD]}"
      opts="$(ls)"

      # shellcheck disable=2207
      COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
    fi
}
complete -F _sn sn
