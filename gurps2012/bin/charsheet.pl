#!/usr/bin/perl

use strict;
use warnings;
use utf8;

my $st;
my $dx;
my $iq;
my $ht;

my $hp;
my $fp;
my $will;
my $perc;
my $basic_speed;
my $dodge;
my $basic_move;

my $points;


my $dmg_table_thrust = [ undef,
    [1,-6], [1,-6], [1,-5], [1,-5], [1,-4],
    [1,-4], [1,-3], [1,-3], [1,-2], [1,-2],
    [1,-1], [1,-1], [1,+0], [1,+0], [1,+1],
    [1,+1], [1,+2], [1,+2], [2,-1], [2,-1],
];

my $dmg_table_swing = [ undef,
    [1,-5], [1,-5], [1,-4], [1,-4], [1,-3],
    [1,-3], [1,-2], [1,-2], [1,-1], [1,+0],
    [1,+1], [1,+2], [2,-1], [2,+0], [2,+1],
    [2,+2], [3,-1], [3,+0], [3,+1], [3,+2],
];

sub read_sheet {
    while (<>) {
        /\bST:.*?#(\d+)/ and $st = int(10 + $1/10);
        /\bDX:.*?#(\d+)/ and $dx = int(10 + $1/20);
        /\bIQ:.*?#(\d+)/ and $iq = int(10 + $1/20);
        /\bHT:.*?#(\d+)/ and $ht = int(10 + $1/10);
    }
}
