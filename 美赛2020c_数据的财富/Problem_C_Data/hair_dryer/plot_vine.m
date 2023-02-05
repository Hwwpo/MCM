clc, clear;
x = readmatrix("vine_hair_dryer.csv");
y = readmatrix("helpful_rate_hair_dryer.csv");
data = [x y];

scatter(x(x==0), y(x==0), 500, 'MarkerFaceColor','b','MarkerEdgeColor','b',...
    'MarkerFaceAlpha',.1,'MarkerEdgeAlpha',.1)
hold on;
scatter(x(x==1), y(x==1), 500, 'MarkerFaceColor','r','MarkerEdgeColor','r',...
    'MarkerFaceAlpha',.1,'MarkerEdgeAlpha',.1)
set(gca,'xtick',0:1:1)
xlabel('vine');
ylabel('helpful_rate');