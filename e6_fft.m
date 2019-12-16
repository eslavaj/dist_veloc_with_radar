
Fs = 1000;            % Sampling frequency                    
T = 1/Fs;             % Sampling period       
L = 1500;             % Length of signal
t = (0:L-1)*T;        % Time vector


% Defining a signal
%Form a signal containing a 77 Hz sinusoid of 
% amplitude 0.7 and a 43Hz sinusoid of amplitude 2
signal = 0.7*sin(2*pi*77*t) + 2*sin(2*pi*43*t);

% Corrupting the signal with noise 
X = signal + 2*randn(size(t));

% Plot the noisy signal in the time domain. It is difficult to identify 
% the frequency components by looking at the signal X(t). 
plot(1000*t(1:50) ,X(1:50))
title('Signal Corrupted with Zero-Mean Random Noise')
xlabel('t (milliseconds)')
ylabel('X(t)')


% Compute the Fourier transform of the signal
N = 1500; %number of samples to be used for doing fft
%signal_fft = fft(X, N);
signal_fft = fft(X);

% Get magnitude of signal_fft
signal_fft_magn = abs(signal_fft/L);

% We only need the positive half of the fft 
%(getting the single sided spectrum)
%signal_fft_magn_p  = signal_fft_magn(1:L/2-1);
signal_fft_magn_p  = signal_fft_magn(1:L/2+1);

% Plotting
f = Fs*(0:(L/2))/L;
plot(f,signal_fft_magn_p) 
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')

