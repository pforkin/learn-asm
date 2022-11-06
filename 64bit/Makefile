LDFLAGS= -melf_x86_64
ASFLAGS= --64
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
