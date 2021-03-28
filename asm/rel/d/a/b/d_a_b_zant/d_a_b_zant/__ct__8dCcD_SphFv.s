lbl_8064E76C:
/* 8064E76C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8064E770  7C 08 02 A6 */	mflr r0
/* 8064E774  90 01 00 14 */	stw r0, 0x14(r1)
/* 8064E778  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8064E77C  7C 7F 1B 78 */	mr r31, r3
/* 8064E780  4B A3 52 A8 */	b __ct__12dCcD_GObjInfFv
/* 8064E784  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8064E788  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8064E78C  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8064E790  3C 60 80 65 */	lis r3, __vt__8cM3dGAab@ha
/* 8064E794  38 03 F5 98 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8064E798  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 8064E79C  3C 60 80 65 */	lis r3, __vt__8cM3dGSph@ha
/* 8064E7A0  38 03 F5 8C */	addi r0, r3, __vt__8cM3dGSph@l
/* 8064E7A4  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8064E7A8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8064E7AC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 8064E7B0  90 7F 01 20 */	stw r3, 0x120(r31)
/* 8064E7B4  38 03 00 58 */	addi r0, r3, 0x58
/* 8064E7B8  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8064E7BC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8064E7C0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 8064E7C4  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 8064E7C8  38 03 00 2C */	addi r0, r3, 0x2c
/* 8064E7CC  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8064E7D0  38 03 00 84 */	addi r0, r3, 0x84
/* 8064E7D4  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8064E7D8  7F E3 FB 78 */	mr r3, r31
/* 8064E7DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8064E7E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8064E7E4  7C 08 03 A6 */	mtlr r0
/* 8064E7E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8064E7EC  4E 80 00 20 */	blr 
