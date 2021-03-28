lbl_801AEBA0:
/* 801AEBA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801AEBA4  7C 08 02 A6 */	mflr r0
/* 801AEBA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AEBAC  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 801AEBB0  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 801AEBB4  C0 04 06 10 */	lfs f0, 0x610(r4)
/* 801AEBB8  EC 42 00 2A */	fadds f2, f2, f0
/* 801AEBBC  80 63 00 08 */	lwz r3, 8(r3)
/* 801AEBC0  80 63 00 04 */	lwz r3, 4(r3)
/* 801AEBC4  C0 04 06 0C */	lfs f0, 0x60c(r4)
/* 801AEBC8  EC 01 00 2A */	fadds f0, f1, f0
/* 801AEBCC  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 801AEBD0  D0 43 00 D8 */	stfs f2, 0xd8(r3)
/* 801AEBD4  81 83 00 00 */	lwz r12, 0(r3)
/* 801AEBD8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801AEBDC  7D 89 03 A6 */	mtctr r12
/* 801AEBE0  4E 80 04 21 */	bctrl 
/* 801AEBE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801AEBE8  7C 08 03 A6 */	mtlr r0
/* 801AEBEC  38 21 00 10 */	addi r1, r1, 0x10
/* 801AEBF0  4E 80 00 20 */	blr 
