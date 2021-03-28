lbl_80075EAC:
/* 80075EAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80075EB0  7C 08 02 A6 */	mflr r0
/* 80075EB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80075EB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80075EBC  7C 7F 1B 78 */	mr r31, r3
/* 80075EC0  48 1F 21 B5 */	bl __ct__13cBgS_PolyInfoFv
/* 80075EC4  3C 60 80 3B */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80075EC8  38 03 B6 64 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80075ECC  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80075ED0  38 7F 00 14 */	addi r3, r31, 0x14
/* 80075ED4  48 1F 8F E1 */	bl __ct__8cM3dGCirFv
/* 80075ED8  38 00 00 00 */	li r0, 0
/* 80075EDC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80075EE0  C0 02 8C C0 */	lfs f0, lit_4025(r2)
/* 80075EE4  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 80075EE8  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 80075EEC  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 80075EF0  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 80075EF4  B0 1F 00 3C */	sth r0, 0x3c(r31)
/* 80075EF8  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 80075EFC  7F E3 FB 78 */	mr r3, r31
/* 80075F00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80075F04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80075F08  7C 08 03 A6 */	mtlr r0
/* 80075F0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80075F10  4E 80 00 20 */	blr 
