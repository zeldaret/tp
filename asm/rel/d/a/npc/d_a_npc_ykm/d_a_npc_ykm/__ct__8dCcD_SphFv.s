lbl_80B5C75C:
/* 80B5C75C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5C760  7C 08 02 A6 */	mflr r0
/* 80B5C764  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5C768  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5C76C  7C 7F 1B 78 */	mr r31, r3
/* 80B5C770  4B 52 72 B8 */	b __ct__12dCcD_GObjInfFv
/* 80B5C774  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80B5C778  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80B5C77C  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80B5C780  3C 60 80 B6 */	lis r3, __vt__8cM3dGAab@ha
/* 80B5C784  38 03 EC 2C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80B5C788  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80B5C78C  3C 60 80 B6 */	lis r3, __vt__8cM3dGSph@ha
/* 80B5C790  38 03 EB A8 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80B5C794  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80B5C798  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80B5C79C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80B5C7A0  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80B5C7A4  38 03 00 58 */	addi r0, r3, 0x58
/* 80B5C7A8  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80B5C7AC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80B5C7B0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80B5C7B4  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80B5C7B8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B5C7BC  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80B5C7C0  38 03 00 84 */	addi r0, r3, 0x84
/* 80B5C7C4  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80B5C7C8  7F E3 FB 78 */	mr r3, r31
/* 80B5C7CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5C7D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5C7D4  7C 08 03 A6 */	mtlr r0
/* 80B5C7D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5C7DC  4E 80 00 20 */	blr 
