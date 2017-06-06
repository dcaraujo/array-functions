function [codebook, Phi, Theta] = steering_vector_codebook(rangeAZ,rangeEL,wavelength,relAntPos)

% rangeAZ = [az_initial az_end]
% rangeEL = [el_initla el_end]

azimuth = rangeAZ(1):pi/20:rangeAZ(2);
elevation = rangeEL(1):pi/20:rangeEL(2);

[Phi,Theta]= meshgrid(azimuth,elevation);

azmt = Phi(:);
elev = Theta(:);

codebook = strVec(wavelength,azmt,elev,relAntPos);