lbl_803392B0:
/* 803392B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803392B4  7C 08 02 A6 */	mflr r0
/* 803392B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803392BC  7C 85 23 78 */	mr r5, r4
/* 803392C0  80 83 00 04 */	lwz r4, 4(r3)
/* 803392C4  48 00 00 15 */	bl setAnmColor__19J3DAnmKeyLoader_v15FP14J3DAnmColorKeyPC18J3DAnmColorKeyData
/* 803392C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803392CC  7C 08 03 A6 */	mtlr r0
/* 803392D0  38 21 00 10 */	addi r1, r1, 0x10
/* 803392D4  4E 80 00 20 */	blr 
