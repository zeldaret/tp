lbl_80C45A10:
/* 80C45A10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C45A14  7C 08 02 A6 */	mflr r0
/* 80C45A18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C45A1C  A8 83 05 72 */	lha r4, 0x572(r3)
/* 80C45A20  38 04 00 01 */	addi r0, r4, 1
/* 80C45A24  B0 03 05 72 */	sth r0, 0x572(r3)
/* 80C45A28  38 80 00 00 */	li r4, 0
/* 80C45A2C  38 00 00 02 */	li r0, 2
/* 80C45A30  7C 09 03 A6 */	mtctr r0
lbl_80C45A34:
/* 80C45A34  38 C4 05 78 */	addi r6, r4, 0x578
/* 80C45A38  7C A3 32 AE */	lhax r5, r3, r6
/* 80C45A3C  2C 05 00 00 */	cmpwi r5, 0
/* 80C45A40  41 82 00 0C */	beq lbl_80C45A4C
/* 80C45A44  38 05 FF FF */	addi r0, r5, -1
/* 80C45A48  7C 03 33 2E */	sthx r0, r3, r6
lbl_80C45A4C:
/* 80C45A4C  38 84 00 02 */	addi r4, r4, 2
/* 80C45A50  42 00 FF E4 */	bdnz lbl_80C45A34
/* 80C45A54  4B FF FE 85 */	bl action__FP14obj_kita_class
/* 80C45A58  38 60 00 01 */	li r3, 1
/* 80C45A5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C45A60  7C 08 03 A6 */	mtlr r0
/* 80C45A64  38 21 00 10 */	addi r1, r1, 0x10
/* 80C45A68  4E 80 00 20 */	blr 
