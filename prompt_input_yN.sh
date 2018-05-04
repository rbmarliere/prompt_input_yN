#!/bin/sh

prompt_input_yN()
{
    printf "$1? [y|N] " ; shift
    while true; do
        read YN
        case ${YN} in
            [Yy]* ) printf "\n"; return 0; break;;
            '' ) return 1; break;;
            * ) printf "\n"; return 1; break;;
        esac
    done
}

