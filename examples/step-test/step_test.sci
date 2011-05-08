//Heater input is passed as input argument to introduce step change
//Range of Heater input:0 to 40
//Fan input is passed as input argument which is kept at constant level
//Range of Fan input :20 to 252
//Temperature is read

function temp = step_test(heat,fan)

    temp = sbhs(heat, fan)
   
endfunction;
