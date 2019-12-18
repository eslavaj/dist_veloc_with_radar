%{
Radar range equation:

R = nthroot( ( Ptransm * ( G^2 ) * ( lambda^2 ) * RCS )/(PminDetec * ( (4*pi)^3 )) , 4)

%}



%Operating frequency (Hz)
fc = 77.0e9;

%Transmitted power (W)
Ptransm = 3e-3;

%Antenna Gain (linear)
G =  10000;

%Minimum Detectable Power
PminDetec = 1e-10;

%RCS of a car
RCS = 100;

%Speed of light
c = 3*10^8;

%Calculate the wavelength
lambda = c/fc;

%Measure the Maximum Range a Radar can see. 
Rmax = nthroot( ( Ptransm * ( G^2 ) * ( lambda^2 ) * RCS )/(PminDetec * ( (4*pi)^3 )) , 4);

% Display the range
disp(Rmax)

