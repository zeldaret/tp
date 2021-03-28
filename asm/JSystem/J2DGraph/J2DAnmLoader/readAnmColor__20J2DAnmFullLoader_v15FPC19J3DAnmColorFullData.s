lbl_80309E1C:
/* 80309E1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80309E20  7C 08 02 A6 */	mflr r0
/* 80309E24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80309E28  7C 85 23 78 */	mr r5, r4
/* 80309E2C  80 83 00 04 */	lwz r4, 4(r3)
/* 80309E30  48 00 00 15 */	bl setAnmColor__20J2DAnmFullLoader_v15FP15J2DAnmColorFullPC19J3DAnmColorFullData
/* 80309E34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80309E38  7C 08 03 A6 */	mtlr r0
/* 80309E3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80309E40  4E 80 00 20 */	blr 
