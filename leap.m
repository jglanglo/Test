clear
clc

a = -9.8;
Vo = 500;
Ho = 70;

bob = load('time_data.txt');

t = bob(:,2);

for i = 1:length(t)
    H(i) = Ho+Vo*t(i)+0.5*a*t(i).^2;
end

for ii = 1:length(H)
    if H(ii) > 0
        fprintf('The pumpkin is in the air at height of %.0f meters \n',H(ii));
    else
        fprintf('Splat!!! The pumpkin has hit the ground.');
    end
end

plot(t,H)
xlabel('Time (seconds)')
ylabel('Height (meters)')