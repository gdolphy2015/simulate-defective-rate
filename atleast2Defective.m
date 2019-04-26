%counter for the nth lot that has >= 2 defectives
total = 0;

%number of lots that contain 50 boxes.
N = 900000;

for j = 1:1:N
    X = zeros(50,1);
    
    count = 0; %count how many defects are in this lot of 50.
    
    %generate uniform distributed random values between 0 and 1 for each 
    %product in the box of 50.
    for i = 1:1:50
       %check to see if it's defective
       if (rand() <= .05)
           count = count + 1;
       end
    end
    
    if (count >= 2)
        total = total + 1;
    end
end

total/N
