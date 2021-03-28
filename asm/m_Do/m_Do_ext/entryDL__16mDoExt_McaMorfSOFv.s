lbl_800111C0:
/* 800111C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800111C4  7C 08 02 A6 */	mflr r0
/* 800111C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800111CC  80 63 00 04 */	lwz r3, 4(r3)
/* 800111D0  28 03 00 00 */	cmplwi r3, 0
/* 800111D4  41 82 00 08 */	beq lbl_800111DC
/* 800111D8  4B FF CB 8D */	bl mDoExt_modelEntryDL__FP8J3DModel
lbl_800111DC:
/* 800111DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800111E0  7C 08 03 A6 */	mtlr r0
/* 800111E4  38 21 00 10 */	addi r1, r1, 0x10
/* 800111E8  4E 80 00 20 */	blr 
