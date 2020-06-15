# make install, make init. keeps it simple.
export PATH := ${HOME}/.local/bin:${HOME}/.node_modules/bin:${HOME}/.cargo/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/bin/core_perl:${HOME}/bin:${HOME}/google-cloud-sdk/bin

nodeinstall: ## Install node packages
	sudo pacman -S yarn
	mkdir -p ${HOME}/.node_modules
	yarn global add babel-eslint
	yarn global add bash-language-server
	yarn global add esbuild-linux-64
	yarn global add eslint
	yarn global add eslint-cli
	yarn global add eslint-config-vue
	yarn global add eslint-plugin-react
	yarn global add eslint-plugin-vue@next
	yarn global add heroku
	yarn global add javascript-typescript-langserver
	yarn global add jshint
	yarn global add logo.svg
	yarn global add ngrok
	yarn global add now
	yarn global add prettier
	yarn global add parcel-bundler
	yarn global add typescript-language-server
	yarn global add @vue/cli
	yarn global add vue-language-server
	yarn global add webpack

neovim:
	mkdir -p ${HOME}/.config/nvim
	ln -vsf ${PWD}/.config/nvim/init.vim ${HOME}/.config/nvim/init.vim
	ln -vsf ${PWD}/.config/nvim/installer.sh ${HOME}/.config/nvim/installer.sh
	bash ${HOME}/.config/nvim/installer.sh ${HOME}/.config/nvim
	sudo ln -vsf ${PWD}/usr/share/applications/nvim.desktop /usr/share/applications/nvim.desktop


install:
    brew install tmux sshfs vim zsh ack rg wireshark neovim

init: 	
	ln -vsf ${PWD}/.tmux.conf ${HOME}/.tmux.conf
	ln -vsf ${PWD}/.zshrc ${HOME}/.zshrc
	ln -vsf ${PWD}/.vimrc ${HOME}/.vimrc
	ln -vsf ${PWD}/.bashrc ${HOME}/.bashrc
	ln -vsf ${PWD}/.npmrc ${HOME}/.npmrc
	ln -vsf ${PWD}/.zshrc ${HOME}/.zshrc
	ln -vsf ${PWD}/.vimrc ${HOME}/.vimrc
	ln -vsf ${PWD}/.bashrc ${HOME}/.bashrc
	ln -vsf ${PWD}/.npmrc ${HOME}/.npmrc
