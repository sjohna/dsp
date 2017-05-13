function figureHandle = spectrumPlot(frequencyPoints, powerValues, plotTitle)
  if ~exist('plotTitle','var')
    plotTitle = 'Spectrum plot';
  end
  
  figureHandle = figure;
  
  title(plotTitle);
  
  xlabel('Power (dB)');
  ylabel('Frequency (MHz)');
  
  plot(frequencyPoints./1e6, powerValues);
  
  axis([min(frequencyPoints)/1e6 max(frequencyPoints)/1e6 min(powerValues) max(powerValues)]);
end