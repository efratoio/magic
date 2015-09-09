#!/usr/bin/env ruby
require 'active_support/all'


$arr=nil
$size
$x=0
$y=0
def pretty_print
	$arr.each do |x|
		print x

		puts ""
	end
	puts "*"*10
end

def initialize_arr
	$arr = Array.new($size)
	for i in (0...$size)
		$arr[i] = Array.new($size,0)
	end
end


def fill_square
	while next_step?



	end
end

def next_step?
	
	a = ($x+1) % $size 
	b = ($y-1) % $size 

	if $arr[b][a] == 0
		$arr[b][a] = $arr[$y][$x]+1
		$x = a
		$y = b

	else
		a = ($x)
		b = ($y+1)% $size 
		if $arr[b][a] == 0
			$arr[b][a] = $arr[$y][$x]+1
			$x = a
			$y = b

		else 
			return false
		end
	return true
	end


end

def main
	puts "Choose an odd number"
	num = gets
	until Integer(num) != nil && Integer(num) % 2 ==1 
		puts "Please pick an odd number"
		num = gets
	end
	
	$size = Integer(num)
	initialize_arr
	pretty_print
	$x = ($size/2)
	$arr[$y][$x] = 1


	fill_square
	pretty_print




end

main


