lbl_803393C4:
/* 803393C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803393C8  7C 08 02 A6 */	mflr r0
/* 803393CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803393D0  7C 85 23 78 */	mr r5, r4
/* 803393D4  80 83 00 04 */	lwz r4, 4(r3)
/* 803393D8  48 00 00 15 */	bl setAnmCluster__19J3DAnmKeyLoader_v15FP16J3DAnmClusterKeyPC20J3DAnmClusterKeyData
/* 803393DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803393E0  7C 08 03 A6 */	mtlr r0
/* 803393E4  38 21 00 10 */	addi r1, r1, 0x10
/* 803393E8  4E 80 00 20 */	blr 
