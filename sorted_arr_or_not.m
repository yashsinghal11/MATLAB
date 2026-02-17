%{
check if arr is sorted
%}

arr=[1 2 3 4];
sorted_arr=sort(arr);
if isequal(arr,sorted_arr);
    disp("sorted array");
else;
    disp("unsorted array");
end;