#!/usr/bin/perl

use warnings;
use strict;
use feature ':5.10';


say "===========  Generador de Fields para Runme  ===========";
say "Por favor indique el rango de fields que necesita generar.";
print "Primer valor: ";
my $r1 = <STDIN>;

print "Segundo valr: ";
my $r2 = <STDIN>;

chomp($r1,$r2);

say "";
print "Usted eligio el rango de $r1 a $r2 es correcto\n
inidque 'y' para modificarlo, 'n' para seguir? (y/n)\n
>:";
my $eleccion = <STDIN>;

if($eleccion eq 'y'){
    say "===========  Generador de Fields para Runme  ===========";
    say "Por favor indique el rango de fields que necesita generar.";
    say "Primer valor: ";
    $r1 = <STDIN>;

    say "Segundo valr: ";
    $r2 = <STDIN>;
}

say "";
say "Generando fields ...\n";

foreach my $i($r1 ... $r2){

    if($i == 1){
        say "if (".'$'."fieldn == $i){";
        say "   my " . '$' . 'proj = "ea22101'.$i.'"';
        say "   my " . '$' . 'dir = "field'.$i.'"';
        say "   my " . '$' . "accf$i = " . '"../field' . $i .'/accounts.sms"';
        say " ";
        say '   @interviews      = Collect->read_data("../$dir/$proj.dat", "../$dir/$proj.map")';
        say '   %map_positions   = Collect->read_map("../$dir/$proj.map")';
        say '   %interviews_data = Collect->get_values(\@interviews, \%map_positions, \%set_vars, "'.$i.'")';
        say '   %accounts = Collect->read_accounts($accf'.$i.', "'.$i.'")';
        say "}";
        say "";
    }else{
      say "elsif (".'$'."fieldn == $i){";
        say "   my " . '$' . 'proj = "ea22101'.$i.'"';
        say "   my " . '$' . 'dir = "field'.$i.'"';
        say "   my " . '$' . "accf$i = " . '"../field' . $i .'/accounts.sms"';
        say " ";
        say '   @interviews      = Collect->read_data("../$dir/$proj.dat", "../$dir/$proj.map")';
        say '   %map_positions   = Collect->read_map("../$dir/$proj.map")';
        say '   %interviews_data = Collect->get_values(\@interviews, \%map_positions, \%set_vars, "'.$i.'")';
        say '   %accounts = Collect->read_accounts($accf'.$i.', "'.$i.'")';
        say "}";
        say ""; 
    }
}

