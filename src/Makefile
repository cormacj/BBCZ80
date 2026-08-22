SRCS = MAIN.Z80 EXEC.Z80 EVAL.Z80 MATH.Z80 ASMB.Z80 DATA.Z80 DIST.Z80 HOOK.Z80 CMOS.Z80

all: $(SRCS)
	z88dk-z80asm -obbcbasic.com -b -d -m $(SRCS)
	#z88dk-asmpp $(SRCS)
clean:
	rm -f *.o *.err *.lis *.map *.com *.bin
