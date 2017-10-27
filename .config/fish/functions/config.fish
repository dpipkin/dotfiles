function config
	/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $argv;
end

function bx
  bundle exec $argv;
end

function bigheap
  set -lx JRUBY_OPTS='-J-Xmx2g' $argv;
end
