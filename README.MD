## these are my dotfiles. 

these are what i want in my machines...

### STEP 1: install the basic software
-  zsh
-  tmux
-  vim
-  sshconfig
-  gitconfig


### STEP 2: software configuration
 - option 1 (easy)
    - clone a dotfiles repo and delete/symlink/copy-paste with cloned dotfiles
    - or rsync / get from an existing setup somewhere in the cloud
 - option 2 (slightly harder)
    - read a config file with which files you want
    - solves issue with dotfiles missing (leave it up to user)

### STEP 3: server-dev setup
   - sdev (server for dev) should have old ssh keys
      - transport encrypted the private ssh keys (see https://www.shellhacks.com/encrypt-decrypt-file-password-openssl/) 
      - decrypt ssh keys
   - sdev should have my hosts files (list of server IP's) otherwise we would need to reconstruct everything
