function co
	clang++ -std=c++17 -O2 -o "$argv[1].out" $argv[1] -Wall;
end

function run
	co $argv[1];
	cat $argv[2] | ./"$argv[1].out"
end