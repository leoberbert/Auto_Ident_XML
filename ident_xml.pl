#!/usr/bin/perl

use strict;
use warnings;

my $xml = '';
while (<STDIN>) { $xml .= $_; }

$xml =~ s|>[\n\s]+<|><|gs;
$xml =~ s|><|>\n<|gs;

my $indent = 0;

for my $x (split /\n/, $xml) {

  if ($x =~ m|^</|) { $indent--; }

  print '  'x$indent, $x, "\n";

  if ($x =~ m|^<[^/\?]|) { $indent++; } 
  if ($x =~ m|^<[^/][^>]*>[^<]*</|) { $indent--; } 
  if ($x =~ m|^<[^/][^>]*/>|) { $indent--; } 

}
