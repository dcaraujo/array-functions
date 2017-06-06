function b = angular_scan(str_ref,wavelength,relAntPos,plotFlag)

rangeAZ=[0 2*pi];
rangeEL=[0 pi];

[S, Phi, Theta] = steering_vector_codebook(rangeAZ,rangeEL,wavelength,relAntPos);

b = S'*str_ref;

if plotFlag == 1
    mesh(Phi*180/pi,Theta*180/pi,abs(reshape(b,size(Phi))));
    xlabel('Azimuth')
    ylabel('Elevation')   
    zlabel('Array Factor')
end