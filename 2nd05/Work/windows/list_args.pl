print "args : [";
foreach $argnum (0 .. $#ARGV) {
    print "'$ARGV[$argnum]',";
}
print "]\n";