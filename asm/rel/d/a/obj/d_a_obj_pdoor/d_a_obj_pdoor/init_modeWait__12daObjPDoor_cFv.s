lbl_80CAA31C:
/* 80CAA31C  38 80 00 00 */	li r4, 0
/* 80CAA320  B0 83 05 BA */	sth r4, 0x5ba(r3)
/* 80CAA324  38 00 FF FF */	li r0, -1
/* 80CAA328  90 03 05 B0 */	stw r0, 0x5b0(r3)
/* 80CAA32C  38 A0 00 00 */	li r5, 0
/* 80CAA330  38 00 00 02 */	li r0, 2
/* 80CAA334  7C 09 03 A6 */	mtctr r0
lbl_80CAA338:
/* 80CAA338  38 05 05 B6 */	addi r0, r5, 0x5b6
/* 80CAA33C  7C 83 01 AE */	stbx r4, r3, r0
/* 80CAA340  38 A5 00 01 */	addi r5, r5, 1
/* 80CAA344  42 00 FF F4 */	bdnz lbl_80CAA338
/* 80CAA348  38 00 00 00 */	li r0, 0
/* 80CAA34C  98 03 05 AD */	stb r0, 0x5ad(r3)
/* 80CAA350  4E 80 00 20 */	blr 
