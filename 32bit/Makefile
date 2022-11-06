LDFLAGS= -melf_i386
ASFLAGS= --32
AS=as
LD=ld

EXECUTABLES= hello

.PHONY: all clean

all:	hello

hello:	hello.o
		$(LD) $(LDFLAGS) $^ -o $@

%.o:	%.s
		$(AS) $(ASFLAGS) $< -o $@

clean:
	rm -rf *.o $(EXECUTABLES)
