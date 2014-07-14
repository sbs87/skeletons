#!/usr/bin/perl
use strict;
use warnings;

my @array1 = ('Array_val_1', 'Array_val_2', 'Array_val_3');
my %hash1;

$hash1{"key1"}="value1";
$hash1{"key2"}="value2";

for(my $i=0; $i<10; $i++){
    print $i."\n";
}

foreach (@array1) {
    print $_."\n";
}

foreach my $pointer (sort(keys %hash1)){
    print $pointer."\n";
}

open(my $FILE1,"dummy.txt");
my %values_hash;
while(<$FILE1>){
	chomp;
	my $line=$_;
	(my $val1, my $val2)=split("\t",$line);
	my @values=split("\t",$line);
	$values_hash{@values[0]}=@values[1];

	print "first column:\t".$val1."\t";
	print "second column:\t".@values[1]."\n";
}
close($FILE1);

print "key/value pair from file, key of value11:\t".$values_hash{"line11"}."\n";
