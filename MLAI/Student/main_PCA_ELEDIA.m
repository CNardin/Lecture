% =========================================================================
%
% PRINCIPAL COMPONENT ANALYSIS (PCA) TECHNIQUE
%
% =========================================================================
% DESCRIPTION
% -------------------------------------------------------------------------
% This software implements the PCA dimensionality reduction via Singular
% Value Decomposition (SVD) for a couple of benchmark problems:
% 1) A Cloud of normally-distributed points in 2D
% 2) Genomic data of patients with/without ovarian cancer [1][2]
%
% REFERENCES
% -------------------------------------------------------------------------
% The original data, with 15,000 ion intensity level measurements per
% patient can be obtained from the FDA-NCI Clinical Proteomics Program
% Databank: http://home.ccr.cancer.gov/ncifdaproteomics/ppatterns.asp
%  
% [1] T.P. Conrads, et al., "High-resolution serum proteomic features for
%     ovarian detection", Endocrine-Related Cancer, 11, 2004, pp. 163-178.
% [2] E.F. Petricoin, et al., "Use of proteomic patterns in serum to
%     identify ovarian cancer", Lancet, 359(9306), 2002, pp. 572-577.
% =========================================================================
%
% Author(s):       ELEDIA Research Center
% Creation:        24/08/2022
% Last update:     25/08/2022
%
% =========================================================================

clc;
close all;
clear;

rng(1,'twister');

% INPUT PARAMETERS
% =========================================================================
% Benchmark selection
% BENCHMARK = 1: Normal-distributed cloud of points in 2D
% BENCHMARK = 2: Ovarian cancer genomic data
BENCHMARK = 1;

% [BENCHMARK=1] Cloud of points in 2D
% -------------------------------------------------------------------------
% Number of points
NUM_POINTS = 10000;

% Center of the data (average value)
X1_AVG = 2;
X2_AVG = 1;

% Standard deviation of the data along the principal axes
P1_SIGMA = 2;
P2_SIGMA = 0.5;

% Rotation angle of the data [deg]
THETA_ROTATION_DEG = 60;

% Number of output dimensions (to show projected data)
NUM_OUTPUT_DIM = 1;


% PROCESSING PHASE
% =========================================================================
if BENCHMARK == 1
    % BENCHMARK 1: CLOUD OF RANDOM POINTS
    % *********************************************************************
    % Build the cloud of points in 2D
    % ---------------------------------------------------------------------
    % Center of data (mean)
    xC = [X1_AVG; X2_AVG]; 

    % Principal axes
    sig = [P1_SIGMA; P2_SIGMA]; 

    % Compute the rotation matrix
    %%% WRITE CODE HERE %%%


    % Generate the cloud of points (shift to average and stretch to sigma)
    %%% WRITE CODE HERE %%%
    
    
    % Compute the PCA using the SVD
    % ---------------------------------------------------------------------
    % Compute the average of the input data (S rows)
    %%% WRITE CODE HERE %%%
    
    
    % Center the data to the origin (subtract average)
    %%% WRITE CODE HERE %%%
    

    % Normalize the centered data
    %%% WRITE CODE HERE %%%
    
         
    % Compute the PCA using the SVD
    %%% WRITE CODE HERE %%%
        
    % Project data onto first principal component
    %%% WRITE CODE HERE %%%
    
    % Project data onto second principal component
    %%% WRITE CODE HERE %%%
     
    
    % Plot 1: Original data with estimated std deviation and PCs
    % ---------------------------------------------------------------------
    figure('units','normalized','outerposition',[0 0 1 1]); 
    subplot(1,2,1);
    
    % Original data
    %%% WRITE CODE HERE %%% 
    
    hold on;
    box on;
    grid on;
    axis([-6 8 -6 8]);
    pbaspect([1 1 1]);
    xlabel('x1');
    ylabel('x2');
    title(sprintf('Random Samples, S=%d', ...
        NUM_POINTS));
    
    return
    
    % Draw three circles centered on the data average and stretched by
    % estimated sigma (1*sigma, 2*sigma, and 3*sigma)
    angles = (0:.01:1)*2*pi;
    
    % Estimated std deviation
    Xstd = V*S*[cos(angles); sin(angles)]; 
    
    % Draw ellipses
    %%% WRITE CODE HERE %%%
    
    return
    
    % Plot principal components V(:,1)S(1,1) and V(:,2)S(2,2)
    plot([Xavg(1) Xavg(1)+V(1,1)*S(1,1)], [Xavg(2) Xavg(2)+V(2,1)*S(1,1)],...
        'c-', 'LineWidth', 2);
    plot([Xavg(1) Xavg(1)+V(1,2)*S(2,2)], [Xavg(2) Xavg(2)+V(2,2)*S(2,2)],...
        'm-', 'LineWidth', 2);
  
    legend('Samples', '\sigma', '2*\sigma', '3*\sigma', 'PC1', 'PC2');
    
    return     
    
    % Plot 2: Projected data onto PCs
    % ---------------------------------------------------------------------
    subplot(1,2,2); 
       
    switch NUM_OUTPUT_DIM
        case 1
            % Plot projected samples onto PC1 (sorted)
            %%% WRITE CODE HERE %%%
            
            xlabel('Sample Index, S');
            ylabel('Projection on PC1');  
            title('Projected Data, H=1');
        case 2
            % Plot projected samples onto 2D space (PC1,PC2)
            %%% WRITE CODE HERE %%%
            
            pbaspect([1 1 1]);
            axis([-0.1 0.1 -0.1 0.1]);
            xlabel('Projection on PC1');
            ylabel('Projection on PC2');  
            title('Projected Data, H=2');
        otherwise
            error('Can project only to 1 or 2 PCs!');
    end
    box on;
    grid on;    
    
else
    % BENCHMARK 2: OVARIAN CANCER DATA
    % *********************************************************************
    % Load ovarian cancer data
    % ---------------------------------------------------------------------
    %%% WRITE CODE HERE %%%
    return
   
    % Compute PCA using SVD
    % ---------------------------------------------------------------------
    %%% WRITE CODE HERE %%%
    
    
    % Project data onto first principal component
    Projection_1 = zeros(size(obs,1),1);
    for i=1:size(obs,1)
        Projection_1(i) = obs(i,:)*V(:,1);
    end
    
    % Project data onto second principal component
    Projection_2 = zeros(size(obs,1),1);
    for i=1:size(obs,1)
        Projection_2(i) = obs(i,:)*V(:,2);
    end
    
    % Project data onto third principal component
    Projection_3 = zeros(size(obs,1),1);
    for i=1:size(obs,1)
        Projection_3(i) = obs(i,:)*V(:,3);
    end

    % Plot 1: Singular values
    % ---------------------------------------------------------------------
    figure('units','normalized','outerposition',[0 0 1 1]); 
    subplot(2,2,1);
    
    %%% WRITE CODE HERE %%%
    
    grid on;
    xlabel('i');
    ylabel('Singular Value, \sigma_i');
    axis([0 220 1E-1 1E3]);
    title(sprintf('Ovarian Cancer Data, S=%d, N=%d\n', size(obs,1), size(obs,2)));
    
    return 
    
    % Plot 2: Cumulative energy of singular values
    % ---------------------------------------------------------------------
    subplot(2,2,2);
    
    %%% WRITE CODE HERE %%%
    
    grid on;
    xlabel('i');
    ylabel('Cumulative Energy');
    axis([0 220 0.5 1.1]);
    title(sprintf('Ovarian Cancer Data, S=%d, N=%d\n', size(obs,1), size(obs,2)));
    
    return
    
    % Plot 3: Projected data
    % ---------------------------------------------------------------------
    subplot(2,2,3:4);
    hold on;    
    
    switch NUM_OUTPUT_DIM
        case 1
            
            % Plot projected samples onto PC1 (sorted)
            %%% WRITE CODE HERE %%%
        
            grid on;
            box on;
            axis([0 220 -80 -10]);
            xlabel('Sample Index, s');
            ylabel('Projection on PC1');  
            title('Projected Data, H=1');
            h(1) = plot(NaN,'rx', 'LineWidth',3);
            h(2) = plot(NaN,'bo', 'LineWidth',3);
            legend(h, 'Cancer','Healthy');
            
        case  2
            % Plot projected samples onto 2D space (PC1,PC2)        
            for i=1:size(obs,1)
                if(strcmp(grp{i}, 'Cancer'))
                    plot(Projection_1(i),Projection_2(i), 'rx', 'LineWidth',3); 
                else
                    plot(Projection_1(i),Projection_2(i), 'bo', 'LineWidth',3);
                end
            end
            box on;
            grid on;
            xlabel('Projection on PC1');
            ylabel('Projection on PC2');  
            title('Projected Data, H=2');
            h(1) = plot(NaN,NaN,'rx', 'LineWidth',3);
            h(2) = plot(NaN,NaN,'bo', 'LineWidth',3);
            legend(h, 'Cancer','Healthy');    
    
        case  3
            % Plot projected samples onto 3D space (PC1,PC2,PC3)
            for i=1:size(obs,1)
               if(strcmp(grp{i}, 'Cancer'))
                  plot3(Projection_1(i),Projection_2(i),Projection_3(i),...
                      'rx', 'LineWidth',3);
               else
                  plot3(Projection_1(i),Projection_2(i),Projection_3(i),...
                      'bo', 'LineWidth',3);
               end
            end
            xlabel('PC1');
            ylabel('PC2');
            zlabel('PC3');
            h(1) = plot3(NaN,NaN,NaN,'rx', 'LineWidth',3);
            h(2) = plot3(NaN,NaN,NaN,'bo', 'LineWidth',3);
            legend(h, 'Cancer','Healthy');
            view(85,25);
            grid on;
            box on;
            title('Projected Data (H=3)');
            
        otherwise
            error('Can project to up to 3 PCs');
    end
end