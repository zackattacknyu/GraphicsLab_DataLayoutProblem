%v = [1 2 3 4 5 6 6];
%pv = perms(v);

%{
have black, red, green access requirement
if black, divisible by 2
if red, divisible by 3
if green, divisible by 5
%}

%this is the set of data units as ARs described above
v = [2 3 10 2 30 5 5];

sizeV = size(v);
num = sizeV(2);
div2start = 0; div2end = 1;
div3start = 0; div3end = 1;
div5start = 0; div5end = 1;
for index = 1:num
   
    if(mod(v(index),2) == 0)
        
        if(div2start == 0)
           div2start = index; 
        end
        
        div2end = index;
    end
    
    if(mod(v(index),3) == 0)
        
        if(div3start == 0)
           div3start = index; 
        end
        
        div3end = index;
    end
    
    if(mod(v(index),5) == 0)
        
        if(div5start == 0)
           div5start = index; 
        end
        
        div5end = index;
    end
    
end

est = (div5end-div5start) + (div3end-div3start) + (div2end-div2start);