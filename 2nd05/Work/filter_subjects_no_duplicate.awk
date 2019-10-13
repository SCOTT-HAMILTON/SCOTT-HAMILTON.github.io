BEGIN{
isin=0
line=0
}
{
isin=0
for(x in dis)
    if (dis[x] == $2)
       isin=1
if (!isin)
	print $2
dis[line]=$2
line++
}
