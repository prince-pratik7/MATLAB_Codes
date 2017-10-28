clear
clc
it = 30;
inertia = 1.0;
c_fact = 2.0;
sws = 200;
sw=zeros(200,7)
step = 1;
for i = 1 : 200
sw(step, 1:7) = i;
step = step + 1;
end
sw(:, 7) = 2000       
sw(:, 5) = 0          
sw(:, 6) = 0         
for iter = 1 : it
    for i = 1 : sws
        sw(i, 1) = sw(i, 1) + sw(i, 5)/1.2    
        sw(i, 2) = sw(i, 2) + sw(i, 6)/1.2    
        u = sw(i, 1)
        v = sw(i, 2)
        value = (u - 20)^2 + (v - 10)^2          
        if value < sw(i, 7)           
            sw(i, 3) = sw(i, 1)    
            sw(i, 4) = sw(i, 2)    
            sw(i, 7) = value          
        end
    end
[temp, gbest] = min(sw(:, 7))       
for i = 1 : sws
        sw(i, 5) = rand*inertia*sw(i, 5) + c_fact*rand*(sw(i, 3)...
            - sw(i, 1)) + c_fact*rand*(sw(gbest, 3) - sw(i, 1))   
        sw(i, 6) = rand*inertia*sw(i, 6) + c_fact*rand*(sw(i, 4)...
            - sw(i, 2)) + c_fact*rand*(sw(gbest, 4) - sw(i, 2))   
end
clf
plot(sw(:, 1), sw(:, 2), 'x')  
axis([-2 200 -2 200])
grid on;
pause(.1)
end