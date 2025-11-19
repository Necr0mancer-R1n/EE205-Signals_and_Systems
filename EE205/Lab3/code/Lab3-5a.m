a0 = 1;
a2 = exp(1j * pi/4);
a_neg2 = conj(a2);
a4 = 2 * exp(1j * pi/3);
a_neg4 = conj(a4);


if isequal(a2, conj(a_neg2)) && isequal(a4, conj(a_neg4))
    disp('x[n] is purely real because a_k = a_{-k}^*');
else
    disp('x[n] is complex-valued');
end