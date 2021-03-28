lbl_80C017AC:
/* 80C017AC  A0 03 0A 92 */	lhz r0, 0xa92(r3)
/* 80C017B0  28 00 00 0E */	cmplwi r0, 0xe
/* 80C017B4  4C 80 00 20 */	bgelr 
/* 80C017B8  B0 83 0A 92 */	sth r4, 0xa92(r3)
/* 80C017BC  38 00 00 01 */	li r0, 1
/* 80C017C0  98 03 0A 8E */	stb r0, 0xa8e(r3)
/* 80C017C4  3C 80 80 C1 */	lis r4, lit_4333@ha
/* 80C017C8  C0 04 FB 98 */	lfs f0, lit_4333@l(r4)
/* 80C017CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C017D0  40 80 00 18 */	bge lbl_80C017E8
/* 80C017D4  3C 80 80 C1 */	lis r4, m__17daObj_GrA_Param_c@ha
/* 80C017D8  38 84 FA 7C */	addi r4, r4, m__17daObj_GrA_Param_c@l
/* 80C017DC  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80C017E0  D0 03 0A 98 */	stfs f0, 0xa98(r3)
/* 80C017E4  4E 80 00 20 */	blr 
lbl_80C017E8:
/* 80C017E8  D0 23 0A 98 */	stfs f1, 0xa98(r3)
/* 80C017EC  4E 80 00 20 */	blr 
