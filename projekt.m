%% Trasa z Osiedla Akademickiego do Wernyhory
%  1 - os. Akademickie
%  2 - Plac Ko�ciuszki
%  3 - Piast�w
%  4 - Bohater�w Warszawy
%  5 - Wawrzyniaka
%  6 - Poniatowskiego
%  7 - os. Przyja�ni
%  8 - Derdowskiego
%  9 - Karola Miarki
%  10 - Ku S�o�cu
%  11 - Kmieca
%  12 - Wernyhory
s = [1 1 2 2 2 3 4 7 5 6 4 8 9 9 10 11 9];
t = [2 9 3 4 7 4 5 8 6 12 12 12 7 10 11 8 6];
weights = [3 3 3 5 12 2 2 3 5 3 10 4 5 3 4 4 8];
G = graph(s,t,weights);
figure(1)

x = [7 8.55 8.50 7.15 7.15 4.55 4.55 3.05 5.35 3.05 3.05 2.50];
y = [1 3.10 5.20 5.25 7.25 7.60 3.95 5.05 0.95 0.95 2.95 10.95];
p = plot(G, 'XData',x,'YData',y,'EdgeLabel',G.Edges.Weight);
title ('Najkr�tsza trasa z os. Akademickiego do Wernyhory');
[P1, d1] = shortestpath(G,1,12);
highlight(p,P1,'EdgeColor','g');
%% Trasa z Basenu G�rniczego do Niemierzy�skiej Technopark
%  1 - Basen G�rniczy
%  2 - Plac Ko�ciuszki
%  3 - Piast�w
%  4 - Plac �o�nierza Polskiego
%  5 - Plac Rod�a
%  6 - Ko���taja
%  7 - Niemierzy�ska Technopark
%  8 - Plac Grunwaldzki
%  9 - Wyszy�skiego
%  10 - Brama Portowa
%  11 - Plac Szarych Szereg�w
s = [1 1 9 10 10 10 4 2 3 11 8 5 5 5 6 6]; % sk�d
t = [9 9 10 4 5 2 5 3 11 8 5 6 6 6 7 7]; % dok�d
weights = [8 6 2 2 3 5 2 2 2 1 2 6 4 7 5 4]; % czas przejazdu z s do t
G = graph(s,t,weights);
figure(2)

x = [20.5 8.55 8.50 11.97 12.0 12.0 8.8 9.97 15 11.97 8.70];
y = [3.20 3.10 5.20 4.97 6.55 10.5 11.98 6.55 3 3.01 6.25];

pp = plot(G, 'XData',x,'YData',y,'EdgeLabel',G.Edges.Weight);
title('Najkr�tsza trasa z Basenu G�rniczego do ul. Niemierzy�skiej');
[P, d] = shortestpath(G,1,7);
highlight(pp,P,'EdgeColor','g');