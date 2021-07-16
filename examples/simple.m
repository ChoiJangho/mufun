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