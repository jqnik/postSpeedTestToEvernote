pre=`geeknote show --note "speedtest results"|sed '/-- CONTENT ---/,$!d'|sed 's/.*-- CONTENT ---.*//'`
res=`./speedtest_cli.py --simple`
dt=`date`
new=`printf "%s\n\n%s\n%s" "$pre" "$dt" "$res"`
geeknote edit --note "speedtest results" --content "$new"

