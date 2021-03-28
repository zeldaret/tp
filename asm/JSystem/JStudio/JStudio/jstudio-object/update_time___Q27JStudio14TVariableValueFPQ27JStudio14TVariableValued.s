lbl_80285ECC:
/* 80285ECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80285ED0  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 80285ED4  80 03 00 04 */	lwz r0, 4(r3)
/* 80285ED8  C8 42 BA A0 */	lfd f2, lit_803(r2)
/* 80285EDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80285EE0  3C 00 43 30 */	lis r0, 0x4330
/* 80285EE4  90 01 00 08 */	stw r0, 8(r1)
/* 80285EE8  C8 01 00 08 */	lfd f0, 8(r1)
/* 80285EEC  FC 00 10 28 */	fsub f0, f0, f2
/* 80285EF0  FC 00 00 72 */	fmul f0, f0, f1
/* 80285EF4  FC 03 00 32 */	fmul f0, f3, f0
/* 80285EF8  FC 00 00 18 */	frsp f0, f0
/* 80285EFC  D0 03 00 00 */	stfs f0, 0(r3)
/* 80285F00  38 21 00 10 */	addi r1, r1, 0x10
/* 80285F04  4E 80 00 20 */	blr 
