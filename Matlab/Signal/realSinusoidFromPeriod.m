function values = realSinusoidFromPeriod(period_samples, numSamples, phaseOffset)
  % phase argument is optional, defaults to 0
  if ~exist('phaseOffset','var')
    phaseOffset = 0;
  end
  
  points = (1:numSamples).*(2*pi/period_samples) + phaseOffset;
  
  values = cos(points);
  
end