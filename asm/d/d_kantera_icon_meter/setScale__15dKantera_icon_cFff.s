lbl_801AEBF4:
/* 801AEBF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801AEBF8  7C 08 02 A6 */	mflr r0
/* 801AEBFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AEC00  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801AEC04  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801AEC08  C0 04 06 14 */	lfs f0, 0x614(r4)
/* 801AEC0C  EC 42 00 32 */	fmuls f2, f2, f0
/* 801AEC10  80 63 00 08 */	lwz r3, 8(r3)
/* 801AEC14  80 63 00 04 */	lwz r3, 4(r3)
/* 801AEC18  EC 01 00 32 */	fmuls f0, f1, f0
/* 801AEC1C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801AEC20  D0 43 00 D0 */	stfs f2, 0xd0(r3)
/* 801AEC24  81 83 00 00 */	lwz r12, 0(r3)
/* 801AEC28  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801AEC2C  7D 89 03 A6 */	mtctr r12
/* 801AEC30  4E 80 04 21 */	bctrl 
/* 801AEC34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801AEC38  7C 08 03 A6 */	mtlr r0
/* 801AEC3C  38 21 00 10 */	addi r1, r1, 0x10
/* 801AEC40  4E 80 00 20 */	blr 
