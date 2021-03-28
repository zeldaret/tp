lbl_8084B6F4:
/* 8084B6F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8084B6F8  C0 03 06 F0 */	lfs f0, 0x6f0(r3)
/* 8084B6FC  FC 00 00 50 */	fneg f0, f0
/* 8084B700  EC 00 00 72 */	fmuls f0, f0, f1
/* 8084B704  FC 00 00 1E */	fctiwz f0, f0
/* 8084B708  D8 01 00 08 */	stfd f0, 8(r1)
/* 8084B70C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8084B710  38 21 00 10 */	addi r1, r1, 0x10
/* 8084B714  4E 80 00 20 */	blr 
