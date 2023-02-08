lbl_80C5396C:
/* 80C5396C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C53970  7C 08 02 A6 */	mflr r0
/* 80C53974  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C53978  A8 83 05 78 */	lha r4, 0x578(r3)
/* 80C5397C  38 04 00 01 */	addi r0, r4, 1
/* 80C53980  B0 03 05 78 */	sth r0, 0x578(r3)
/* 80C53984  38 80 00 00 */	li r4, 0
/* 80C53988  38 00 00 02 */	li r0, 2
/* 80C5398C  7C 09 03 A6 */	mtctr r0
lbl_80C53990:
/* 80C53990  38 C4 05 7E */	addi r6, r4, 0x57e
/* 80C53994  7C A3 32 AE */	lhax r5, r3, r6
/* 80C53998  2C 05 00 00 */	cmpwi r5, 0
/* 80C5399C  41 82 00 0C */	beq lbl_80C539A8
/* 80C539A0  38 05 FF FF */	addi r0, r5, -1
/* 80C539A4  7C 03 33 2E */	sthx r0, r3, r6
lbl_80C539A8:
/* 80C539A8  38 84 00 02 */	addi r4, r4, 2
/* 80C539AC  42 00 FF E4 */	bdnz lbl_80C53990
/* 80C539B0  4B FF FC 51 */	bl action__FP14obj_lbox_class
/* 80C539B4  38 60 00 01 */	li r3, 1
/* 80C539B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C539BC  7C 08 03 A6 */	mtlr r0
/* 80C539C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C539C4  4E 80 00 20 */	blr 
