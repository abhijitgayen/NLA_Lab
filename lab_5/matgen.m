function A = matgen(n,ka)
[U ,R]=qr(rand(n));
[V ,R]=qr(rand(n));
d=zeros;
for it=1:n
    d(it)=ka^((-(it-1))./(n-1));
end
D=diag(d,0);
A=U*D*V';
end

