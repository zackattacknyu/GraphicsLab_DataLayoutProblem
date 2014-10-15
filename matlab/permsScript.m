%v = [1 2 3 4 5 6 6];
%pv = perms(v);

%{
have black, red, green access requirement
if black, divisible by 2
if red, divisible by 3
if green, divisible by 5
%}

%this is the set of data units as ARs described above
v = [2 3 10 15 30 5 5];
pv = perms(v);

seekTimes = zeros(5040,1);

for index = 1:5040
   seekTimes(index) = getEST(pv(index,:));
end

[M,I] = min(seekTimes);

minInds = find(seekTimes==9);

goodArrangements = pv(minInds,:);