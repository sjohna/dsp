% Example usage of functions to generate and manipulate signals

%% Generate real signals with specific frequency components

sampleRate = 10e6; % 10 MHz

myRealSignal = realSinusoidFromFrequency(sampleRate,2e6,1000) + ... %2 MHz
               realSinusoidFromFrequency(sampleRate,1e6,1000) + ... %1 MHz
               realSinusoidFromFrequency(sampleRate,5e5,1000) + ... %500 kHz
               realSinusoidFromFrequency(sampleRate,1e5,1000);      %100 kHz

[freqValues, powerValues] = freqDomainPower(myRealSignal, sampleRate);
           
%% Frequency domain plot of myRealSignal

spectrumPlot(freqValues, powerValues);


%% Generate complex signals with specified frequency components

sampleRate = 10e6; % 10 MHz

myComplexSignal = complexSinusoidFromFrequency(sampleRate,-2e6,1000) + ... %-2 MHz
                  complexSinusoidFromFrequency(sampleRate,1e6,1000) + ... %1 MHz
                  complexSinusoidFromFrequency(sampleRate,-5e5,1000) + ... %-500 kHz
                  complexSinusoidFromFrequency(sampleRate,1e5,1000);      %100 kHz

[freqValues, powerValues] = freqDomainPower(myComplexSignal, sampleRate);

%% Frequency domain plot of myComplexSignal

spectrumPlot(freqValues, powerValues);