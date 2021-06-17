N=1:100;
for i=1:100
  [o_free(i)]=ShodCLAY(i);
  [A_cond(i)]=ShodCLAY(i);
  [A_e(i)] = ShodCLAY(i);
  [X_error(i)] = ShodCLAY(i);
endfor

plot(N,o_free);
hold
plot(N,A_cond);
plot(N,A_e); 
plot(N,X_error);