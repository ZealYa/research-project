for pairs = 1:3

    folder = {['/home/kunterbunt/dev/omnetpp-5.0/samples/research-project/research-project/results/ReassignmentTest/' num2str(pairs) 'pairs/']};   

    titles = {['RA-Scheduler--' num2str(pairs) 'pairs--50RBs']};

    RBs_generatePlotForFolder(folder{1}, titles(1));    
end