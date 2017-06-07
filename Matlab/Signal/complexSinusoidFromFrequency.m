function values = complexSinusoidFromFrequency(sampleFrequency_hz, sinusoidFrequency_hz, numSamples, phaseOffset)
  % phase argument is optional, defaults to 0
  if ~exist('phaseOffset','var')
    phaseOffset = 0;
  end
  
  period = sampleFrequency_hz / sinusoidFrequency_hz;
  
  points = (1:numSamples).*(2*pi/period) + phaseOffset;
  
  values = exp(i * points); 
end