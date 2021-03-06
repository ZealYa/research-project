function FirstParameterStudy_generatePlotForFolder(path, rbs, plotTitle)
sums = [];
fairnesses = [];
for i=rbs(1):rbs(2)
   filename = [path num2str(i) 'rbs/parsed'];   
   [byteSum, fairness] = getByteSumAndFairness(filename);   
   sums(end + 1) = byteSum;
   fairnesses(end + 1) = fairness;   
end

fig = figure('visible','off');
hold on
title(plotTitle);
[hAx, hLine1, hLine2] = plotyy(rbs(1):rbs(2), sums, rbs(1):rbs(2), fairnesses);
ylabel(hAx(1),'#bytes received') % left y-axis 
ylabel(hAx(2),'Jains Fairness Index') % right y-axis
set(hAx(1),'YLim',[0 2000000])
set(hAx(2),'YLim',[0 1.1])
set(hAx,'xlim', rbs);
xlabel('number of RBs');
hold off
filename = strcat(path, plotTitle, '.png');
saveas(fig, filename{1}, 'png');
end

