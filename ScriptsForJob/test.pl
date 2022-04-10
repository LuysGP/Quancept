#!/usr/bin/perl

use feature ':5.10';

my $i = 2;
my $proj ='%accounts = Collect->read_accounts($accf'.$i.', "'.$i.'")';
say $proj;