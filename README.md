# cool: a zsh theme

### preview:

<img width="229" alt="Screen Shot 2023-09-25 at 1 56 23 PM" src="https://github.com/soybean/cool-zsh/assets/16643116/7d4e993b-3ef5-4365-81cd-4d2879607dac">

## setup how-to
I'd recommend installing powerline patched fonts: https://github.com/powerline/fonts

This theme goes best with a solarized-dark terminal. (I use VSCode & set the color theme of my editor to solarized dark)

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

<img width="499" alt="Screen Shot 2023-09-25 at 11 47 38 AM" src="https://github.com/soybean/cool-zsh/assets/16643116/c8938b0d-4652-4960-b388-2c32067c136a">

<img width="470" alt="Screen Shot 2023-09-25 at 11 50 03 AM" src="https://github.com/soybean/cool-zsh/assets/16643116/ce6060e5-e826-4472-b716-465417887ea0">


If you'd like to customize the colors yourself, run this block of code in your terminal & you'll see the full 256 terminal colors:

```console
for COLOR in {0..255} 
do
    for STYLE in "38;5"
    do
        TAG="\033[${STYLE};${COLOR}m"
        STR="${STYLE};${COLOR}"
        echo -ne "${TAG}${STR}${NONE}  "
    done
    echo
done
```

output:

<img width="72" alt="Screen Shot 2023-09-25 at 11 43 05 AM" src="https://github.com/soybean/cool-zsh/assets/16643116/1abfc01a-c82d-406b-89b1-9c639f7d4d0b">



[^1]: path to your themes directory may vary, replace `oh-my-zsh/themes` with your path
