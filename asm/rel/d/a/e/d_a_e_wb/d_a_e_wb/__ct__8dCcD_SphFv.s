lbl_807E1ED0:
/* 807E1ED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E1ED4  7C 08 02 A6 */	mflr r0
/* 807E1ED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E1EDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E1EE0  7C 7F 1B 78 */	mr r31, r3
/* 807E1EE4  4B 8A 1B 44 */	b __ct__12dCcD_GObjInfFv
/* 807E1EE8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 807E1EEC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 807E1EF0  90 1F 01 20 */	stw r0, 0x120(r31)
/* 807E1EF4  3C 60 80 7E */	lis r3, __vt__8cM3dGAab@ha
/* 807E1EF8  38 03 35 30 */	addi r0, r3, __vt__8cM3dGAab@l
/* 807E1EFC  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 807E1F00  3C 60 80 7E */	lis r3, __vt__8cM3dGSph@ha
/* 807E1F04  38 03 35 24 */	addi r0, r3, __vt__8cM3dGSph@l
/* 807E1F08  90 1F 01 34 */	stw r0, 0x134(r31)
/* 807E1F0C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 807E1F10  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 807E1F14  90 7F 01 20 */	stw r3, 0x120(r31)
/* 807E1F18  38 03 00 58 */	addi r0, r3, 0x58
/* 807E1F1C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 807E1F20  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 807E1F24  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 807E1F28  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 807E1F2C  38 03 00 2C */	addi r0, r3, 0x2c
/* 807E1F30  90 1F 01 20 */	stw r0, 0x120(r31)
/* 807E1F34  38 03 00 84 */	addi r0, r3, 0x84
/* 807E1F38  90 1F 01 34 */	stw r0, 0x134(r31)
/* 807E1F3C  7F E3 FB 78 */	mr r3, r31
/* 807E1F40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E1F44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E1F48  7C 08 03 A6 */	mtlr r0
/* 807E1F4C  38 21 00 10 */	addi r1, r1, 0x10
/* 807E1F50  4E 80 00 20 */	blr 
