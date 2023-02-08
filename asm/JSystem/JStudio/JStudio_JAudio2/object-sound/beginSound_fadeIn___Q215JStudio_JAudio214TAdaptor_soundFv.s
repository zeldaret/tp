lbl_8028DFA4:
/* 8028DFA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028DFA8  7C 08 02 A6 */	mflr r0
/* 8028DFAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028DFB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8028DFB4  7C 7F 1B 78 */	mr r31, r3
/* 8028DFB8  80 63 01 18 */	lwz r3, 0x118(r3)
/* 8028DFBC  28 03 00 00 */	cmplwi r3, 0
/* 8028DFC0  41 82 00 80 */	beq lbl_8028E040
/* 8028DFC4  80 1F 01 28 */	lwz r0, 0x128(r31)
/* 8028DFC8  C0 22 BB 10 */	lfs f1, lit_1470(r2)
/* 8028DFCC  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 8028DFD0  28 00 00 00 */	cmplwi r0, 0
/* 8028DFD4  41 82 00 40 */	beq lbl_8028E014
/* 8028DFD8  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8028DFDC  90 03 00 30 */	stw r0, 0x30(r3)
/* 8028DFE0  C0 62 BB 14 */	lfs f3, lit_1805(r2)
/* 8028DFE4  EC 43 00 28 */	fsubs f2, f3, f0
/* 8028DFE8  80 03 00 30 */	lwz r0, 0x30(r3)
/* 8028DFEC  C8 22 BB 18 */	lfd f1, lit_1807(r2)
/* 8028DFF0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8028DFF4  3C 00 43 30 */	lis r0, 0x4330
/* 8028DFF8  90 01 00 08 */	stw r0, 8(r1)
/* 8028DFFC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8028E000  EC 00 08 28 */	fsubs f0, f0, f1
/* 8028E004  EC 02 00 24 */	fdivs f0, f2, f0
/* 8028E008  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8028E00C  D0 63 00 2C */	stfs f3, 0x2c(r3)
/* 8028E010  48 00 00 1C */	b lbl_8028E02C
lbl_8028E014:
/* 8028E014  C0 02 BB 14 */	lfs f0, lit_1805(r2)
/* 8028E018  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 8028E01C  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 8028E020  38 00 00 00 */	li r0, 0
/* 8028E024  90 03 00 30 */	stw r0, 0x30(r3)
/* 8028E028  D0 23 00 2C */	stfs f1, 0x2c(r3)
lbl_8028E02C:
/* 8028E02C  80 7F 01 18 */	lwz r3, 0x118(r31)
/* 8028E030  38 63 00 1C */	addi r3, r3, 0x1c
/* 8028E034  48 01 42 11 */	bl unlockIfLocked__15JAISoundStatus_Fv
/* 8028E038  38 00 00 01 */	li r0, 1
/* 8028E03C  98 1F 01 20 */	stb r0, 0x120(r31)
lbl_8028E040:
/* 8028E040  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8028E044  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028E048  7C 08 03 A6 */	mtlr r0
/* 8028E04C  38 21 00 20 */	addi r1, r1, 0x20
/* 8028E050  4E 80 00 20 */	blr 
