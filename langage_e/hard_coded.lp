awake(0).
fall_asleep(1).
alarm(2).

generated_awake(T) :- alarm(T-1), not_off(T-1).
generated_not_awake(T) :- fall_asleep(T-1).

awake(T) :- generated_awake(T).
not_awake(T) :- generated_not_awake(T).
off(T) :- generated_off(T).
not_off(T) :- generated_not_off(T).

off(0) :- not not_off(0).
not_off(0) :- not off(0).
awake(0) :- not not_awake(0).
not_awake(0) :- not awake(0).

off(T) :- off(T-1), not generated_not_off(T), T<4.
not_off(T) :- not_off(T-1), not generated_off(T), T<4.
awake(T) :- awake(T-1), not generated_not_awake(T), T<4.
not_awake(T) :- not_awake(T-1), not generated_awake(T), T<4.
