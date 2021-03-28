lbl_80309848:
/* 80309848  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030984C  7C 08 02 A6 */	mflr r0
/* 80309850  90 01 00 14 */	stw r0, 0x14(r1)
/* 80309854  7C 85 23 78 */	mr r5, r4
/* 80309858  80 83 00 04 */	lwz r4, 4(r3)
/* 8030985C  48 00 00 15 */	bl setAnmColor__19J2DAnmKeyLoader_v15FP14J2DAnmColorKeyPC18J3DAnmColorKeyData
/* 80309860  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80309864  7C 08 03 A6 */	mtlr r0
/* 80309868  38 21 00 10 */	addi r1, r1, 0x10
/* 8030986C  4E 80 00 20 */	blr 
