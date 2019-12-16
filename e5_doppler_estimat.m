%{

The object velocity produce an addicitonnal frequency shift
(as distance does). So the beat frecuency comes from both
distance and velocity of the object. Although, in the case of automotive
radar the component produced by velocity is very small in comparison to the
component produced by the distance. Hence, the doppler velocity is 
calculated by measuring the rate of change of phase across multiple chirps.

Anyway we can calculate also the velocity of object is we have
the frequency shift due to doppler velocity (fd) with the formula:

vr = lambda*fd/2

vr: velocity of the object relative to target
fd: frequency shift only due to doppler velocity

%}


% Doppler Velocity Calculation
c = 3*10^8;         %speed of light
frequency = 77e9;   %frequency in Hz


% Calculate the wavelength
lambda = c/frequency;


% Define the doppler shifts in Hz using the information from above 
fd = [3e3, -4.5e3, 11e3, -3e3];

%  Calculate the velocity of the targets  fd = 2*vr/lambda
vr = lambda*fd/2;


%  Display results
disp(vr);


