lbl_801904A0:
/* 801904A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801904A4  7C 08 02 A6 */	mflr r0
/* 801904A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801904AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801904B0  7C 7F 1B 78 */	mr r31, r3
/* 801904B4  80 63 00 04 */	lwz r3, 4(r3)
/* 801904B8  28 03 00 00 */	cmplwi r3, 0
/* 801904BC  41 82 00 14 */	beq lbl_801904D0
/* 801904C0  4B E7 EC CD */	bl mDoExt_destroySolidHeap__FP12JKRSolidHeap
/* 801904C4  38 00 00 00 */	li r0, 0
/* 801904C8  90 1F 00 04 */	stw r0, 4(r31)
/* 801904CC  90 1F 00 08 */	stw r0, 8(r31)
lbl_801904D0:
/* 801904D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801904D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801904D8  7C 08 03 A6 */	mtlr r0
/* 801904DC  38 21 00 10 */	addi r1, r1, 0x10
/* 801904E0  4E 80 00 20 */	blr 
