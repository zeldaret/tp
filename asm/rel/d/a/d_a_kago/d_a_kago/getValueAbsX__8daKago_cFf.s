lbl_8084B718:
/* 8084B718  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8084B71C  C0 03 06 F0 */	lfs f0, 0x6f0(r3)
/* 8084B720  FC 00 00 50 */	fneg f0, f0
/* 8084B724  EC 00 00 72 */	fmuls f0, f0, f1
/* 8084B728  FC 00 02 10 */	fabs f0, f0
/* 8084B72C  FC 00 00 18 */	frsp f0, f0
/* 8084B730  FC 00 00 1E */	fctiwz f0, f0
/* 8084B734  D8 01 00 08 */	stfd f0, 8(r1)
/* 8084B738  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8084B73C  38 21 00 10 */	addi r1, r1, 0x10
/* 8084B740  4E 80 00 20 */	blr 
