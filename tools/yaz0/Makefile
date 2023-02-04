YAZ0_CC := cc
YAZ0_CFLAGS := -fPIC -shared -O3 -Wall -s

$(YAZ0): include tools/yaz0/Makefile
	@echo [tools] building yaz0.so 
	@$(YAZ0_CC) $(YAZ0_CFLAGS) -o $(YAZ0) tools/yaz0/yaz0.c

