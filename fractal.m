% Steps
N = 100000
% Points
point1 = [0,0];
point2 = [100,0];
point3 = [50, 100];


currentpoint = point1;
points = currentpoint;
for i = 2:N;
  switch (randi(3))
    case 1
      currentpoint = .5*(-point1+currentpoint)+point1;
    case 2
      currentpoint = .5*(-point2+currentpoint)+point2;
    case 3
      currentpoint = .5*(-point3+currentpoint)+point3;
   endswitch

   points = [points;currentpoint];
endfor

%Plot
scatter(points(:,1),points(:,2),'.')
