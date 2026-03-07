%{
second largest element 
%}
arr=[1 2 3 4 5 6 7 8 8 0 11 22 22];
arr=unique(arr);
s=sort(arr);
second_largest=s(end-1);
disp(second_largest);