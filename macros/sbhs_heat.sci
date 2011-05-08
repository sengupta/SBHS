function sbhs_heat(heat)
    ok = writeserial(Handle, ascii(254));
    ok = writeserial(Handle, ascii([heat]));
    sleep(1);
endfunction
