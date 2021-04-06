lbl_80C7816C:
/* 80C7816C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C78170  7C 08 02 A6 */	mflr r0
/* 80C78174  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C78178  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7817C  7C 7F 1B 78 */	mr r31, r3
/* 80C78180  4B 40 B8 A9 */	bl __ct__12dCcD_GObjInfFv
/* 80C78184  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C78188  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C7818C  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C78190  3C 60 80 C8 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C79CE4@ha */
/* 80C78194  38 03 9C E4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C79CE4@l */
/* 80C78198  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80C7819C  3C 60 80 C8 */	lis r3, __vt__8cM3dGSph@ha /* 0x80C79CD8@ha */
/* 80C781A0  38 03 9C D8 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80C79CD8@l */
/* 80C781A4  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80C781A8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80C781AC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80C781B0  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80C781B4  38 03 00 58 */	addi r0, r3, 0x58
/* 80C781B8  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80C781BC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80C781C0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80C781C4  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80C781C8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C781CC  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C781D0  38 03 00 84 */	addi r0, r3, 0x84
/* 80C781D4  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80C781D8  7F E3 FB 78 */	mr r3, r31
/* 80C781DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C781E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C781E4  7C 08 03 A6 */	mtlr r0
/* 80C781E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C781EC  4E 80 00 20 */	blr 
