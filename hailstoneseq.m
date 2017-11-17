function f = hailstoneseq (n)

if (floor(n) ~= n || (n > 0) ~= 1)
    error('n must be a natural number')
end

f(1) = n;
while (f(end) ~= 1)
    if (mod(f(end),2) == 0)
        f(end+1) = f(end) / 2;
    else
        f(end+1) = 3 *f(end) + 1;
    end
end

if (n == 1)
    plot(0, n, 'ro')
    title('Hailstone Sequence')
    xlabel('Iteration')
    ylabel('Value of f')
else
    plot(0:length(f)-1, f, 'b')
    axis([0 length(f)-1 0 max(f)])
    title('Hailstone Sequence')
    xlabel('Iteration')
    ylabel('Value of f')
end
