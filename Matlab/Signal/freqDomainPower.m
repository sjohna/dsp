function [frequencyPoints, powerValues_logScale, unmodifiedFFTValues] = freqDomainPower(samples, sampleRate)
  unmodifiedFFTValues = fft(samples);
  powerValues_logScale = 20*log10(fftshift(abs(unmodifiedFFTValues)));
  
  frequencyPoints = linspace(-sampleRate/2, sampleRate/2, length(samples));
end