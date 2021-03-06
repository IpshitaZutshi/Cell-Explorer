% Preferences loaded by the Cell Explorer at startup
% Check the website of the Cell Explorer for more details: https://petersenpeter.github.io/Cell-Explorer/
  
% By Peter Petersen
% petersen.peter@gmail.com
% Last edited: 30-01-2020

% % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% Cell Explorer Preferences  
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % %

% Display settings - An incomplete list:
% 'Waveforms (single)','Waveforms (all)','Waveforms (image)','Raw waveforms (single)','Raw waveforms (all)','ACGs (single)',
% 'ACGs (all)','ACGs (image)','CCGs (image)','Sharp wave-ripple'
UI.settings.customCellPlotIn{1} = 'Waveforms (all)';
UI.settings.customCellPlotIn{2} = 'ACGs (single)'; 
UI.settings.customCellPlotIn{3} = 'RCs_firingRateAcrossTime';
UI.settings.customCellPlotIn{4} = 'Waveforms (single)';
UI.settings.customCellPlotIn{5} = 'CCGs (image)';
UI.settings.customCellPlotIn{6} = 'Sharp wave-ripple';

UI.settings.acgType = 'Normal';                 % Normal (100ms), Wide (1s), Narrow (30ms), Log10
UI.settings.isiNormalization = 'Occurance';     % 'Rate', 'Occurance'
UI.settings.monoSynDispIn = 'Selected';         % 'All', 'Upstream', 'Downstream', 'Up & downstream', 'Selected', 'None'
UI.settings.metricsTableType = 'Metrics';       % ['Metrics','Cells','None']
UI.settings.plotCountIn = 'GUI 3+3';            % ['GUI 1+3','GUI 2+3','GUI 3+3','GUI 3+4','GUI 3+5','GUI 3+6']
UI.settings.dispLegend = 0;                     % [0,1] Display legends in plots?
UI.settings.plotWaveformMetrics = 0;            % show waveform metrics on the single waveform
UI.settings.sortingMetric = 'burstIndex_Royer2012'; % metrics used for sorting image data
UI.settings.markerSize = 15;                    % marker size in the group plots [default: 20]
UI.settings.plotChannelMap = true;              % boolean. Show a channel map with waveforms.
UI.settings.plotChannelMapAllChannels = true;   % Boolean. Show a select set of channels or all 

% Autosave settings
UI.settings.autoSaveFrequency = 6;              % How often you want to autosave (classifications steps). Put to 0 to turn autosave off
UI.settings.autoSaveVarName = 'cell_metrics';   % Variable name used in autosave

% Initial data displayed in the customPlot
UI.settings.plotXdata = 'firingRate';
UI.settings.plotYdata = 'peakVoltage';
UI.settings.plotZdata = 'troughToPeak';
UI.settings.plotMarkerSizedata = 'peakVoltage';

% Cell type classification definitions
UI.settings.cellTypes = {'Unknown','Pyramidal Cell','Narrow Interneuron','Wide Interneuron'};
UI.settings.deepSuperficial = {'Unknown','Cortical','Deep','Superficial'};
UI.settings.tags = {'Good','Bad','Noise','InverseSpike'};
UI.settings.groundTruth = {'PV+','NOS1+','GAT1+','SST+','Axoaxonic','Cell type A'};
UI.settings.groundTruthMarkers = {'om','dg','sm','*k','+k','+p'}; % Supports any Matlab marker symbols: https://www.mathworks.com/help/matlab/creating_plots/create-line-plot-with-markers.html
UI.settings.groundTruthColors = [[.9,.2,.2];[.2,.2,.9];[0.2,0.9,0.9];[0.9,0.2,0.9];[.2,.9,.2];[.5,.5,.5]];
UI.settings.cellTypeColors = [[.5,.5,.5];[.8,.2,.2];[.2,.2,.8];[0.2,0.8,0.8];[0.8,0.2,0.8];[.2,.8,.2]];

% tSNE representation
UI.settings.tSNE.metrics = {'firingRate','thetaModulationIndex','burstIndex_Mizuseki2012','troughToPeak','ab_ratio','burstIndex_Royer2012','acg_tau_rise','acg_tau_burst','acg_h','acg_tau_decay','cv2','burstIndex_Doublets','troughtoPeakDerivative'};
UI.settings.tSNE.dDistanceMetric = 'euclidean'; % default: 'euclidean'
UI.settings.tSNE.exaggeration = 15;             % default: 15
UI.settings.tSNE.standardize = false;           % boolean
UI.settings.tSNE.NumPCAComponents = 0;
UI.settings.tSNE.LearnRate = 1000;
UI.settings.tSNE.Perplexity = 200;
UI.settings.tSNE.InitialY = 'Random';
        
UI.settings.tSNE.calcWideAcg = false;           % boolean
UI.settings.tSNE.calcNarrowAcg = false;         % boolean
UI.settings.tSNE.calcLogAcg = false;            % boolean
UI.settings.tSNE.calcLogIsi = false;            % boolean
UI.settings.tSNE.calcFiltWaveform = false;      % boolean
UI.settings.tSNE.calcRawWaveform = false;       % boolean

% Highlight excitatory / inhibitory cells
UI.settings.displayInhibitory = false;          % boolean
UI.settings.displayExcitatory = false;          % boolean
UI.settings.displayExcitatoryPostsynapticCells = false; % boolean
UI.settings.displayInhibitoryPostsynapticCells = false; % boolean

% Firing rate map setting
UI.settings.firingRateMap.showHeatmap = false;          % boolean
UI.settings.firingRateMap.showLegend = false;           % boolean
UI.settings.firingRateMap.showHeatmapColorbar = false;  % boolean
