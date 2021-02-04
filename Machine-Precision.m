%Machine Precision
clear all

%% (a) Using for loop
E = 1;
for i=1:100
   E = E/2;
   s = 1+E;
   if s == 1
       %to take epsilon one step back
       E = E*2;
       break
   end
end
i
fprintf('(a) Epsilon = %.22f .\n', E)

%% (b) Using While loop
E2 = 1;
while (1 + E2) ~= 1
    E2 = E/2;
    
end
%to take epsilon one step back
E2 = E2*2;
fprintf('(b) Epsilon = %.22f .\n', E2)

%% (c) 
f = 1/(2.^(i-1));
fprintf('(c) Epsilon = %.22f .\n', f)

%% (e)
check = 1+(E);
check2 = 1+(E/2);

fprintf('(d) 1 + Epsilon     =  %.22f .\n', check)
fprintf('    1 + (Epsilon/2) =  %.22f .\n', check2)







