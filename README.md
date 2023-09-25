# cool: a zsh theme

### preview:
<img width="262" alt="Screen Shot 2023-09-25 at 11 14 43 AM" src="https://github.com/soybean/cool-zsh/assets/16643116/b41fd150-8695-4356-8732-e5a29fc5aed5">

### setup how-to
I'd recommend installing powerline patched fonts: https://github.com/powerline/fonts

This theme goes best with a solarized-dark terminal. (I use the VSCode-embedded terminal)

To install, clone the repo & move the theme into your zsh themes directory: 

```console
git clone https://github.com/soybean/cool-zsh.git; cd cool-zsh; cp cool.zsh-theme ~/.oh-my-zsh/themes
```

Open your `.zshrc` and set the theme like so: 

```console
ZSH_THEME="cool"
```

Cleanup:

```console
cd ..; rm -rf cool-zsh
```



