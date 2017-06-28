function [Grid] = getGrid(N)
% N= 50;
Grid = zeros(N,N);


% L shapes are 3x3 blocks of 4 orientations having a frequency of 5 each.
Lshapes1 = zeros(3,3);
Lshapes2 = zeros(3,3);
Lshapes3 = zeros(3,3);
Lshapes4 = zeros(3,3);

Lshapes1(:,1) = 1;
Lshapes1(3,2) = 1;


Lshapes2(3,:) = 1;
Lshapes2(2,3) = 1;


Lshapes3(:,3) = 1;
Lshapes3(1,2) = 1;


Lshapes4(1,:) = 1;
Lshapes4(2,1) = 1;



% Ushapes are 3x3 blocks of 4 orientations having a frequency of 6 each
Ushapes1 = zeros(3,3);
Ushapes2 = zeros(3,3);
Ushapes3 = zeros(3,3);
Ushapes4 = zeros(3,3);

Ushapes1(:,1) = 1;
Ushapes1(3,:) = 1;
Ushapes1(:,3) = 1;

Ushapes2(3,:) = 1;
Ushapes2(:,3) = 1;
Ushapes2(1,:) = 1;

Ushapes3(:,3) = 1;
Ushapes3(1,:) = 1;
Ushapes3(:,1) = 1;

Ushapes4(1,:) = 1;
Ushapes4(:,1) = 1;
Ushapes4(3,:) = 1;

% Plusshapes are 3x3 blocks of 2 orientations having a frequency of 11 each
Plusshapes1 = zeros(3,3);
Plusshapes2 = zeros(3,3);

Plusshapes1(2,:) = 1;
Plusshapes1(:,2) = 1;

Plusshapes2 = Plusshapes2 + eye(3,3);
Plusshapes2(1,3) = 1;
Plusshapes2(3,1) = 1;

% Blockshapes are 2x3 blocks of 2 orientations having a frequency of 8 each
Bshapes1 = ones(2,3);
Bshapes2 = ones(2,3)';

%Oshapes are 4x3 blocks of 2 orientations having a frequency of 4 each
Oshapes1 = ones(4,3);
Oshapes1(2,2) = 0;
Oshapes1(3,2) = 0;

Oshapes2 = ones(3,4);
Oshapes2(2,2) = 0;
Oshapes2(2,3) = 0;

%Tshapes are 3x3 blocks of 4 orientations having a frequency of 7 each
Tshapes1 = zeros(3,3);
Tshapes2 = zeros(3,3);
Tshapes3 = zeros(3,3);
Tshapes4 = zeros(3,3);

Tshapes1(1,:) = 1;
Tshapes1(:,2) = 1;

Tshapes2(3,:) = 1;
Tshapes2(:,2) = 1;

Tshapes3(2,:) = 1;
Tshapes3(:,3) = 1;

Tshapes4(2,:) = 1;
Tshapes4(:,1) = 1;

%Strangeshapes are 5x5 blocks of 2 orientation having a frequency of 3 each
Strangeshapes1 = zeros(5,5);

Strangeshapes1(1:3,1:2) = 1;
Strangeshapes1(3,:) = 1;
Strangeshapes1(3,5) = 0;
Strangeshapes1(4:5,3) = 1;
Strangeshapes1(5,1) = 1;

Strangeshapes2 = Strangeshapes1';

%Numbers of Shapes
oriL = 4; %number of L orientations
numL = oriL*5;

oriU = 4;
numU = oriU*6;

oriPl = 2;
numPl = oriPl*11;


oriB = 2;
numB = oriB*8;

oriO = 2;
numO = oriO*4;

oriS = 2;
numS = oriS*3;

oriT = 4;
numT = oriT*7;



%For L Shapes

for k = 1:(numL/oriL)
    ai = round(2+ (N-1-2).*rand(1,numL/oriL));
    aj = round(2+ (N-1-2).*rand(1,numL/oriL));
    Grid(ai(k)-1:ai(k)+1,aj(k)-1:aj(k)+1) = Lshapes1;
end

for k = 1:(numL/oriL)
    ai = round(2+ (N-1-2).*rand(1,numL/oriL));
    aj = round(2+ (N-1-2).*rand(1,numL/oriL));
    Grid(ai(k)-1:ai(k)+1,aj(k)-1:aj(k)+1) = Lshapes2;
end

for k = 1:(numL/oriL)
    ai = round(2+ (N-1-2).*rand(1,numL/oriL));
    aj = round(2+ (N-1-2).*rand(1,numL/oriL));
    Grid(ai(k)-1:ai(k)+1,aj(k)-1:aj(k)+1) = Lshapes3;
end

for k = 1:(numL/oriL)
    ai = round(2+ (N-1-2).*rand(1,numL/oriL));
    aj = round(2+ (N-1-2).*rand(1,numL/oriL));
    Grid(ai(k)-1:ai(k)+1,aj(k)-1:aj(k)+1) = Lshapes4;
end


%For U Shapes
for k = 1:(numU/oriU)
    ai = round(2+ (N-1-2).*rand(1,numU/oriU));
    aj = round(2+ (N-1-2).*rand(1,numU/oriU));
    Grid(ai(k)-1:ai(k)+1,aj(k)-1:aj(k)+1) = Ushapes1;
end

for k = 1:(numU/oriU)
    ai = round(2+ (N-1-2).*rand(1,numU/oriU));
    aj = round(2+ (N-1-2).*rand(1,numU/oriU));
    Grid(ai(k)-1:ai(k)+1,aj(k)-1:aj(k)+1) = Ushapes2;
end

for k = 1:(numU/oriU)
    ai = round(2+ (N-1-2).*rand(1,numU/oriU));
    aj = round(2+ (N-1-2).*rand(1,numU/oriU));
    Grid(ai(k)-1:ai(k)+1,aj(k)-1:aj(k)+1) = Ushapes3;
end

for k = 1:(numU/oriU)
    ai = round(2+ (N-1-2).*rand(1,numU/oriU));
    aj = round(2+ (N-1-2).*rand(1,numU/oriU));
    Grid(ai(k)-1:ai(k)+1,aj(k)-1:aj(k)+1) = Ushapes4;
end

%For Plus Shapes

for k = 1:(numPl/oriPl)
    ai = round(2+ (N-1-2).*rand(1,numPl/oriPl));
    aj = round(2+ (N-1-2).*rand(1,numPl/oriPl));
    Grid(ai(k)-1:ai(k)+1,aj(k)-1:aj(k)+1) = Plusshapes1;
end

for k = 1:(numPl/oriPl)
    ai = round(2+ (N-1-2).*rand(1,numPl/oriPl));
    aj = round(2+ (N-1-2).*rand(1,numPl/oriPl));
    Grid(ai(k)-1:ai(k)+1,aj(k)-1:aj(k)+1) = Plusshapes2;
end

%For T Shapes

for k = 1:(numT/oriT)
    ai = round(2+ (N-1-2).*rand(1,(numT/oriT)));
    aj = round(2+ (N-1-2).*rand(1,(numT/oriT)));
    Grid(ai(k)-1:ai(k)+1,aj(k)-1:aj(k)+1) = Tshapes1;
end

for k = 1:(numT/oriT)
    ai = round(2+ (N-1-2).*rand(1,(numT/oriT)));
    aj = round(2+ (N-1-2).*rand(1,(numT/oriT)));
    Grid(ai(k)-1:ai(k)+1,aj(k)-1:aj(k)+1) = Tshapes2;
end

for k = 1:(numT/oriT)
    ai = round(2+ (N-1-2).*rand(1,(numT/oriT)));
    aj = round(2+ (N-1-2).*rand(1,(numT/oriT)));
    Grid(ai(k)-1:ai(k)+1,aj(k)-1:aj(k)+1) = Tshapes3;
end

for k = 1:(numT/oriT)
    ai = round(2+ (N-1-2).*rand(1,(numT/oriT)));
    aj = round(2+ (N-1-2).*rand(1,(numT/oriT)));
    Grid(ai(k)-1:ai(k)+1,aj(k)-1:aj(k)+1) = Tshapes4;
end

%For Block Shapes

for k = 1:(numB/oriB)
    ai = round(2+ (N-1-2).*rand(1,(numB/oriB)));
    aj = round(2+ (N-1-2).*rand(1,(numB/oriB)));
    Grid(ai(k)-1:ai(k)+1,aj(k)-1:aj(k)+1) = [Bshapes1;zeros(1,3)];
end

for k = 1:(numB/oriB)
    ai = round(2+ (N-1-2).*rand(1,(numB/oriB)));
    aj = round(2+ (N-1-2).*rand(1,(numB/oriB)));
    Grid(ai(k)-1:ai(k)+1,aj(k)-1:aj(k)+1) = [Bshapes2,zeros(3,1)];
end

% For O Shapes

for k = 1:(numO/oriO)
    ai = round(3+ (N-2-3).*rand(1,(numO/oriO)));
    aj = round(2+ (N-1-2).*rand(1,(numO/oriO)));
    Grid(ai(k)-2:ai(k)+2,aj(k)-1:aj(k)+1) = [Oshapes1;zeros(1,3)];
end

for k = 1:(numO/oriO)
    ai = round(2+ (N-1-2).*rand(1,(numO/oriO)));
    aj = round(3+ (N-2-3).*rand(1,(numO/oriO)));
    Grid(ai(k)-1:ai(k)+1,aj(k)-2:aj(k)+2) = [Oshapes2,zeros(3,1)];
end

for k = 1:(numS/oriS)
    ai = round(3+ (N-2-3).*rand(1,(numS/oriS)));
    aj = round(3+ (N-2-3).*rand(1,(numS/oriS)));
    Grid(ai(k)-2:ai(k)+2,aj(k)-2:aj(k)+2) = Strangeshapes1;
end

for k = 1:(numS/oriS)
    ai = round(3+ (N-2-3).*rand(1,(numS/oriS)));
    aj = round(3+ (N-2-3).*rand(1,(numS/oriS)));
    Grid(ai(k)-2:ai(k)+2,aj(k)-2:aj(k)+2) = Strangeshapes2;
end
