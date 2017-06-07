function values = bpskSignal(sampleFrequency_hz, centerFrequency_hz, numSymbols, symbolRate_sps, phaseOffset, symbolPhases)
  % phase argument is optional, defaults to 0
  if ~exist('phaseOffset','var')
    phaseOffset = 0;
  end
  
  if ~exist('symbolPhases','var')
    symbolPhases = [0 pi];
  end
  
  % calculate number of symbols
  symbols = randi(2,1,numSymbols) - 1;
  samplesPerSymbol = round(sampleFrequency_hz / symbolRate_sps);  % not full fidelity...
  numSamples = samplesPerSymbol * numSymbols;
  sampleSymbols = repelems(symbols, [1:numSymbols; ones(1,numSymbols).*samplesPerSymbol]);
  
  sampleSymbolPhases = sampleSymbols;
  sampleSymbolPhases(find(sampleSymbols == 0)) = symbolPhases(1);
  sampleSymbolPhases(find(sampleSymbols == 1)) = symbolPhases(2);
  
  values = complexSinusoidFromFrequency(sampleFrequency_hz, centerFrequency_hz, numSamples, sampleSymbolPhases);
end