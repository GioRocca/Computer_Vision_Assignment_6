% Extract points from the .points files thanks to the "extractpoints"
% function
P1=extractpoints('Mire\Mire\Mire1.points'); 
P2=extractpoints('Mire\Mire\Mire2.points'); 

P3=extractpoints('Rubik\Rubik\Rubik1.points'); 
P4=extractpoints('Rubik\Rubik\Rubik2.points'); 

% Import the images from the .pgm files thanks to "importfile" function
importfile('Mire\Mire\Mire1.pgm');
importfile('Mire\Mire\Mire2.pgm');

importfile('Rubik\Rubik\Rubik1.pgm');
importfile('Rubik\Rubik\Rubik2.pgm');

% call the "EightPointsAlgorithm" function passing as paramethers the sets of points. 
F = EightPointsAlgorithm (P1, P2);
F2 = EightPointsAlgorithm (P3, P4);

% call the "EightPointsAlgorithmN" function passing as paramethers the sets of points. 
F_N = EightPointsAlgorithmN (P1, P2);
F_N2 = EightPointsAlgorithmN (P3, P4);

% call the function "dochecks" to see if the results obtained are correct 
Check_Mire = dochecks(Mire1, Mire2, F, P1, P2);
Check_Rubik = dochecks(Rubik1, Rubik2, F2, P3, P4);

Check_Normalized_Mire = dochecks(Mire1, Mire2, F_N, P1, P2);
Check_Normalized_Rubik = dochecks(Rubik1, Rubik2, F_N2, P3, P4);