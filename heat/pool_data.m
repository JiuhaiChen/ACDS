function [Theta] = pool_data(xx,U,dUdx,dUdy,d2Udx2,d2Udy2,d2Udxdy)
%% pool data

Theta = [ones(size(xx)) U U.^2 dUdx dUdy U.*dUdx U.*dUdy dUdx.*dUdx dUdy.*dUdy  dUdy.*dUdx d2Udx2 d2Udy2 d2Udxdy...
     d2Udx2.*U d2Udx2.*dUdx d2Udx2.*dUdy d2Udy2.*U d2Udy2.*dUdx d2Udy2.*dUdy d2Udxdy.*U d2Udxdy.*dUdx d2Udxdy.*dUdy ...
     d2Udx2.*d2Udx2 d2Udx2.*d2Udy2 d2Udx2.*d2Udxdy d2Udxdy.*d2Udxdy d2Udy2.*d2Udy2 d2Udy2.*d2Udxdy];

end
