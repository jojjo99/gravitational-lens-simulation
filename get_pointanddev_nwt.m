function [pointanddev] = get_pointanddev_nwt(init_theta,source_pos,mass_pos,l, M)

    G=6.67*10^-11;
    c=299792458;
    
    point=[source_pos(1)+l*cos(init_theta),source_pos(2)+l*sin(init_theta)]
    
    r=sqrt((point(1)-mass_pos(1))^2+(point(2)-mass_pos(2))^2);
    if mass_pos(2)>point(2)
        dev = (2*G*M)/(10^6*(c^2)*r);
    end
    if mass_pos(2)<point(2)
        dev = -(2*G*M)/(10^6*(c^2)*r);
    end
        
    
    pointanddev = [point, dev];
end