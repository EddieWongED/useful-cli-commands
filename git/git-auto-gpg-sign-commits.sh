# Generate a new gpg key
gpg --gen-key

# Check current keys
gpg --list-secret-keys --keyid-format LONG

# See your gpg public key
# YOUR_KEY_ID is the hash in front of `sec` in previous command.
# For example: rsa2048/B2D2BE026E4EE25C -> B2D2BE026E4EE25C is the key id
gpg --armor --export [YOUR_KEY_ID]

# Go to https://github.com/settings/keys. Click "New GPG key"
# Copy the public key and save.
# Copy from -----BEGIN PGP PUBLIC KEY BLOCK-----
# To -----END PGP PUBLIC KEY BLOCK-----

# Set a gpg key for git
git config --global user.signingkey [YOUR_KEY_ID]

# Auto-sign all commits globally
git config --global commit.gpgsign true

# Or sign only a specific commit
git commit -S -m "This is an signed commit"

# After you push the commit, you should see the commit is verified