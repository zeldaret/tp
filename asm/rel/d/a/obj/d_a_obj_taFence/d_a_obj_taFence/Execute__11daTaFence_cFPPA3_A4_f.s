lbl_80D05550:
/* 80D05550  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D05554  7C 08 02 A6 */	mflr r0
/* 80D05558  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0555C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D05560  93 C1 00 08 */	stw r30, 8(r1)
/* 80D05564  7C 7E 1B 78 */	mr r30, r3
/* 80D05568  7C 9F 23 78 */	mr r31, r4
/* 80D0556C  48 00 00 35 */	bl fenceProc__11daTaFence_cFv
/* 80D05570  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80D05574  38 03 00 24 */	addi r0, r3, 0x24
/* 80D05578  90 1F 00 00 */	stw r0, 0(r31)
/* 80D0557C  7F C3 F3 78 */	mr r3, r30
/* 80D05580  4B FF FA 0D */	bl setBaseMtx__11daTaFence_cFv
/* 80D05584  38 60 00 01 */	li r3, 1
/* 80D05588  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0558C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D05590  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D05594  7C 08 03 A6 */	mtlr r0
/* 80D05598  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0559C  4E 80 00 20 */	blr 
