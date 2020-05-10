function [points] = get_points(init_theta,source_pos,mass_pos, M)
%GET_POINTS Summary of this function goes here
%   Detailed explanation goes here
G=6.67*10^-11
c=299792458


x1=mass_pos(1)-source_pos(1)
y1=x1*tan(init_theta)
p1 = [x1,y1]
b= (y1-mass_pos(2))*10^8
del_angle = 4*G*M/(b*c^2)
new_theta=init_theta-del_angle
r=50
p2=[r*cos(new_theta),r*sin(new_theta)]
points = [p1 p2]
end

