lbl_80D39798:
/* 80D39798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3979C  7C 08 02 A6 */	mflr r0
/* 80D397A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D397A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D397A8  7C 7F 1B 78 */	mr r31, r3
/* 80D397AC  4B 34 A2 7D */	bl __ct__12dCcD_GObjInfFv
/* 80D397B0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D397B4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D397B8  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80D397BC  3C 60 80 D4 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D39DA4@ha */
/* 80D397C0  38 03 9D A4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D39DA4@l */
/* 80D397C4  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80D397C8  3C 60 80 D4 */	lis r3, __vt__8cM3dGSph@ha /* 0x80D39D98@ha */
/* 80D397CC  38 03 9D 98 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80D39D98@l */
/* 80D397D0  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80D397D4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80D397D8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80D397DC  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80D397E0  38 03 00 58 */	addi r0, r3, 0x58
/* 80D397E4  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80D397E8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80D397EC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80D397F0  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80D397F4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D397F8  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80D397FC  38 03 00 84 */	addi r0, r3, 0x84
/* 80D39800  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80D39804  7F E3 FB 78 */	mr r3, r31
/* 80D39808  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3980C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D39810  7C 08 03 A6 */	mtlr r0
/* 80D39814  38 21 00 10 */	addi r1, r1, 0x10
/* 80D39818  4E 80 00 20 */	blr 
