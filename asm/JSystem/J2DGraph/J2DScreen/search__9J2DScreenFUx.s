lbl_802F90A0:
/* 802F90A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F90A4  7C 08 02 A6 */	mflr r0
/* 802F90A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F90AC  38 E0 00 00 */	li r7, 0
/* 802F90B0  7C C4 3A 78 */	xor r4, r6, r7
/* 802F90B4  7C A0 3A 78 */	xor r0, r5, r7
/* 802F90B8  7C 80 03 79 */	or. r0, r4, r0
/* 802F90BC  40 82 00 08 */	bne lbl_802F90C4
/* 802F90C0  48 00 00 0C */	b lbl_802F90CC
lbl_802F90C4:
/* 802F90C4  4B FF E2 1D */	bl search__7J2DPaneFUx
/* 802F90C8  7C 67 1B 78 */	mr r7, r3
lbl_802F90CC:
/* 802F90CC  7C E3 3B 78 */	mr r3, r7
/* 802F90D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F90D4  7C 08 03 A6 */	mtlr r0
/* 802F90D8  38 21 00 10 */	addi r1, r1, 0x10
/* 802F90DC  4E 80 00 20 */	blr 
