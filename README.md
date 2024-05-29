# Demo Gem5

## Exeucte Hello World
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

## Execute [SPEC benchmark](https://github.com/timberjack/Project1_SPEC)
1. Go to `spec` directory:
```
cd ~/repos/ac2/demo-gem5/spec
```
2. Explain SPEC benchmarks
   
El **benchmark 470.lbm**, también conocido como _Leaky Bucket_, es uno de los benchmarks de la suite de benchmarks SPEC CPU2006 (colección de programas de benchmark que se utilizan comúnmente para evaluar el rendimiento de sistemas de procesamiento). El 470.lbm simula una aplicación de dinámica de fluidos computacional (CFD), específicamente el "Método de Boltzmann en Rejilla"(LBM) que se utiliza para simular fluidos incompresibles en 3D. En este método, se simula el flujo de un fluido modelando el movimiento de partículas en una rejilla [2]. Este benchmark 470.lbm al ejecutar una simulación CFD de alta demanda de recursos computacionales, es un muy buen indicador del rendimiento de un sistema en operaciones de punto flotante, patrones de acceso a memoria, paralelismo y otras métricas de rendimiento como tiempo de ejecución o IPC.

3. Execute for some seconds the benchmark. **Remember to change the ouput directory**
