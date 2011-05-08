function [temp] = sbhs(heat, fan)
	global temp

	ok = writeserial(Handle, ascii(254)); // Indicates next step is heat value
	ok = writeserial(Handle, ascii([heat]));// Actual heat value

	ok = writeserial(Handle, ascii(253)); // Indicates next step is fan value
	ok = writeserial(Handle, ascii([fan]));// Actual fan value

    ok = writeserial(Handle, ascii(255)); // Asks SBHS for Temperature
	sleep(1);

	temporary_temp = ascii(readserial(Handle, 2)); // Read the two bytes of temperature (Before and after decimal)

	temp = temporary_temp*[1; 0.1] ;
endfunction
