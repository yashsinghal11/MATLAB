%{
rotate array by k positions
%}

arr=[1 2 3 4 5 6];
k=4;
rotated_arr=[arr(k+1:end) arr(1:k)];
disp(rotated_arr);