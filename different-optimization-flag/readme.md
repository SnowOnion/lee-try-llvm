1. no `-O` flag == `-O0`
1. In [this case](power.c), `<= -O0` has no `phi` instruction
1. In [this case](power.c), `>= -O1` has `phi` instruction

```
clang -S -emit-llvm -o power-O-default.ll -c power.c
clang -S -emit-llvm -o power-O0.ll -c power.c -O0
clang -S -emit-llvm -o power-O1.ll -c power.c -O1
clang -S -emit-llvm -o power-O2.ll -c power.c -O2
clang -S -emit-llvm -o power-O3.ll -c power.c -O3
```

p.s. 
```
clang -emit-llvm -o power.bc -c power.c -O3
```