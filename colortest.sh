# for checking terminal colors settings
tmp="$(seq 0 7)" # 0 TO 7 INCLUSIVELY, read without "" to keep as separate words
printf "        "
for b in ${tmp}; do printf "   4${b}m "; done
echo
for f in "" 30 31 32 33 34 35 36 37; do
    for s in "" "1;"; do
        printf "%4sm" "${s}${f}"
        printf " \033[%sm%s\033[0m" "${s}${f}" "gYw "
        for b in ${tmp}; do
            printf " \033[4%s;%sm%s\033[0m" "$b" "${s}${f}" " gYw "
        done
        echo
    done
done
