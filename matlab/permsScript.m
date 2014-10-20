%v = [1 2 3 4 5 6 6];
%pv = perms(v);

%{
have black, red, green access requirement
if black, divisible by 2
if red, divisible by 3
if green, divisible by 5
%}

%this is the set of data units as ARs described above
%v = [2 3 10 15 30 5 5];
v = [10 30 6 15];
pv = perms(v);

seekTimes = zeros(24,1);

for index = 1:24
   seekTimes(index) = getEST(pv(index,:));
end

[M,I] = min(seekTimes);

minInds = find(seekTimes==7);

goodArrangements = pv(minInds,:);