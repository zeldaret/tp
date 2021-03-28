lbl_8052A1C0:
/* 8052A1C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052A1C4  7C 08 02 A6 */	mflr r0
/* 8052A1C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052A1CC  80 03 06 04 */	lwz r0, 0x604(r3)
/* 8052A1D0  28 00 00 00 */	cmplwi r0, 0
/* 8052A1D4  41 82 00 24 */	beq lbl_8052A1F8
/* 8052A1D8  38 80 00 05 */	li r4, 5
/* 8052A1DC  3C A0 80 53 */	lis r5, lit_3833@ha
/* 8052A1E0  C0 25 61 B4 */	lfs f1, lit_3833@l(r5)
/* 8052A1E4  38 A0 00 00 */	li r5, 0
/* 8052A1E8  3C C0 80 53 */	lis r6, lit_3679@ha
/* 8052A1EC  C0 46 61 68 */	lfs f2, lit_3679@l(r6)
/* 8052A1F0  4B FF FF 25 */	bl anm_init__FP13mg_fish_classifUcf
/* 8052A1F4  48 00 00 18 */	b lbl_8052A20C
lbl_8052A1F8:
/* 8052A1F8  88 03 06 35 */	lbz r0, 0x635(r3)
/* 8052A1FC  28 00 00 02 */	cmplwi r0, 2
/* 8052A200  40 82 00 0C */	bne lbl_8052A20C
/* 8052A204  38 00 F4 48 */	li r0, -3000
/* 8052A208  B0 03 06 44 */	sth r0, 0x644(r3)
lbl_8052A20C:
/* 8052A20C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052A210  7C 08 03 A6 */	mtlr r0
/* 8052A214  38 21 00 10 */	addi r1, r1, 0x10
/* 8052A218  4E 80 00 20 */	blr 
