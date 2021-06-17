function [o_free1,a_c1,true_ans, er_delta_x_norm ] = ShodCLAY (N)
#quest 1
A(N,N) = zeros;
A = rand(N,N);
b = rand(N,1);
x = A \ b;
nev=(A * x - b) / norm(b);
norm_nev = norm(nev);
# 5
delta_b = rand(N,1);
# 6
obs_delb = norm(b - delta_b);
abs_deld = norm(b - delta_b) / norm(b);
# 7
bdb = b + delta_b;
# 8 
xdb = A \ bdb;
delta_x = xdb - x;
# 9 
obs_xdb = norm(x - delta_x);
abs_xdb = norm(x - delta_x) / norm(x);
# 10
o_free1 = abs_xdb / abs_deld; 
# 11
a_c1=cond(A);

#quest 2 
A(N,N) = zeros;
A = rand(N,N);
#3
m_e=eps;
#4
x_exact = rand(N,1);
#5
b = A * x_exact;
#6
x = A \b;
#7
nev = (A * x - b) / norm(b);
nev_norm = norm(nev);
#8
er_delta_x = x - x_exact;
er_delta_x_norm = norm(er_delta_x) / norm (x_exact);
#9 
# if((true_ans = cond(A) * m_e)== er_delta_x_norm )
#    print("agreed \n")
#  endif
endfunction 
 
 