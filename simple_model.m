source_pos = [0,-.1]
mass_pos = [5,0]
observer_pos = [10,0]
vector = [1,0.02]
angle_before = 0.02
X=[cos(angle_before), sin(angle_before)]
G=6.67*10^-11
M=10*10^30
c=299792458
b=5000000
del_angle = 4*G*M/(b*c^2)
new_theta=angle_before-del_angle
p1=[0,0]
p2 = [5, .1]
X=[p1(1), p2(1)]
Y = [p1(2),p2(2)]
r=50
p3=[r*cos(new_theta),r*sin(new_theta)]
X3= [p2(1),p3(1)]
Y3= [p2(2),p3(2)]
all_angles = linspace(0.01,0.05,10)    

for ind=1:10
    points=get_points(all_angles(ind),source_pos,mass_pos,M)
    hold on
    X2=[source_pos(1),points(1)]
    Y2 = [source_pos(2),points(2)]
    plot(X2,Y2, '.-r')
    X4=[points(1),points(3)]
    Y4 = [points(2),points(4)]
    plot(X4,Y4, '.-r')
end
axis([-2 11 -.5 .5])

% all_angles = linspace(0.02,0.4,10)    
plot(source_pos(1),source_pos(2),'o','MarkerSize', 20);
% 
plot(mass_pos(1),mass_pos(2),'o', 'MarkerSize', 20);
% plot(X,Y, '.-r')
% plot(X3,Y3, '.-r')



