function [temp,CO,et] = imc(setpoint,disturbance,alpha)
global temp heat_in fan_in et SP CO u_old u_new e_old e_new

e_new = setpoint - temp;
b=((1-alpha)/0.009);
u_new = u_old + b*(e_new - (0.983*e_old));


et = setpoint - temp;

CO = u_new;

  if CO>40
    CO = 40;
  end;
  
  if CO<-1
    CO = -1;
  end;
  
u_new = CO;     
  
u_old = u_new;
e_old = e_new;

heat_in = CO;
fan_in = disturbance;

temp = sbhs(heat_in, fan_in)
endfunction;

