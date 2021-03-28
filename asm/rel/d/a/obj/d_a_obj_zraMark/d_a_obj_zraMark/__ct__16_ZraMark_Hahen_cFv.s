lbl_80D43BB4:
/* 80D43BB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D43BB8  7C 08 02 A6 */	mflr r0
/* 80D43BBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D43BC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D43BC4  93 C1 00 08 */	stw r30, 8(r1)
/* 80D43BC8  7C 7E 1B 78 */	mr r30, r3
/* 80D43BCC  3B FE 00 04 */	addi r31, r30, 4
/* 80D43BD0  7F E3 FB 78 */	mr r3, r31
/* 80D43BD4  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha
/* 80D43BD8  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l
/* 80D43BDC  4B 5E 1A E8 */	b __as__12J3DLightInfoFRC12J3DLightInfo
/* 80D43BE0  38 7F 00 74 */	addi r3, r31, 0x74
/* 80D43BE4  3C 80 80 D4 */	lis r4, __ct__11J3DLightObjFv@ha
/* 80D43BE8  38 84 3C 34 */	addi r4, r4, __ct__11J3DLightObjFv@l
/* 80D43BEC  38 A0 00 00 */	li r5, 0
/* 80D43BF0  38 C0 00 74 */	li r6, 0x74
/* 80D43BF4  38 E0 00 06 */	li r7, 6
/* 80D43BF8  4B 61 E1 68 */	b __construct_array
/* 80D43BFC  38 7E 03 CC */	addi r3, r30, 0x3cc
/* 80D43C00  4B 57 AC 44 */	b __ct__16Z2SoundObjSimpleFv
/* 80D43C04  38 00 00 00 */	li r0, 0
/* 80D43C08  90 1E 00 00 */	stw r0, 0(r30)
/* 80D43C0C  3C 60 80 D4 */	lis r3, data_80D43FA0@ha
/* 80D43C10  88 03 3F A0 */	lbz r0, data_80D43FA0@l(r3)
/* 80D43C14  98 1E 03 C8 */	stb r0, 0x3c8(r30)
/* 80D43C18  7F C3 F3 78 */	mr r3, r30
/* 80D43C1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D43C20  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D43C24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D43C28  7C 08 03 A6 */	mtlr r0
/* 80D43C2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D43C30  4E 80 00 20 */	blr 
