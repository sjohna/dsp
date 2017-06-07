function figureHandle = addToSpectrumPlot(frequencyPoints, powerValues)
  hold on;
  
  plot(frequencyPoints./1e6, powerValues);
  
  currLimits = axis();
  
  axis([min(currLimits(1),min(frequencyPoints)/1e6) max(currLimits(2),max(frequencyPoints)/1e6) min(currLimits(3),min(powerValues)) max(currLimits(4),max(powerValues))]);
end