lbl_809F1E74:
/* 809F1E74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F1E78  7C 08 02 A6 */	mflr r0
/* 809F1E7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F1E80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F1E84  7C 7F 1B 78 */	mr r31, r3
/* 809F1E88  4B 69 1B A0 */	b __ct__12dCcD_GObjInfFv
/* 809F1E8C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809F1E90  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809F1E94  90 1F 01 20 */	stw r0, 0x120(r31)
/* 809F1E98  3C 60 80 9F */	lis r3, __vt__8cM3dGAab@ha
/* 809F1E9C  38 03 2F 70 */	addi r0, r3, __vt__8cM3dGAab@l
/* 809F1EA0  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 809F1EA4  3C 60 80 9F */	lis r3, __vt__8cM3dGSph@ha
/* 809F1EA8  38 03 2F 40 */	addi r0, r3, __vt__8cM3dGSph@l
/* 809F1EAC  90 1F 01 34 */	stw r0, 0x134(r31)
/* 809F1EB0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 809F1EB4  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 809F1EB8  90 7F 01 20 */	stw r3, 0x120(r31)
/* 809F1EBC  38 03 00 58 */	addi r0, r3, 0x58
/* 809F1EC0  90 1F 01 34 */	stw r0, 0x134(r31)
/* 809F1EC4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 809F1EC8  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 809F1ECC  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 809F1ED0  38 03 00 2C */	addi r0, r3, 0x2c
/* 809F1ED4  90 1F 01 20 */	stw r0, 0x120(r31)
/* 809F1ED8  38 03 00 84 */	addi r0, r3, 0x84
/* 809F1EDC  90 1F 01 34 */	stw r0, 0x134(r31)
/* 809F1EE0  7F E3 FB 78 */	mr r3, r31
/* 809F1EE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F1EE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F1EEC  7C 08 03 A6 */	mtlr r0
/* 809F1EF0  38 21 00 10 */	addi r1, r1, 0x10
/* 809F1EF4  4E 80 00 20 */	blr 
