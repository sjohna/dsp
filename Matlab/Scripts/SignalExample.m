% Example usage of functions to generate and manipulate signals

%% Generate signals with specific frequency components

sampleRate = 10e6; % 10 MHz

mySignal = realSinusoidFromFrequency(sampleRate,2e6,1000) + ... %2 MHz
           realSinusoidFromFrequency(sampleRate,1e6,1000) + ... %1 MHz
           realSinusoidFromFrequency(sampleRate,5e5,1000) + ... %500 kHz
           realSinusoidFromFrequency(sampleRate,1e5,1000);      %100 kHz
           
%% Plot mySignal

spectrumPlot(xVals, yVals);
