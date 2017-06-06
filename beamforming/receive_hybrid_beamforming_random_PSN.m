function [analog_modules,blkDiag_mTx] = receive_hybrid_beamforming_random_PSN(number_of_antennas,number_of_subarrays,nRF_chains_per_subarray)


% gamma is defined as  (number of antennas at one subarray)/(number of RF chains connected to the subarray)
% bit_resolution defines the number of discre phase

Phases = 2*pi*rand([number_of_antennas/number_of_subarrays,nRF_chains_per_subarray,number_of_subarrays]);
analog_modules = exp(1i*Phases);

A = cell([size(analog_modules,3),1]);

for ii = 1:size(analog_modules,3)
   A{ii}=analog_modules(:,:,ii);     
end

blkDiag_mTx = blkdiag(A{:});


