lbl_80309634:
/* 80309634  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80309638  7C 08 02 A6 */	mflr r0
/* 8030963C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80309640  7C 85 23 78 */	mr r5, r4
/* 80309644  80 83 00 04 */	lwz r4, 4(r3)
/* 80309648  48 00 00 15 */	bl setAnmTextureSRT__19J2DAnmKeyLoader_v15FP19J2DAnmTextureSRTKeyPC23J3DAnmTextureSRTKeyData
/* 8030964C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80309650  7C 08 03 A6 */	mtlr r0
/* 80309654  38 21 00 10 */	addi r1, r1, 0x10
/* 80309658  4E 80 00 20 */	blr 
