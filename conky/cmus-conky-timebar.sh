if cmus-remote -Q &>/dev/null ; then
    DUR=$( cmus-remote -Q | grep "duration" | cut -c10- )
    POS=$( cmus-remote -Q | grep "position" | cut -c10- )
    echo "($POS/$DUR)*100" | bc -l
fi
