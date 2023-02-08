lbl_8077963C:
/* 8077963C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80779640  7C 08 02 A6 */	mflr r0
/* 80779644  90 01 00 14 */	stw r0, 0x14(r1)
/* 80779648  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8077964C  7C 7F 1B 78 */	mr r31, r3
/* 80779650  4B 90 A3 D9 */	bl __ct__12dCcD_GObjInfFv
/* 80779654  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80779658  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8077965C  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80779660  3C 60 80 78 */	lis r3, __vt__8cM3dGAab@ha /* 0x8077A7BC@ha */
/* 80779664  38 03 A7 BC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8077A7BC@l */
/* 80779668  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 8077966C  3C 60 80 78 */	lis r3, __vt__8cM3dGSph@ha /* 0x8077A7B0@ha */
/* 80779670  38 03 A7 B0 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8077A7B0@l */
/* 80779674  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80779678  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8077967C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80779680  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80779684  38 03 00 58 */	addi r0, r3, 0x58
/* 80779688  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8077968C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80779690  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80779694  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80779698  38 03 00 2C */	addi r0, r3, 0x2c
/* 8077969C  90 1F 01 20 */	stw r0, 0x120(r31)
/* 807796A0  38 03 00 84 */	addi r0, r3, 0x84
/* 807796A4  90 1F 01 34 */	stw r0, 0x134(r31)
/* 807796A8  7F E3 FB 78 */	mr r3, r31
/* 807796AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807796B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807796B4  7C 08 03 A6 */	mtlr r0
/* 807796B8  38 21 00 10 */	addi r1, r1, 0x10
/* 807796BC  4E 80 00 20 */	blr 
