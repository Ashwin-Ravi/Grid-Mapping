function OutputMaps(R_Map)
% [N N] = size(R_Map);
N = 50;
axis_x = linspace(1,N,N);
axis_y = linspace(1,N,N);


%Horizontal Grid
for k = 1:length(axis_y)
  line([axis_x(1) axis_x(end)], [axis_y(k) axis_y(k)])
end
% Vertical grid
for k = 1:length(axis_y)
  line([axis_x(k) axis_x(k)], [axis_y(1) axis_y(end)])
end

axis([1 N 1 N]);
box
hold on;

% R_Map = zeros(N);
% R_Map(3:20,6:32) = 1;
% R_Map(5,15) = 10;
for i = 1:N
    for j = 1:N
        if R_Map(i,j) == 1
            plot(i:i+1,j:j+1,'k');
        end
        if R_Map(i,j) == 10
            plot(i:i+1,j:j+1,'r');
        end
    end
end
hold off;

