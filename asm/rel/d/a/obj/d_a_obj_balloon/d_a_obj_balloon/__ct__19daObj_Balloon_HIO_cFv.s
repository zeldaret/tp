lbl_80BA7FAC:
/* 80BA7FAC  3C 80 80 BB */	lis r4, lit_3656@ha
/* 80BA7FB0  38 A4 8E 0C */	addi r5, r4, lit_3656@l
/* 80BA7FB4  3C 80 80 BB */	lis r4, __vt__19daObj_Balloon_HIO_c@ha
/* 80BA7FB8  38 04 8F 98 */	addi r0, r4, __vt__19daObj_Balloon_HIO_c@l
/* 80BA7FBC  90 03 00 00 */	stw r0, 0(r3)
/* 80BA7FC0  38 00 FF FF */	li r0, -1
/* 80BA7FC4  98 03 00 04 */	stb r0, 4(r3)
/* 80BA7FC8  C0 25 00 00 */	lfs f1, 0(r5)
/* 80BA7FCC  D0 23 00 08 */	stfs f1, 8(r3)
/* 80BA7FD0  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 80BA7FD4  C0 05 00 04 */	lfs f0, 4(r5)
/* 80BA7FD8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80BA7FDC  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 80BA7FE0  C0 05 00 08 */	lfs f0, 8(r5)
/* 80BA7FE4  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80BA7FE8  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80BA7FEC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80BA7FF0  4E 80 00 20 */	blr 
