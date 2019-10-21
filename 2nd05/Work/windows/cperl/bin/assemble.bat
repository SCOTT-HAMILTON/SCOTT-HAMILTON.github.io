@rem = '--*-Perl-*--
@echo off
if "%OS%" == "Windows_NT" goto WinNT
perl -x -S "%0" %1 %2 %3 %4 %5 %6 %7 %8 %9
goto endofperl
:WinNT
perl -x -S %0 %*
if NOT "%COMSPEC%" == "%SystemRoot%\system32\cmd.exe" goto endofperl
if %errorlevel% == 9009 echo You do not have Perl in your PATH.
if errorlevel 1 goto script_failed_so_exit_with_non_zero_val 2>nul
goto endofperl
@rem ';
#! perl
#line 15
use B::Assembler qw(assemble_fh);
use FileHandle;

=pod

=head1 NAME

assemble - Assemble Perl bytecode

=head1 SYNOPSIS

  assemble [-d] [bytecode.asm | -] [bytecode.plc]

=head1 DESCRIPTION

Compiles an ascii bytecode as produced by L<disassemble> to binary bytecode assembler.

C<bytecode> is a binary file wih either the magic 4 bytes 'PLBC'
at the start, or something like "#! /usr/bin/perl\n
use ByteLoader '0.07'", typically with the F<.plc> or F<.pmc> extension.

If filename is -, the input is read from STDIN and
you can still provide an output filename.

=head1 OPTION -d

Prints some debugging information.

=cut


my ($filename, $fh, $out);

if ($ARGV[0] eq "-d") {
    B::Assembler::debug(1);
    shift;
}

$out = \*STDOUT;

if (@ARGV == 0) {
    $fh = \*STDIN;
    $filename = "-";
} elsif (@ARGV == 1) {
    $filename = $ARGV[0];
    $fh = new FileHandle "<$filename";
} elsif (@ARGV == 2) {
    $filename = $ARGV[0];
    $fh = new FileHandle "<$filename";
    $out = new FileHandle ">$ARGV[1]";
} else {
    die "Usage: assemble [-d] [filename | -] [outfilename]\n";
}

binmode $out;
$SIG{__WARN__} = sub { warn "$filename:@_" };
$SIG{__DIE__} = sub { die "$filename: @_" };
assemble_fh($fh, sub { print $out @_ });

__END__
:endofperl
