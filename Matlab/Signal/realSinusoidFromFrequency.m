function values = realSinusoidFromFrequency(sampleFrequency_hz, sinusoidFrequency_hz, numSamples, phaseOffset)
  % phase argument is optional, defaults to 0
  if ~exist('phaseOffset','var')
    phaseOffset = 0;
  end
  
  period = sampleFrequency_hz / sinusoidFrequency_hz;
  
  values = realSinusoidFromPeriod(period, numSamples, phaseOffset);
  
end