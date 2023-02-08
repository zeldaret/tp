lbl_803233E8:
/* 803233E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803233EC  7C 08 02 A6 */	mflr r0
/* 803233F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803233F4  7C 60 1B 78 */	mr r0, r3
/* 803233F8  1C 64 00 1C */	mulli r3, r4, 0x1c
/* 803233FC  38 63 00 18 */	addi r3, r3, 0x18
/* 80323400  7C 60 1A 14 */	add r3, r0, r3
/* 80323404  7C A4 2B 78 */	mr r4, r5
/* 80323408  48 00 23 D5 */	bl __as__16J3DIndTexMtxInfoFRC16J3DIndTexMtxInfo
/* 8032340C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80323410  7C 08 03 A6 */	mtlr r0
/* 80323414  38 21 00 10 */	addi r1, r1, 0x10
/* 80323418  4E 80 00 20 */	blr 
