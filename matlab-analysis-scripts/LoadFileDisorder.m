function [refl, theta, SPower] = LoadFileDisorder(basename, m, nRpt)
% Load Lumerical dataset
% rename "Reflection_Intensity" into "refl"

name = [basename '-run' num2str(nRpt) '--' num2str(m)]; % gernerate full filename

S = load(name); % load data
refl = S.Reflection_Intensity;
theta = S.theta;
SPower = S.SPower;

clear name S

% %Ordered
% matlabsave(matlabnameSettings, SPower, lambda, fsource, periods, fillfact, heights, Index, i);
% matlabsave(matlabname2, Reflection_Intensity, theta);
% 
% %Sinus shape
% matlabsave(matlabnameSettings, SPower, lambda, fsource, periods, heights, Index, i);
% matlabsave(matlabname2, Reflection_Intensity, theta);
% 
% % Disorder
% matlabsave(matlabnameSettings, lambda, fsource, periods, fillfact, heights, Index, Nperiods, I, sigmaW, sigmaX, sigmaH, seed, DFact, Rpt);
% matlabsave(matlabname2, Reflection_Intensity, theta, SPower);