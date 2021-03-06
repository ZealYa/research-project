function values = plotFile(path)
    parts = strsplit(path, '/');
    dir = parts{end-1};
    filename = [path 'parsed'];
    values = getValuesFromFile(filename);
    plot = bar(values);    
    ylabel('#bytes received');
    nlabels = {};
    for i = 1:size(values, 1)
        label = strcat('Rx', num2str(i));
        nlabels(end + 1) = {label};
    end    
    set(gca, 'XTick', 1:3, 'XTickLabel', nlabels);    
    title(dir);
    saveas(plot, [path dir '.png'],'png');
end

