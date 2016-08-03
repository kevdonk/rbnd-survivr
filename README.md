# rbnd-survivr

### Features

This gem allows you to print a string in the following colors:

red, green, yellow, blue, pink, light_blue, white, light_grey, black

### Installation
To install:
```
gem install colorizr-1.0.0.gem
```

### Usage
To use:
```
require 'colorizr'

# String.colors returns an Array of all the color options
puts String.colors

# String.sample_color prints sample output demonstrating all the color methods
String.sample_colors

# "Some text".color (color is one from the list from String.colors) to print the text in that color
"Just like this".red
```
