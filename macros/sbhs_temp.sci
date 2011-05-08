function temp = sbhs_temp()
    ok = writeserial(Handle, ascii(255));
    sleep(1);
    temporary_temp = ascii(readserial(Handle, 2));
    temp = temporary_temp*[1; 0.1]
endfunction
