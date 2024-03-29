-module(recursive).
-export([fac/1, len/1, tail_fac/1, tail_len/1]).


%% calculate length of data
len([]) -> 0;
len([_ | T]) -> 1 + len(T).

%% tail recursion
tail_len(L) -> tail_len(L,0).
tail_len([], Acc) -> Acc;
tail_len([_ | T], Acc) -> tail_len(T, Acc + 1).


%% calculate factorial
fac(0) -> 1;
fac(N) when N > 0 -> N * fac(N-1).

%% tail recursion
tail_fac(N) -> tail_fac(N, 1).
tail_fac(0, Acc) -> Acc;
tail_fac(N, Acc) when N > 0 -> tail_fac(N-1, N*Acc).
