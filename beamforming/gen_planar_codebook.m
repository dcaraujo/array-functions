function W = gen_planar_codebook(nAntennas_vec,nBeams_vec)


W_x = gen_codebook_IEEE802153c(nAntennas_vec(1),nBeams_vec(1));
W_y = gen_codebook_IEEE802153c(nAntennas_vec(2),nBeams_vec(2));

W = kron(W_x,W_y);