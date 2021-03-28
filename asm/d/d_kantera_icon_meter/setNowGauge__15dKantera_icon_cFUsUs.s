lbl_801AEC44:
/* 801AEC44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801AEC48  7C 08 02 A6 */	mflr r0
/* 801AEC4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801AEC50  80 63 00 0C */	lwz r3, 0xc(r3)
/* 801AEC54  80 63 00 04 */	lwz r3, 4(r3)
/* 801AEC58  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 801AEC5C  C8 42 A5 00 */	lfd f2, lit_3761(r2)
/* 801AEC60  90 01 00 0C */	stw r0, 0xc(r1)
/* 801AEC64  3C A0 43 30 */	lis r5, 0x4330
/* 801AEC68  90 A1 00 08 */	stw r5, 8(r1)
/* 801AEC6C  C8 01 00 08 */	lfd f0, 8(r1)
/* 801AEC70  EC 20 10 28 */	fsubs f1, f0, f2
/* 801AEC74  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 801AEC78  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AEC7C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801AEC80  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801AEC84  EC 00 10 28 */	fsubs f0, f0, f2
/* 801AEC88  EC 01 00 24 */	fdivs f0, f1, f0
/* 801AEC8C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801AEC90  C0 02 A4 F8 */	lfs f0, lit_3759(r2)
/* 801AEC94  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801AEC98  81 83 00 00 */	lwz r12, 0(r3)
/* 801AEC9C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801AECA0  7D 89 03 A6 */	mtctr r12
/* 801AECA4  4E 80 04 21 */	bctrl 
/* 801AECA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801AECAC  7C 08 03 A6 */	mtlr r0
/* 801AECB0  38 21 00 20 */	addi r1, r1, 0x20
/* 801AECB4  4E 80 00 20 */	blr 
