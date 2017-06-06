function W = gen_codebook_IEEE802153c(nAntennas,nBeams)

m=(0:nAntennas-1)';
k=(0:nBeams-1);
phase = floor(m/(nBeams/4)*mod(k+nBeams/2,nBeams));
W = 1i.^(phase);