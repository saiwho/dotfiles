# Create directories if not available
if [ ! -d "$HOME/Extras/" ]; then
    mkdir -p "$HOME/Extras/"
    mkdir -p "$HOME/Extras/enc-mounts"
    mkdir -p "$HOME/Extras/drive"
fi

# Mount google drive and Go to it
google-drive-ocamlfuse "$HOME/Extras/drive"
cd "$HOME/Extras/drive"

# Decrypt the directory and mount
gocryptfs Obsidian_Backup "$HOME/Extras/enc-mounts"

# Copy the contents
cp -r "$HOME/Documents/Obsidian_Documents/saipj/" "$HOME/Extras/enc-mounts"

# Unmount drive and encrypted directory
fusermount -u "$HOME/Extras/enc-mounts/"
sleep 5
fusermount -u "$HOME/Extras/drive/"
