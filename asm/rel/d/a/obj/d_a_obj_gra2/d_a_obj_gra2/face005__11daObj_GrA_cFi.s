lbl_80C045B8:
/* 80C045B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C045BC  7C 08 02 A6 */	mflr r0
/* 80C045C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C045C4  2C 04 00 00 */	cmpwi r4, 0
/* 80C045C8  41 82 00 14 */	beq lbl_80C045DC
/* 80C045CC  38 80 00 1F */	li r4, 0x1f
/* 80C045D0  38 A0 00 01 */	li r5, 1
/* 80C045D4  C0 23 0A 98 */	lfs f1, 0xa98(r3)
/* 80C045D8  4B FF CF 1D */	bl setFaceAnm__11daObj_GrA_cFibf
lbl_80C045DC:
/* 80C045DC  38 60 00 01 */	li r3, 1
/* 80C045E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C045E4  7C 08 03 A6 */	mtlr r0
/* 80C045E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C045EC  4E 80 00 20 */	blr 
