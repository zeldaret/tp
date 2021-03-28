lbl_80D55ED0:
/* 80D55ED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D55ED4  7C 08 02 A6 */	mflr r0
/* 80D55ED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D55EDC  28 03 00 00 */	cmplwi r3, 0
/* 80D55EE0  41 82 00 0C */	beq lbl_80D55EEC
/* 80D55EE4  38 80 00 00 */	li r4, 0
/* 80D55EE8  4B 2C 2D A4 */	b __dt__10fopAc_ac_cFv
lbl_80D55EEC:
/* 80D55EEC  38 60 00 01 */	li r3, 1
/* 80D55EF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D55EF4  7C 08 03 A6 */	mtlr r0
/* 80D55EF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D55EFC  4E 80 00 20 */	blr 
