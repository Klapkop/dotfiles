if [ -d /usr/local/go/bin ]; then
	export PATH="/usr/local/go/bin:$PATH"
fi

if [ -d $HOME/go/bin ]; then
        export PATH="$HOME/go/bin:$PATH"
fi

