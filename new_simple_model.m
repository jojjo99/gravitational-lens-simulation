clc;clear all;

l=0.15;
M=10^31;

source_pos = [0,0];
mass_pos = [10,1];

angles = linspace(0.02,0.04,10);

initialpoints = zeros(10,2);
devs = zeros(10,1);
initialpointsanddevs = [initialpoints, devs];

plot(source_pos(1),source_pos(2), 'o', 'MarkerSize', 5)
hold on
plot(mass_pos(1),mass_pos(2),'o', 'MarkerSize', 20);

for i = 1:68
    axis([-2 20 -1 5])
    for j = 1:10 
    pointsanddevs(j,:) = get_pointanddev(angles(j)+devs(j),initialpointsanddevs(j,:),mass_pos,l,M)
    X = [initialpointsanddevs(j,1), pointsanddevs(j,1)];
    Y = [initialpointsanddevs(j,2), pointsanddevs(j,2)];
    plot(X,Y, '.-r')
    hold on
    devs(j)=pointsanddevs(j,3);
    end
    initialpointsanddevs = pointsanddevs;
    pause(0.05)
end



