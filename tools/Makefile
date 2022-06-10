DEBUG    ?= 0
top      ?= 0
coverage ?= 0
memsize  ?= 128
rv32c    ?= 0
CC        = gcc
SYS      := $(shell gcc -dumpmachine)

ifneq (, $(findstring darwin, $(SYS)))
CFLAGS  += -DMACOX
endif

ifeq ($(DEBUG), 1)
CFLAGS  += -O0 -g -Wall
else
CFLAGS  += -O3 -g -Wall
endif

ifeq ($(coverage), 1)
CFLAGS  += -fprofile-arcs -ftest-coverage
LDFLAGS += -fprofile-arcs -ftest-coverage
endif

ifeq ($(top), 1)
CFLAGS  += -DSINGLE_RAM
endif

ifeq ($(rv32c), 1)
CFLAGS  += -DRV32C_ENABLED
endif

SRC      = rvsim.c decompress.c syscall.c elfread.c getch.c
OBJECTS  = $(SRC:.c=.o)
RVSIM   = spike

.SUFFIXS: .c .o

.PHONY: clean

%.o: %.c opcode.h
	$(CC) -c -o $@ $< $(CFLAGS)

#$(RVSIM): $(OBJECTS)
#$(CC) $(CFLAGS) $(LDFLAGS) -o $(RVSIM) $(OBJECTS)
#@if [ ! -f ../sw/$*/$*.elf ]; then \
		make -C ../sw $*; \
	fi
#@./log2dis.pl -q trace.log ../sw/$*/$*.elf

%.run:
	
	$(RVSIM) --log-commits -l --isa=RV32IM ../sw/$*/$*.elf 2> ../sw/$*/$*.log
	python3 file_formatting.py   ../sw/$*/$*.log  ../sw/$*/$*_mod.log
	sed -E '/mem 0x9000002c 0x00/,$$d' ../sw/$*/$*_mod.log > ../sw/$*/$*_spike.log
	sed -E '/mem 0x9000002c 0x00/,$$d' ../sim/trace.log > ../sw/$*/$*_trace.log
	python3 file_comparasion.py ../sw/$*/$*_trace.log ../sw/$*/$*_spike.log

coverage: coverage_extra
	@gcov *.c
	@lcov -c -o coverage.info -d .
	@genhtml coverage.info -o html

coverage_extra:
	-@$(MAKE) irq.run
	-@$(MAKE) sem.run
	-@./$(RVSIM) -q
	-@./$(RVSIM) -h
	-@./$(RVSIM) dummy
	-@./$(RVSIM) -m 0 -n 0x20000 -b 1 -s -p -l trace.log ../sw/hello/hello.elf
	-@./$(RVSIM) -m 0x0 -n 131072 -b 1 -s -p -l trace.log ../sw/hello/hello.elf

clean:
	-$(RM) $(OBJECTS) dump.txt trace.log trace.log.dis $(RVSIM) out.bin
	-if [ $(coverage) = 0 ]; then \
		$(RM) -rf html coverage.info *.gcda *.gcno *.gcov; \
	fi

distclean: clean

sed:
	sed -e '/mem 0x9000002c 0x00/,$$d' hello_mod.log > hello_temp.log
#	sed -E '/mem 0x9000002c 0x00$/,$d' hello_mod.log > hello_temp.log