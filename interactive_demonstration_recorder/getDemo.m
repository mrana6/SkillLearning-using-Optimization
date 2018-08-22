clc,clear,close all
% =================================
% Code: Reza Ahmadzadeh - 2012
% =================================
answer = inputdlg('Enter number of demonstrations:','nDemo',1,{'3'});
nDemo = str2double(answer{1});

h = figure('Position', [800, 100, 600, 600]);
D = cell(1,nDemo);
demos = D; % a variable to store demonstrations in the LASA dataset format
dt = 0.01; % sampling interval

for ii=1:nDemo
    title(['Draw Demo no.' num2str(ii) ' out of ' num2str(nDemo)]);
    xlabel('x_1');ylabel('x_2');
    
    A = axis;
    Xlim = xlim;
    Ylim = ylim;
    P = get_pencil_curve(h);
    set(h,'Position', [800, 100, 600, 600]);
    D{ii} = P;
    axis(A);
    xlim(Xlim);
    ylim(Ylim);
    demos{1,ii}.pos = D{1,ii}'; % LASA dataset format
    demos{1,ii}.time = [dt:dt:size(D{1,ii},1)*dt];
end