%{
even odd count
%}
even_cnt=0;
odd_cnt=0;
arr=[1 2 3 4 5 6 7 8];
n=length(arr);
for i=1:n;
    if (mod(arr(i),2)==0);
        even_cnt=even_cnt+1;
    else;
        odd_cnt=odd_cnt+1;
    end;
end;

fprintf("even_cnt=%d\n",even_cnt);
fprintf("odd_cnt=%d\n",odd_cnt);

