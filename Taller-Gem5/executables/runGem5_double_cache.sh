# -- an example to run SPEC 429.mcf on gem5, put it under 429.mcf folder --
export GEM5_DIR=/home/lpmorales/ac1-taller5/gem5
export BENCHMARK=./src/benchmark
export ARGUMENTS="1 reference.dat 0 1 ./data/100_100_130_cf_a.of"
time $GEM5_DIR/build/X86/gem5.opt -d m5out $GEM5_DIR/configs/deprecated/example/se.py -c $BENCHMARK -o "$ARGUMENTS" -I 100000000 --cpu-type=TimingSimpleCPU --caches --l2cache --l1d_size=256kB --l1i_size=256kB --l2_size=2MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=1 --cacheline_size=64
