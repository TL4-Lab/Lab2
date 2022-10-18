clear;
close all;

n = 0:2;
w = -3*pi: 1/20 *pi :3*pi;
h_1 = 1/4 * impulse(0,n) + 1/2 * impulse(1,n) + 1/4 * impulse(2,n);
h_2 = -1/4 * impulse(0,n) + 1/2 * impulse(1,n) - 1/4 * impulse(2,n);

figure()
stem(n,h_1);

figure()
stem(n,h_2);
    
dtft_h_1 = calculate_dtft(h_1,w');
figure()

plot(w, dtft_h_1)

dtft_h_2 = calculate_dtft(h_2,w');
figure()
plot(w,dtft_h_2);

function output = impulse(k, n)
    output = zeros(size(n));
    output(k + 1) = 1;
end

function output_dtft = calculate_dtft(x,w)
    n = -ceil((length(x) - 1)/2):floor((length(x)-1)/2);
    output_dtft = sum(exp(-1i*w*n) .* x,2);
end
