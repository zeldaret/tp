lbl_80D0CD24:
/* 80D0CD24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0CD28  7C 08 02 A6 */	mflr r0
/* 80D0CD2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0CD30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0CD34  7C 7F 1B 78 */	mr r31, r3
/* 80D0CD38  4B 37 6C F1 */	bl __ct__12dCcD_GObjInfFv
/* 80D0CD3C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D0CD40  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D0CD44  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80D0CD48  3C 60 80 D1 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D0D3C4@ha */
/* 80D0CD4C  38 03 D3 C4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D0D3C4@l */
/* 80D0CD50  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80D0CD54  3C 60 80 D1 */	lis r3, __vt__8cM3dGSph@ha /* 0x80D0D3AC@ha */
/* 80D0CD58  38 03 D3 AC */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80D0D3AC@l */
/* 80D0CD5C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80D0CD60  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80D0CD64  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80D0CD68  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80D0CD6C  38 03 00 58 */	addi r0, r3, 0x58
/* 80D0CD70  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80D0CD74  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80D0CD78  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80D0CD7C  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80D0CD80  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D0CD84  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80D0CD88  38 03 00 84 */	addi r0, r3, 0x84
/* 80D0CD8C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80D0CD90  7F E3 FB 78 */	mr r3, r31
/* 80D0CD94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0CD98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0CD9C  7C 08 03 A6 */	mtlr r0
/* 80D0CDA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0CDA4  4E 80 00 20 */	blr 
