% {
Provided a 1D array of integers, find all combinations of 3 values from this set such that:
a+b+c=0

Your code should return the answer in 2D array format, where each row is a solution set (3
columns per row). If no solution sets can be found for a given input, the code should output a value of
zero.

Develop and implement a method to identify and remove and solutions which are numerically
equivalent, so that the result from your code doesn't have any repeated solutions. This should be able to
match solutions which contain the same values but in different orders. This means that if the sets [3 1
-4] and [3 -4 1] are in the solution your method should still identify them as equivalent and only return
one of them.
% }

function [Out] = final(a, b, c, d, e)
 
z(1)=a;
z(2)=b;
z(3)=c;
z(4)=d;
z(5)=e;
 
m = 1;
flag = 0;
for i = 1:5
    for j = 1:5
        for k = 1:5
            if (i ~= j) & (j ~= k) & (i ~= k) 
                sum = z(i) + z(j) + z(k);
                if (sum == 0)
                   if m ~= 1
                       for n = 1:(m-1)
                           v(1) = z(i);
                           v(2) = z(j);
                           v(3) = z(k);
                           p = perms(v);
                           for l = 1:6
 
                              if (p(l,1) == Out(n,1)) & (p(l,2) == Out(n,2)) & (p(l,3) == Out(n,3))
                                  flag = 1;
                              end
 
                           end
                       end
                   end
                           
                           if flag ~= 1
                                Out (m,1) = z(i);
                                Out (m,2) = z(j);
                                Out (m,3) = z(k);
                                m = m + 1;
                           end
                           flag = 0;
                               
 
                end
            end
        end
    end
end
if m == 1
    Out = 0;
end
end
