# Given a copy machine that is broken today, find out the state of the copy machine after one month.
# Given that if it is currently broken, there is a 15% chance that it will still be broken the next day,
# and if it is currently working, then there is a 95% chance it will work the next day. 

total = 0;

%number of experiemnts
numExperiements = 1000000;

for j = 1:1:numExperiements 
    state = 0; %currently broken
        
    desiredDay = 30;
    
    for i = 1:1:desiredDay
        if (state == 0) %not working
            if (not (rand() <= .15))
               state = 1; 
            end
        else %working
            if (not (rand() <= .95))
                state = 0;
            end
        end
    end
    
    if (state == 1) %ends up working.
        total = total + 1;
    end
end

total/numExperiements
