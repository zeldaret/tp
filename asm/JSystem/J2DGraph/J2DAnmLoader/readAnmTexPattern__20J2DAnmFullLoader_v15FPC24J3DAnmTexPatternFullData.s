lbl_80309F10:
/* 80309F10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80309F14  7C 08 02 A6 */	mflr r0
/* 80309F18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80309F1C  7C 85 23 78 */	mr r5, r4
/* 80309F20  80 83 00 04 */	lwz r4, 4(r3)
/* 80309F24  48 00 00 15 */	bl setAnmTexPattern__20J2DAnmFullLoader_v15FP16J2DAnmTexPatternPC24J3DAnmTexPatternFullData
/* 80309F28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80309F2C  7C 08 03 A6 */	mtlr r0
/* 80309F30  38 21 00 10 */	addi r1, r1, 0x10
/* 80309F34  4E 80 00 20 */	blr 
