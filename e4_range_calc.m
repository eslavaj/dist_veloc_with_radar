%{

The distance from radar to object is known as range.

R = (c*Ts*fb)/(2*Bs)

Beat frequency (frequency shift due to wave travel time):
fb = framping - freceived



%}



%{
Usually chirp time is choosen so radar can work in a specific
maximal range with the following empiric formula:

Ts = 5.5*2*Rmax/c

%}


% Radar maximum range:
Rmax = 300;

% Range resolution
dres = 1;

% Speed of light:
c = 3*10^8;

% Finding the value of Bs that allows resolution=1m
% dres = c/(2*Bs)
Bs = c/(2*dres);

% Finding chirp time for a max range of 300
Ts = 5.5*2*Rmax/c;

% Defining the frequency shift (beat frequency)
fb = [0 , 1.1e6 , 13e6 , 24e6 ];

% Calculate the ranges:
R = (c*Ts*fb)/(2*Bs);

% Display ranges for different frecuency shifts:
disp(R)

