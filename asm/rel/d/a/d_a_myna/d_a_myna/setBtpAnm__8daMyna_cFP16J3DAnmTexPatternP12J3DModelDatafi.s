lbl_809498B8:
/* 809498B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809498BC  7C 08 02 A6 */	mflr r0
/* 809498C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809498C4  7C 80 23 78 */	mr r0, r4
/* 809498C8  7C C7 33 78 */	mr r7, r6
/* 809498CC  38 85 00 58 */	addi r4, r5, 0x58
/* 809498D0  7C 05 03 78 */	mr r5, r0
/* 809498D4  38 C0 00 01 */	li r6, 1
/* 809498D8  39 00 00 00 */	li r8, 0
/* 809498DC  39 20 FF FF */	li r9, -1
/* 809498E0  38 63 05 78 */	addi r3, r3, 0x578
/* 809498E4  4B 6C 3C 69 */	bl init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 809498E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809498EC  7C 08 03 A6 */	mtlr r0
/* 809498F0  38 21 00 10 */	addi r1, r1, 0x10
/* 809498F4  4E 80 00 20 */	blr 
