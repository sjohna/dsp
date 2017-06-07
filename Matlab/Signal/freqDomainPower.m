function [frequencyPoints, powerValues_logScale, unmodifiedFFTValues] = freqDomainPower(samples, sampleRate)
% freqDomainPower Get the frequency domain power spectrum for a signal.
%   [frequencyPoints, powerValues] = freqDomainPower(samples, sampleRate) get the frequency and power values for the specified signal samples. Sample rate, in Hz, must be provided.
%   [frequencyPoints, powerValues, unmodifiedFFTValues] = freqDomainPower(samples, sampleRate) get the frequency and power values for the specified signal samples. Sample rate, in Hz, must be provided. Call with a third return value to also return the unmodified FFT of the signal
  
  unmodifiedFFTValues = fft(samples);
  powerValues_logScale = 20*log10(fftshift(abs(unmodifiedFFTValues)));
  
  frequencyPoints = linspace(-sampleRate/2, sampleRate/2, length(samples));
end