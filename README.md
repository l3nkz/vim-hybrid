# hybrid Color Scheme

Dark VIM color scheme forked from [vim-hybrid](https://github.com/w0ng/vim-hybrid "w0ng/vim-hybrid") with additional
settings and lots of clean ups.


## Installation

The best way to install it is to use any of the available plugin managers for VIM. When you are using
[Vundle](https://github.com/VundleVim/Vundle.vim "Vundle") installing this color scheme can be done with the following
command in your vimrc.

```vimrc
" hybrid color scheme plugin
Plugin "l3nkz/vim-hybrid"
```

## Usage

Using the color scheme is even simpler than installing it. You only need to put the following settings in your vimrc.

```vimrc
" Select your background setting (dark|light)
set background = dark

" Load the color scheme
colorscheme hybrid
```

## Settings

The color scheme currently has two knobs which can be tuned.

### g:hybrid_use_reduced_contrast

When this setting is set to 1 (default is 0) the color scheme uses colors with a reduced contrast in the GUI version
of VIM.


### g:hybrid_use_term_colors

When this setting is set to 1 (default is 1) the color scheme will use the colors defined by your terminal instead 
of self defined ones.


## Plugin Support

The color scheme also contains highlighting options for other VIM plugins so that they properly work together with
the overall color scheme.

Supported plugins:
* [YouCompleteMe](https://github.com/Valloric/YouCompleteMe "Valloric/YouCompleteMe") - highlighting for errors and warnings


## License

This plugin is licensed under MIT license.
