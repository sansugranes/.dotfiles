if status is-interactive
    # Commands to run in interactive sessions can go here
end

#function fish_greeting
#    echo (set_color black)"███"(set_color red)"███"(set_color green)"███"(set_color yellow)"███"(set_color blue)"███"(set_color magenta)"███"(set_color cyan)"███"(set_color white)"███"
#end

function fish_greeting
    # set sssa (math $COLUMNS / 8)
    # set modu (math $COLUMNS % 8)
    # set prom ""
    # for x in (seq (math $sssa + $modu))
    #     set prom $prom(set_color black)"█"
    # end
    # for x in (seq $sssa)
    #     set prom $prom(set_color red)"█"
    # end
    # for x in (seq $sssa)
    #     set prom $prom(set_color green)"█"
    # end
    # for x in (seq $sssa)
    #     set prom $prom(set_color yellow)"█"
    # end
    # for x in (seq $sssa)
    #     set prom $prom(set_color blue)"█"
    # end
    # for x in (seq $sssa)
    #     set prom $prom(set_color magenta)"█"
    # end
    # for x in (seq $sssa)
    #     set prom $prom(set_color cyan)"█"
    # end
    # for x in (seq $sssa)
    #     set prom $prom(set_color white)"█"
    # end
    # echo $prom
end
if [ "$TERM" = "linux" ]
    set -gx TERM xterm-256color
end
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'
alias tms='~/.cargo/bin/tms'
