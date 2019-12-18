%{
Frequency modulated continuous wave


                                  ___  
     /|     /|     /|     /|       |      
    / |    / |    / |    / |       |
   /  |   /  |   /  |   /  |       |
  /   |  /   |  /   |  /   |      Bs
 /    | /    | /    | /    |       |
/     |/     |/     |/     |      _|_

      |--Ts--|


%}



% Chirp frequency bandwith

Blow = 77;
Bhigh = 77.113;
BsG = Bhigh - Blow;
Bs = BsG*1000;

% Chirp time
Ts = 18;

% Slope of the sweep = Bs/Ts (Mhz/s)
Slope = Bs/Ts;

% Show Slope
disp(Slope)