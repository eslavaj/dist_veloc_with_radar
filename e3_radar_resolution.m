%{

Radar range resolution:
Capability of recognition of objects on the logitudinal
direction of the beam.
It is how fine the mesure of distance between an object and
sensor can be.

dres = c/(2*Bs)


Radar velocity resolution:
If two targets have the same range they can still be resolved 
if they are traveling at different velocities. 
The velocity resolution is dependent on the number of chirps. 
As discussed for our case we selected to send 128 chirps. 
A higher number of chirps increases the velocity resolution, 
but it also takes longer to process the signal.


Radat angle resolution:
Radar is capable of separating two targets spatially. 
If two targets are at similar range travelling at same velocities, 
then they can still be resolved based on their angle in radar coordinate system. 
Angle resolution depends on different parameters depending on the angle estimation technique used.


%}


