isa(cycle,vehicle).
isa(train,vehicle).
isa(motorcycle,vehicle).
isa(car,vehicle).
isa(rikshaw,vehicle).
isa(ship,vehicle).

hasprop(ship,travel,water).
hasprop(train,travel,rail).
hasprop(cycle,travel,road).
hasprop(motorcycle,travel,road).
hasprop(car,travel,road).
hasprop(rickshaw,travel,road).

isa(electrictrain,train).

isa(passengertrain,train).

hasprop(ship,wheel,zero).
hasprop(cycle,wheel,two).
hasprop(motorcycle,wheel,two).
hasprop(car,wheel,four).
hasprop(rikshaw,wheel,three).

hasprop(rikshaw,colour,yellow).

isa(innova,car).
isa(swift,car).

hasprop(innova,colour,white).
hasprop(swift,colour,red).

hasprop(innova,mileage,ten).
hasprop(swift,mileage,twenty).

isa(rx100,motorcycle).
isa(pular,motorcycle).

hasprop(rx100,mileage,fifty).
hasprop(rx100,colour,black).
hasprop(pulsar,mileage,fortyfive).
hasprop(pulsar,colour,blue).

hasprop(rikshaw,mileage,eighty).

hasprop(train,capacity,1200).
hasprop(innova,capacity,9).
hasprop(swift,capacity,5).
hasprop(cycle,capacity,2).
hasprop(motorcycle,capacity,3).
hasprop(rikshaw,capacity,4).
hasprop(ship,capacity,300).


hasproperty(X,Y,Z) :- hasprop(X,Y,Z).
hasproperty(X,Y,Z) :- isa(X,L),hasproperty(L,Y,Z).