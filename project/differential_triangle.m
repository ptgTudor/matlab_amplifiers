function differential_triangle(A1, f1, A2, f2, R1, R2, R3, R4)

f1 = 100; % frequency
f2 = 100; % frequency

% graph
Fig = figure('Name', 'Differential amplifier',...
'Units', 'normalized', ...
'Position', [0.1 0.1 0.8 0.8], ...
'Color', [0.7 0.8 0.9], ...
'NumberTitle', 'off');

% label A1
uicontrol('Style', 'text', ...
'Units', 'normalized', ...
'Position', [0.87 0.95 0.1 0.04], ...
'String', 'A1 - Input 1 amplitude [V]', ...
'backgroundcolor', [0.1 0.5 0.9]);

% edit A1
uicontrol('Style', 'edit', ...
'Units', 'normalized', ...
'Position', [0.87 0.9 0.1 0.04], ...
'String', A1, ...
'Callback', 'A1 = str2num(get(gco,''string'')), close; differential_triangle(A1, f1, A2, f2, R1, R2, R3, R4);');

% label A2
uicontrol('Style', 'text', ...
'Units', 'normalized', ...
'Position', [0.87 0.85 0.1 0.04], ...
'String', 'A2 - Input 2 amplitude [V]', ...
'backgroundcolor', [0.1 0.5 0.9]);

% edit A2
uicontrol('Style', 'edit', ...
'Units', 'normalized', ...
'Position', [0.87 0.8 0.1 0.04], ...
'String', A2, ...
'Callback', 'A2 = str2num(get(gco,''string'')), close; differential_triangle(A1, f1, A2, f2, R1, R2, R3, R4);');

% label R1
uicontrol('Style', 'text', ...
'Units', 'normalized', ...
'Position', [0.87 0.58 0.1 0.04], ...
'String', 'R1 value [Ohms]', ...
'backgroundcolor', [0.1 0.5 0.9]);

% edit R1
uicontrol('Style', 'edit', ...
'Units', 'normalized', ...
'Position', [0.87 0.53 0.1 0.04], ...
'String', R1, ...
'Callback', 'R1 = str2num(get(gco,''string'')), close; differential_triangle(A1, f1, A2, f2, R1, R2, R3, R4);');

% label R2
uicontrol('Style', 'text', ...
'Units', 'normalized', ...
'Position', [0.87 0.48 0.1 0.04], ...
'String', 'R2 value [Ohms]', ...
'backgroundcolor', [0.1 0.5 0.9]);

% edit R2
uicontrol('Style', 'edit', ...
'Units', 'normalized', ...
'Position', [0.87 0.43 0.1 0.04], ...
'String', R2, ...
'Callback', 'R2 = str2num(get(gco,''string'')), close; differential_triangle(A1, f1, A2, f2, R1, R2, R3, R4);');

% label R3
uicontrol('Style', 'text', ...
'Units', 'normalized', ...
'Position', [0.87 0.38 0.1 0.04], ...
'String', 'R3 value [Ohms]', ...
'backgroundcolor', [0.1 0.5 0.9]);

% edit R3
uicontrol('Style', 'edit', ...
'Units', 'normalized', ...
'Position', [0.87 0.33 0.1 0.04], ...
'String', R3, ...
'Callback', 'R3 = str2num(get(gco,''string'')), close; differential_triangle(A1, f1, A2, f2, R1, R2, R3, R4);');

% label R4
uicontrol('Style', 'text', ...
'Units', 'normalized', ...
'Position', [0.87 0.28 0.1 0.04], ...
'String', 'R4 value [Ohms]', ...
'backgroundcolor', [0.1 0.5 0.9]);

% edit R4
uicontrol('Style', 'edit', ...
'Units', 'normalized', ...
'Position', [0.87 0.23 0.1 0.04], ...
'String', R4, ...
'Callback', 'R4 = str2num(get(gco,''string'')), close; differential_triangle(A1, f1, A2, f2, R1, R2, R3, R4);');

% text f1
uicontrol('Style', 'text', ...
'Units', 'normalized', ...
'Position', [0.87 0.75 0.1 0.04], ...
'String', 'f1 - Input 1 frequency [Hz]', ...
'backgroundcolor', [0.1 0.5 0.9]);

% text f2
uicontrol('Style', 'text', ...
'Units', 'normalized', ...
'Position', [0.87 0.665 0.1 0.04], ...
'String', 'f2 - Input 2 frequency [Hz]', ...
'backgroundcolor', [0.1 0.5 0.9]);

% reset button
uicontrol('Style', 'pushbutton',...
'Units', 'normalized',...
'Position', [0.87 0.12 0.1 0.05],...
'string', 'RESET',...
'Callback', 'close; differential_triangle(1, 100, 2, 100, 1e3, 1e3, 1e3, 1e3);');

% close button
uicontrol('Style', 'pushbutton',...
'Units', 'normalized',...
'Position', [0.87 0.05 0.1 0.05],...
'String', 'CLOSE',...
'Callback', 'close');

h = uimenu('Label', 'Amplifiers');

uimenu(h,'Label', 'Save', 'Callback', 'save');

h1 = uimenu(h,'Label','Non-nverting summing amplifier');
uimenu(h1,'Label', 'Sinusoidal input', 'Callback', 'close; summing_noninverted_sin(A1, f1, A2, f2, R1, R2, R3, R4)');
uimenu(h1,'Label', 'Triangular input', 'Callback', 'close; summing_noninverted_triangle(A1, f1, A2, f2, R1, R2, R3, R4)');

h2 = uimenu(h,'Label','Inverting summing amplifier');
uimenu(h2,'Label', 'Sinusoidal input', 'Callback', 'close; summing_inverted_sin(A1, f1, A2, f2, R, R1, R2)');
uimenu(h2,'Label', 'Triangular input', 'Callback', 'close; summing_inverted_triangle(A1, f1, A2, f2, R, R1, R2)');

h3 = uimenu(h,'Label','Differential amplifier');
uimenu(h3,'Label', 'Sinusoidal input', 'Callback', 'close; differential_sin(A1, f1, A2, f2, R1, R2, R3, R4)');
uimenu(h3,'Label', 'Triangular input', 'Callback', 'close; differential_triangle(A1, f1, A2, f2, R1, R2, R3, R4)');

% sine wave
uicontrol('Style', 'radiobutton', ...
'Units', 'normalized', ...
'Position', [0.57 0.3 0.1 0.1], ...
'String', 'Sinusoidal input', ...
'backgroundcolor', [0.11764 0.71764 0.066], ...
'Callback', 'close; differential_sin(A1, f1, A2, f2, R1, R2, R3, R4)');

% triangle wave
uicontrol('Style', 'radiobutton', ...
'Units', 'normalized', ...
'Position', [0.72 0.3 0.1 0.1], ...
'String', 'Triangular input', ...
'backgroundcolor', [0.11764 0.71764 0.066], ...
'Callback', 'close; differential_triangle(A1, f1, A2, f2, R1, R2, R3, R4)');

% background
hAxes = axes('Units', 'normalized', 'Position', [0 0 1 1]);
uistack(hAxes, 'Bottom');
img  = imread('background.jpg');
image(img, 'Parent', hAxes);
set(hAxes, 'HandleVisibility', 'off', 'Visible', 'off')

% plot
T1 = 1 / f1;
t1 = (0:T1 / 100:2*T1);
T2 = 1 / f2;
t2 = (0:T2 / 100:2*T2);
y1 = A1 * sawtooth(2 * pi * f1 * t1, 1 / 2);
y2 = A2 * sawtooth(2 * pi * f2 * t2, 1 / 2);
y3 = (R4 / (R3 + R4)) * (1 + R2 / R1) * y1 - R2 * y2 / R1;

subplot('position', [0.5 0.60 0.4 0.25]);
w = imread('differential.jpg');
imshow(w, 'InitialMagnification', 150)

subplot('position', [0.05 0.20 0.4 0.25]);
w = imread('formula_differential.jpg');
imshow(w, 'InitialMagnification', 150)

subplot('position', [0.05 0.60 0.4 0.25]);

grid on;
iplot = plot(t1, y1);
title('Input voltages and output voltage', 'FontWeight', 'bold', 'Color', 'w')
xlabel('time t[s]', 'FontWeight', 'bold', 'Color', 'w')
ylabel('voltage [V]', 'FontWeight', 'bold', 'Color', 'w')
xt = xticks(gca);
set(gca, 'Color', 'k', 'XColor','w', 'YColor','w', 'FontWeight', 'bold')
set(gcf, 'Color', 'k')

hold on;

grid on;
jplot = plot(t2, y2);

hold on;

grid on;
kplot = plot(t1, y3);

% edit f1
GO_s1 = uicontrol('Style','slide',...
'Units', 'normalized',...
'Position', [0.87 0.715 0.1 0.025],...
'Min', 50, 'Max', 150, 'Value', 100);
addlistener(GO_s1, 'ContinuousValueChange', @(hObject, event) makeplot1(hObject, event, t1, iplot, kplot));

uicontrol('Style', 'text',...
'Units', 'normalized',...
'Position', [0.84 0.715 0.03 0.025],...
'backgroundcolor', 'y',...
'foregroundcolor', 'black',...
'String', num2str(get(GO_s1, 'Min')));

uicontrol('Style', 'text', ...
'Units', 'normalized', ...
'Position', [0.97 0.715 0.03 0.025], ...
'backgroundcolor', 'y', ...
'foregroundcolor', 'black', ...
'String', num2str(get(GO_s1, 'Max')));

% edit f2
GO_s2 = uicontrol('Style','slide',...
'Units', 'normalized',...
'Position', [0.87 0.63 0.1 0.025],...
'Min', 50, 'Max', 150, 'Value', 100);
addlistener(GO_s2, 'ContinuousValueChange', @(hObject, event) makeplot2(hObject, event, t2, jplot, kplot));

uicontrol('Style', 'text',...
'Units', 'normalized',...
'Position', [0.84 0.63 0.03 0.025],...
'backgroundcolor', 'y',...
'foregroundcolor', 'black',...
'String', num2str(get(GO_s1, 'Min')));

uicontrol('Style', 'text', ...
'Units', 'normalized', ...
'Position', [0.97 0.63 0.03 0.025], ...
'backgroundcolor', 'y', ...
'foregroundcolor', 'black', ...
'String', num2str(get(GO_s1, 'Max')));

function makeplot1(hObject, ~, t1, iplot, kplot)
n = get(hObject, 'Value');
set(iplot, 'ydata', A1 * sawtooth(2 * pi * n * t1, 1 / 2));
f1 = n;
set(kplot, 'ydata', (R4 / (R3 + R4)) * (1 + R2 / R1) * A1 * sawtooth(2 * pi * f1 * t1, 1 / 2) - R2 * A2 * sawtooth(2 * pi * f2 * t1, 1 / 2) / R1)
drawnow;
end

function makeplot2(hObject, ~, t2, jplot, kplot)
n = get(hObject, 'Value');
set(jplot, 'ydata', A2 * sawtooth(2 * pi * n * t2, 1 / 2));
f2 = n;
set(kplot, 'ydata', (R4 / (R3 + R4)) * (1 + R2 / R1) * A1 * sawtooth(2 * pi * f1 * t1, 1 / 2) - R2 * A2 * sawtooth(2 * pi * f2 * t1, 1 / 2) / R1)
drawnow;
end

end