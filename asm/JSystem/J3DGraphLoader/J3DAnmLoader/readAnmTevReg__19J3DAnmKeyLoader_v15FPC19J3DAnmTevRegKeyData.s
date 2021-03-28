lbl_80339458:
/* 80339458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033945C  7C 08 02 A6 */	mflr r0
/* 80339460  90 01 00 14 */	stw r0, 0x14(r1)
/* 80339464  7C 85 23 78 */	mr r5, r4
/* 80339468  80 83 00 04 */	lwz r4, 4(r3)
/* 8033946C  48 00 00 15 */	bl setAnmTevReg__19J3DAnmKeyLoader_v15FP15J3DAnmTevRegKeyPC19J3DAnmTevRegKeyData
/* 80339470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80339474  7C 08 03 A6 */	mtlr r0
/* 80339478  38 21 00 10 */	addi r1, r1, 0x10
/* 8033947C  4E 80 00 20 */	blr 
