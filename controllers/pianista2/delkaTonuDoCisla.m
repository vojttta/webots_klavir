function delka_tonu = delkaTonuDoCisla(delka_tonu)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    if delka_tonu == "CELA"
        delka_tonu = 1;
    elseif delka_tonu == "PULOVA"
        delka_tonu = 1/2;
    elseif delka_tonu == "CTVRTOVA"
        delka_tonu = 1/4;
    end
    
end

