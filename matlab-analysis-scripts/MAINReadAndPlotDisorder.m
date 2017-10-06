%% Main script to run lumerical analysis
%%% Define input data and initialize arrays

%%%%%%% INPUTS %%%%%%%%%%
% filenames
FileNameSettings = 'matfile_Settings_Supercell_Sweep_PeriodAndWwidthAndHeightDisorder';  % e.g. 'matfile_Settings_for_Grating_Farfield_Sweep'
basenameREAD = 'matfile_all_disorder'; % Base of matlab file name e.g. 'matfile_height_490nm'
% Add a path to searchpath to find matlab files:
path(path,'C:\Users\...\matlabfiles'); % insert path to matlab files
plotname = 'adonis_all_disorder'; % Made up name to appear on plots e.g. 'Period_displacement'
%%%%%%%%%%%%%%%%%%%%%%%%%

    % load setings and initialise
    [lambda, fsource, periods, fillfact, heights, Index, Nperiods, I, sigmaW, sigmaX, sigmaH, seed, DFact, ~] = LoadSettingsDisorder(FileNameSettings);
    Rpt = 60; % include new runs
    % define from loaded
    Runs = length(DFact); % how many simulations in this sweep
    ResF = length(fsource); % frequenzy resolution % standard 200
 %%%%%
lambda = flip(lambda); 
%%%%%%%%%

%% Make "Goniometer" plot for each sweep-step
lambdaG = lambda(length(lambda):-1:1); %format wavelength vector in suitable way for plot-type
GoniometerPlots(basenameREAD, Runs, Rpt, ResF, lambdaG, plotname, DFact);

