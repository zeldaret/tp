lbl_8030A190:
/* 8030A190  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030A194  7C 08 02 A6 */	mflr r0
/* 8030A198  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030A19C  7C 85 23 78 */	mr r5, r4
/* 8030A1A0  80 83 00 04 */	lwz r4, 4(r3)
/* 8030A1A4  48 00 00 15 */	bl setAnmVisibility__20J2DAnmFullLoader_v15FP20J2DAnmVisibilityFullPC24J3DAnmVisibilityFullData
/* 8030A1A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030A1AC  7C 08 03 A6 */	mtlr r0
/* 8030A1B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8030A1B4  4E 80 00 20 */	blr 
