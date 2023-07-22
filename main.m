% Author: Grace Piroscia
%
%
clc;
clear;

%% Import the number sequences
load("NumberSequences.mat");

%% Plot in polar representation (r,theta) = (n,n) for any n in the sequence
n_intervals = [10,40,100,200,400,1000, 10000];
figure('Name','Famous Geometric Number Series');
set(gcf, 'Color', 'w')

t = tiledlayout(6,length(n_intervals));
t.TileSpacing = "tight";
t.InnerPosition = [0.05,0.05, 0.9, 0.9];
for s = 1:6
    for i = 1:length(n_intervals)
        d = nseq(s).data; %load
        nexttile(t)

        d = d(1:n_intervals(i));
        % clean for any infs
        d(isinf(d)) = [];

        polarplot(d,log10(d), 'y.', 'MarkerSize', 1); %plot just the number sequencem points
        % hold on
        % vq = pchip(1:length(d),d, 1:0.01:length(d)); %pchip interpolate plot for smooth spiral
        % polarplot(vq,vq,'y')
        % hold off


        if s == 1
            subtitle("n = " + num2str(n_intervals(i)));
        end
    
        if i == 1
            title(nseq(s).name)
        end
    
        ax = gca;
        ax.ThetaTickLabel = [];
        ax.RTickLabel = [];
        set(gca, 'color', 'k');   
    end
end

%% Now just arithmetic Sequences:
n_intervals = [10,40,100,200,400,1000, 10000];
figure('Name','Arithmetic Series');
set(gcf, 'Color', 'w')

t = tiledlayout(5,length(n_intervals));
t.TileSpacing = "tight";
t.InnerPosition = [0.05,0.05, 0.9, 0.9];
for s = 7:length(nseq)
    for i = 1:length(n_intervals)
        d = nseq(s).data; %load
        nexttile(t)

        d = d(1:n_intervals(i));
        % clean for any infs
        d(isinf(d)) = [];

        polarplot(d,d, 'y.', 'MarkerSize', 1); %plot just the number sequencem points
        % hold on
        % vq = pchip(1:length(d),d, 1:0.01:length(d)); %pchip interpolate plot for smooth spiral
        % polarplot(vq,vq,'y')
        % hold off


        if s == 1
            subtitle("n = " + num2str(n_intervals(i)));
        end
    
        if i == 1
            title(nseq(s).name)
        end
    
        ax = gca;
        ax.ThetaTickLabel = [];
        ax.RTickLabel = [];
        set(gca, 'color', 'k');   
    end
end

%% Interactive Polar Plots


