close all;
clear;

n = 0:9;
%Part A
x = unit_step(0,n) - unit_step(10,n);

figure()
stem(n,x);
title("x[n]")
ylabel("Amplitude")
xlabel("Time Steps")


%Part B
a = conv(x,x);
b = conv(a,x);
c = conv(b,x);
d = conv(c,x);

%Part C

figure();
n_a = 0:size(a,2)-1;
stem(n_a,a);
title("a[n]")
ylabel("Amplitude")
xlabel("Time Steps")

figure();
n_b = 0:size(b,2)-1;
stem(n_b,b);
title("b[n]")
ylabel("Amplitude")
xlabel("Time Steps")

figure();
n_c = 0:size(c,2)-1;
stem(n_c,c);
title("c[n]")
ylabel("Amplitude")
xlabel("Time Steps")

figure();
n_d = 0:size(d,2)-1;
stem(n_d,d);
title("d[n]")
ylabel("Amplitude")
xlabel("Time Steps")


function output = unit_step(start, n)
    output = ones(size(n));
    for iter = 1:size(n,2)
        if n(iter) < start
            output(iter) = 0;
        end
    end
end