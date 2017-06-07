% Example of BPSK signal

%% create signal

sampleFrequency_hz = 10e6;
centerFrequency_hz = 2e6;
numSymbols = 1000;
symbolRate_sps = 5e5;

signal = bpskSignal(sampleFrequency_hz, centerFrequency_hz, numSymbols, symbolRate_sps);

[freqValues, powerValues] = freqDomainPower(signal, sampleFrequency_hz);

spectrumPlot(freqValues, powerValues);

%% plot some of the signal in the time domain

figure;
plot(real(signal(1:500)));
hold on;
plot(imag(signal(1:500)));