function [frequencyPoints, powerValues] = freqDomainPower(samples, sampleRate)
  powerValues = 20*log10(fftshift(abs(fft(samples))));
  
  frequencyPoints = linspace(-sampleRate/2, sampleRate/2, length(samples));
end