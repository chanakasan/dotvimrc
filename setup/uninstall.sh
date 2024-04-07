this_dir=$(dirname $0)

if [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" ]]; then
    bash $this_dir/uninstall-win.sh
else
    bash $this_dir/uninstall-nix.sh
fi
