function samples = triangularSpectrum(numSamples, sampleRate_Hz, bandwidth_Hz, minPower_dB, maxPower_dB)
  
  if ~exist('minPower_dB','var')
    minPower_dB = 0;  
  end
  if ~exist('maxPower_dB','var')
    maxPower_dB = 50;  
  end
  
  frequencyPoints = linspace(-sampleRate_Hz/2, sampleRate_Hz/2, numSamples);
  
  powerPoints = ones(1,numSamples) * minPower_dB;
  
  setIndices = find((frequencyPoints > - bandwidth_Hz/2) & (frequencyPoints < bandwidth_Hz/2));
  
  powerPoints(setIndices) = abs((abs(frequencyPoints(setIndices)) - bandwidth_Hz/2)./(bandwidth_Hz/2)).*(maxPower_dB-minPower_dB) + minPower_dB;
  
  samples = ifft(10.^(fftshift(powerPoints)./20));
  
end