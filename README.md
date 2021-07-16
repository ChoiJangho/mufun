# mufun

Matlab utility functions for convenience.

## Summary

`vis`: utility functions for making plots. Recommended for making figures for the papers.

`io`: utility functions for matlab class and function's input and output handling.

## Key functionality

### Plots

`open_figure()` automatically removes unnecessary margins in the default matlab figure setting, and it sets default text interpreter to latex. It can be used in a similar way to basic matlab `figure` function.
Use `open_figure('margin', 'tight')` to get the smallest margin. 

`set_axis()` can be used to set properties of an individual axis.

`save_figure('file_name', 'cool_figure')` is used to safe a figure to a file.

Example:

```
x = 0:pi/100:2*pi;
y = sin(x);

palette = get_palette_colors();

% Use this instead of normal 'figure' function.
open_figure();
p = plot(x,y);
p.LineWidth = 1.5; p.Color = palette.blue;
% No need to set interpreter to latex manually.
xlabel('$x$');
ylabel('$\sin(x)$');
save_figure('file_name', 'simple', 'file_format', 'png');
```

### Functions

`parse_function_args(varargin)` is used to parse keyword input arguments to a matlab function.

`parse_obj_args(varargin)` is used to parse keyword input arguments to a matlab class method.

Example:
```
function output1 = example_function(input1, varargin)
if nargin >=2
  kwargs = parse_function_args(varargin{:});
end
```
