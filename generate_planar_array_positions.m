function relAntPosTx = generate_planar_array_positions(nvecTx,nVerticalAntennaElements,nHorizontalAntennaElements,wavelength,elementSpacingFactor)

nAntennaElements = nVerticalAntennaElements*nHorizontalAntennaElements;

X_centered = zeros(3,nAntennaElements);
X_centered(~nvecTx,:) = [repmat((1:nHorizontalAntennaElements)-mean(1:nHorizontalAntennaElements),[1 nVerticalAntennaElements]); ...
                       reshape(repmat((1:nVerticalAntennaElements)-mean(1:nVerticalAntennaElements),[nHorizontalAntennaElements 1]),[1 nAntennaElements])];

% * Element spacing is scaled w.r.t. elementSpacingFactor wavelength
relAntPosTx = X_centered.*(elementSpacingFactor*wavelength); %figure, plot3(relAntPosTx(1,:), relAntPosTx(2,:), relAntPosTx(3,:),'bo')



