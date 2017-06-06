function f = strVec(lambda,azMt,eLev,p)

nAnt=size(p,2);

k=2*pi/lambda*[cos(azMt).*sin(eLev), sin(azMt).*sin(eLev), cos(eLev)];

f=1/sqrt(nAnt)*exp(-1i*k*p).';

