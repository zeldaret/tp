lbl_80226D4C:
/* 80226D4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80226D50  7C 08 02 A6 */	mflr r0
/* 80226D54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80226D58  C0 02 B0 14 */	lfs f0, lit_3749(r2)
/* 80226D5C  EC 42 00 2A */	fadds f2, f2, f0
/* 80226D60  39 00 00 00 */	li r8, 0
/* 80226D64  38 00 00 23 */	li r0, 0x23
/* 80226D68  7C 09 03 A6 */	mtctr r0
lbl_80226D6C:
/* 80226D6C  38 08 00 04 */	addi r0, r8, 4
/* 80226D70  7D 23 00 2E */	lwzx r9, r3, r0
/* 80226D74  88 09 00 1D */	lbz r0, 0x1d(r9)
/* 80226D78  28 00 00 47 */	cmplwi r0, 0x47
/* 80226D7C  40 82 00 14 */	bne lbl_80226D90
/* 80226D80  7C 63 42 14 */	add r3, r3, r8
/* 80226D84  80 63 00 04 */	lwz r3, 4(r3)
/* 80226D88  4B FF EE E9 */	bl drawFont__13COutFontSet_cFP10J2DTextBoxUcffffUlUc
/* 80226D8C  48 00 00 0C */	b lbl_80226D98
lbl_80226D90:
/* 80226D90  39 08 00 04 */	addi r8, r8, 4
/* 80226D94  42 00 FF D8 */	bdnz lbl_80226D6C
lbl_80226D98:
/* 80226D98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80226D9C  7C 08 03 A6 */	mtlr r0
/* 80226DA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80226DA4  4E 80 00 20 */	blr 
