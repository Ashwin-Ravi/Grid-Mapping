function Z = Sensor_Model(X,Grid)
    

Z = zeros(1,8);

%%sen is the sensor function which returns a matrix of probabilities
%%the sensor "sen" detects in the
%%north,northeast,east,southeast,south,southwest,west,northwest
OutputMaps(getGrid(50 ));
sen= zeros(1,8)

next_detect = [(X(1)),(X(2)-1)];
count=1;
sen_index = 1;

ZZ=CheckGrid(next_detect,sen_index,count,Grid);
Z(1) = ZZ;




end