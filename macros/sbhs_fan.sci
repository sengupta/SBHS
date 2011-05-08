function sbhs_fan(fan)
    ok = writeserial(Handle, ascii(253));
    ok = writeserial(Handle, ascii([fan]));
    sleep(1);
endfunction
