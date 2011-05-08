function [temp] = sbhs(heat, fan)
    MyJSON_TCLEscaped = "\{\""heat\"": " + string(heat) + ', ' + ..
          " \""fan\"": " + string(fan)         + .. 
          "\}";
    SOCKET_write(1, MyJSON_TCLEscaped)
    sleep(300)
    mat = SOCKET_read(1)
    temp = evstr(mat) // Sanitize this! 
endfunction