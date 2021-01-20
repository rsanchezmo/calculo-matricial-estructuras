function [Ke] = rigArt(EA,EI, L, alfaGrad)
    alfaRad = deg2rad(alfaGrad); 
    c = cos(alfaRad);
    s = sin(alfaRad);

    Ka = EA/L;
    Ki = 12*EI/(L^3);
    Ke = [ Ka*c^2+1/4*Ki*s^2    (Ka-1/4*Ki)*c*s       -L/4*Ki*s        -Ka*c^2-1/4*Ki*s^2      -(Ka-1/4*Ki)*c*s    0;
          (Ka-1/4*Ki)*c*s      Ka*s^2+1/4*Ki*c^2      L/4*Ki*c        -(Ka-1/4*Ki)*c*s      -Ka*s^2-1/4*Ki*c^2     0;
            -L/4*Ki*s              L/4*Ki*c          (L^2/4)*Ki           L/4*Ki*s                   -L/4*Ki*c     0;
         -Ka*c^2-1/4*Ki*s^2   -(Ka-1/4*Ki)*c*s        L/4*Ki*s         Ka*c^2+1/4*Ki*s^2       (Ka-1/4*Ki)*c*s     0;
         -(Ka-1/4*Ki)*c*s     -Ka*s^2-1/4*Ki*c^2     -L/4*Ki*c         (Ka-1/4*Ki)*c*s       Ka*s^2+1/4*Ki*c^2     0;
         0                          0                   0                   0                       0              0];    
end