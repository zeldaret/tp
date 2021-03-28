lbl_803388BC:
/* 803388BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803388C0  7C 08 02 A6 */	mflr r0
/* 803388C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803388C8  7C 85 23 78 */	mr r5, r4
/* 803388CC  80 83 00 04 */	lwz r4, 4(r3)
/* 803388D0  48 00 00 15 */	bl setAnmColor__20J3DAnmFullLoader_v15FP15J3DAnmColorFullPC19J3DAnmColorFullData
/* 803388D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803388D8  7C 08 03 A6 */	mtlr r0
/* 803388DC  38 21 00 10 */	addi r1, r1, 0x10
/* 803388E0  4E 80 00 20 */	blr 
