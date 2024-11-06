function array = dochecks(image1, image2, F, P1, P2)

% Check the epipolar constraint (x'TFx=0) holds for all points with the estimated F 
r = size(P1);
array = zeros(r(1), 1);
for i =1:r(1)

    array(i,1) =P2(i, :)* F*  P1(i, :)';
    
end

% Visualize the stereo pairs with epipolar lines of the corresponding points

Pt1 = zeros(r(1), 2);

Pt2 = zeros(r(1), 2);
for i = 1:r(1)
    
    Pt1(i,:) = [P1(i,1) P1(i,2)];
    
    Pt2(i,:) = [P2(i,1) P2(i,2)];
end

visualizeEpipolarLines(image1, image2, F, P1, P2);

end

