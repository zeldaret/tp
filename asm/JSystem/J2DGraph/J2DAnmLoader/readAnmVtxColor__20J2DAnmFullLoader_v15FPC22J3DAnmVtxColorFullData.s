lbl_8030A234:
/* 8030A234  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030A238  7C 08 02 A6 */	mflr r0
/* 8030A23C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030A240  7C 85 23 78 */	mr r5, r4
/* 8030A244  80 83 00 04 */	lwz r4, 4(r3)
/* 8030A248  48 00 00 15 */	bl setAnmVtxColor__20J2DAnmFullLoader_v15FP18J2DAnmVtxColorFullPC22J3DAnmVtxColorFullData
/* 8030A24C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030A250  7C 08 03 A6 */	mtlr r0
/* 8030A254  38 21 00 10 */	addi r1, r1, 0x10
/* 8030A258  4E 80 00 20 */	blr 
