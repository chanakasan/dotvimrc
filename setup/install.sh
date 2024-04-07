this_dir=$(dirname $0)

if [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" ]]; then
    bash $this_dir/install-win.sh
else
    bash $this_dir/install-nix.sh
fi
