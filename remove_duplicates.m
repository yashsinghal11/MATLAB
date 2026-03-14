%{
remove duplicates form array
%}

arr=[6  1 2 2 3 4 4 5]
arr=unique(arr, "stable")
disp(arr)