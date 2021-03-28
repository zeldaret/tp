lbl_803390B0:
/* 803390B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803390B4  7C 08 02 A6 */	mflr r0
/* 803390B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803390BC  7C 85 23 78 */	mr r5, r4
/* 803390C0  80 83 00 04 */	lwz r4, 4(r3)
/* 803390C4  48 00 00 15 */	bl setAnmTextureSRT__19J3DAnmKeyLoader_v15FP19J3DAnmTextureSRTKeyPC23J3DAnmTextureSRTKeyData
/* 803390C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803390CC  7C 08 03 A6 */	mtlr r0
/* 803390D0  38 21 00 10 */	addi r1, r1, 0x10
/* 803390D4  4E 80 00 20 */	blr 
