function [F] = EightPointsAlgorithm(P1, P2)

% write down the matrix A
N =size(P1);

A = zeros(N(1),3*N(2));

    for i = 1:N(1)
        A(i,:) = [P2(i,1)*P1(i,1) P2(i,1)*P1(i,2) P2(i,1) P2(i,2)*P1(i,1) P2(i,2)*P1(i,2) P2(i,2) P1(i,1) P1(i,2) 1];
    end
    
    % Compute the SVD decomposition of A
    [U, D, V]=svd(A);
    
    % Select as solution the last column of V
    s=size(V);
    f=V(:,s(2));
    
    % Reshape the column vector f so to obtain a matrix F (see function reshape)
    F=reshape(f,[3, 3])';
    
    % Force the rank of F to be 2:
    % use the SVD to decompose the matrix
    [U, D, V] = svd(F);
    D(3,3)=0;
    
    % recompute the final F
    F=U*D*V';
    
    
end

