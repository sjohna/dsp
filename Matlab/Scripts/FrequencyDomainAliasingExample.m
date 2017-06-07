% Example showing aliasing in the frequency domain

%% Get samples with a triangular spectrumPlot

sampleRate = 10e6;
bandwidth = 2e6;
numSamples = 10000;

samples = triangularSpectrum(numSamples, sampleRate, bandwidth);

[freqValues, powerValues] = freqDomainPower(samples, sampleRate);

spectrumPlot(freqValues, powerValues, "Original Spectrum");
addToSpectrumPlot(freqValues, powerValues);


%% Decimate by 2

samples_dec2 = samples(1:2:numSamples);

[freqValues_dec2, powerValues_dec2] = freqDomainPower(samples_dec2, sampleRate/2);

spectrumPlot(freqValues_dec2, powerValues_dec2, "Decimated by 2");
addToSpectrumPlot(freqValues, powerValues);



%% Decimate by 3

samples_dec3 = samples(1:3:numSamples);

[freqValues_dec3, powerValues_dec3] = freqDomainPower(samples_dec3, sampleRate/3);

spectrumPlot(freqValues_dec3, powerValues_dec3, "Decimated by 3");
addToSpectrumPlot(freqValues, powerValues);



%% Decimate by 4

samples_dec4 = samples(1:4:numSamples);

[freqValues_dec4, powerValues_dec4] = freqDomainPower(samples_dec4, sampleRate/4);

spectrumPlot(freqValues_dec4, powerValues_dec4, "Decimated by 4");
addToSpectrumPlot(freqValues, powerValues);



%% Decimate by 5

samples_dec5 = samples(1:5:numSamples);

[freqValues_dec5, powerValues_dec5] = freqDomainPower(samples_dec5, sampleRate/5);

spectrumPlot(freqValues_dec5, powerValues_dec5, "Decimated by 5");
addToSpectrumPlot(freqValues, powerValues);



%% Decimate by 6

samples_dec6 = samples(1:6:numSamples);

[freqValues_dec6, powerValues_dec6] = freqDomainPower(samples_dec6, sampleRate/6);

spectrumPlot(freqValues_dec6, powerValues_dec6, "Decimated by 6");
addToSpectrumPlot(freqValues, powerValues);



%% Decimate by 13

samples_dec13 = samples(1:13:numSamples);

[freqValues_dec13, powerValues_dec13] = freqDomainPower(samples_dec13, sampleRate/13);

spectrumPlot(freqValues_dec13, powerValues_dec13, "Decimated by 13");
addToSpectrumPlot(freqValues, powerValues);