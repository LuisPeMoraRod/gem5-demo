## Demo Gem5

The following commands must be executed inside the root folder where gem5 source code was cloned.

1. To see the available configurations:
```
build/X86/gem5.opt configs/deprecated/example/se.py --help
```

2. To see available CPU types:
```
build/X86/gem5.opt configs/deprecated/example/se.py -c tests/test-progs/hello/bin/x86/linux/hello --list-cpu-types
```

2. To run Hello World.

```
build/X86/gem5.opt -d out_o3/ configs/deprecated/example/se.py -c tests/test-progs/hello/bin/x86/linux/hello --cpu-type=DerivO3CPU --caches
``` 

3. Run again to compare CPUs:
```
build/X86/gem5.opt -d out_timing/ configs/deprecated/example/se.py -c tests/test-progs/hello/bin/x86/linux/hello --cpu-type=TimingSimpleCPU --caches
```

4. Check differences:
```
diff -u out_o3/stats.txt out_timing/stats.txt &> diff_o3_timing.txt
```

5. To see difference in specific attribute:
```
cat diff_o3_timing.txt | grep system.cpu.dcache.demandHits::total
```
