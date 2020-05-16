# Janet Layer for Spacemacs

The [Janet language][0] is a functional and imperative programming language that runs on Windows, Linux, MacOS, BSDs and should run on many other systems with just a little porting. This layer integrates the [Janet major mode][1] and the [interactive Janet mode][2] with Spacemacs.

If you find this layer at all useful, please feel free to...

<a href="https://www.buymeacoffee.com/cmiles74" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>

## Installation

First, make sure you have Janet installed and available on your path. There are instructions and binaries available on [the Janet website][0].

To use this layer, clone it into the `private` directory in your `.emacs.d` directory.

    git clone  https://github.com/cmiles74/spacemacs-janet-layer ~/.emacs.d/private/janet
    
After that, add `janet` to your list of layers in your `.spacemacs` file.

## Keybindings

| Key Binding | Description                               |
|-------------|-------------------------------------------|
| C-c M-j     | Start an interactive Janet session (REPL) |
| C-c C-c     | Send the definition at point to the REPL  |
| C-c C-l     | Send the line at point to the REPL        |
| C-c C-r     | Send the selected region to the REPL      |
| C-c C-b     | Send the current buffer to the REPL       |

## Future Development

Pull requests are always welcome! `:-D`

[0]: https://janet-lang.org/
[1]: https://github.com/ALSchwalm/janet-mode
[2]: https://github.com/SerialDev/ijanet-mode
