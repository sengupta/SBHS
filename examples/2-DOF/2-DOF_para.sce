global temp heat_in fan_in CO u_new u_old u_old_old  r_old y_old Rc1 Rc2 Rc3 Sc1 Sc2 Tc1 Tc2 gamm
exec desired.sci
exec pp_im.sci
exec polsplit3.sci
exec zpowk.sci
exec polmul.sci
exec polsize.sci
exec xdync.sci
exec rowjoin.sci
exec left_prm.sci
exec t1calc.sci
exec indep.sci
exec seshft.sci
exec makezero.sci
exec move_sci.sci
exec colsplit.sci
exec clcoef.sci
exec cindep.sci
exec cosfil_ip.sci
exec polyno.sci
// Transfer function
B = 0.0106546; A = [1 -0.9829]; k=1;

// Transient specifications
rise = 127
epsilon = 0.05 
Ts = 1
phi = desired(Ts,rise,epsilon)

// Controller design
Delta = [1 -1];  // internal model of step used
[Rc,Sc,Tc,gamm] = pp_im(B,A,k,phi,Delta);

// parameters for 2-DOF.cos
gamm
[Tcp1,Tcp2] = cosfil_ip(Tc,1); // Tc/1
Tc=coeff(Tcp1)
Tc1=Tc(1,2)
Tc2=Tc(1,1)
[Rcp1,Rcp2] = cosfil_ip(1,Rc); // 1/Rc
Rc=coeff(Rcp2)
Rc1=Rc(1,3)
Rc2=Rc(1,2)
Rc3=Rc(1,1)
[Scp1,Scp2] = cosfil_ip(Sc,1); // Sc/1
Sc=coeff(Scp1)
Sc1=Sc(1,2)
Sc2=Sc(1,1)



