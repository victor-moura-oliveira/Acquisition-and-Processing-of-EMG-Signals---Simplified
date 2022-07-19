function Hd = filter lowpass
%FILTER LOWPASS Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.8 and Signal Processing Toolbox 8.4.
% Generated on: 16-Mar-2021 23:09:28

% Butterworth Lowpass filter designed using FDESIGN.LOWPASS.

% All frequency values are in Hz.
Fs = 2000;  % Sampling Frequency

Fpass = 450;         % Passband Frequency
Fstop = 500;         % Stopband Frequency
Apass = 1;           % Passband Ripple (dB)
Astop = 3000;        % Stopband Attenuation (dB)
match = 'passband';  % Band to match exactly

% Construct an FDESIGN object and call its BUTTER method.
h  = fdesign.lowpass(Fpass, Fstop, Apass, Astop, Fs);
Hd = design(h, 'butter', 'MatchExactly', match);

% [EOF]
