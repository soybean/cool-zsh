# cool: a zsh theme

### preview:
<img width="262" alt="Screen Shot 2023-09-25 at 11 14 43 AM" src="https://github.com/soybean/cool-zsh/assets/16643116/b41fd150-8695-4356-8732-e5a29fc5aed5">

inside many nested directories:

<img width="490" alt="Screen Shot 2023-09-25 at 11 38 02 AM" src="https://github.com/soybean/cool-zsh/assets/16643116/1768208e-d3e6-466c-9d72-ab971f093195">

## setup how-to
I'd recommend installing powerline patched fonts: https://github.com/powerline/fonts

This theme goes best with a solarized-dark terminal. (I use the VSCode-embedded terminal)

#### To install, clone the repo & move the theme into your zsh themes directory: [^1].

```console
git clone https://github.com/soybean/cool-zsh.git; cd cool-zsh; cp cool.zsh-theme ~/.oh-my-zsh/themes
```

#### Open your `.zshrc` and set the theme like so: 

```console
ZSH_THEME="cool"
```

#### Cleanup:

```console
cd ..; rm -rf cool-zsh
```

You can also experiment with other color gradients:


[^1]: path to your themes directory may vary, replace `oh-my-zsh/themes` with your path
