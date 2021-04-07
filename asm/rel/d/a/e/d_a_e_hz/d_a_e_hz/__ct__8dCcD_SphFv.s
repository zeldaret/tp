lbl_806F0078:
/* 806F0078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F007C  7C 08 02 A6 */	mflr r0
/* 806F0080  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F0084  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F0088  7C 7F 1B 78 */	mr r31, r3
/* 806F008C  4B 99 39 9D */	bl __ct__12dCcD_GObjInfFv
/* 806F0090  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806F0094  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806F0098  90 1F 01 20 */	stw r0, 0x120(r31)
/* 806F009C  3C 60 80 6F */	lis r3, __vt__8cM3dGAab@ha /* 0x806F0ADC@ha */
/* 806F00A0  38 03 0A DC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806F0ADC@l */
/* 806F00A4  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 806F00A8  3C 60 80 6F */	lis r3, __vt__8cM3dGSph@ha /* 0x806F0AE8@ha */
/* 806F00AC  38 03 0A E8 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806F0AE8@l */
/* 806F00B0  90 1F 01 34 */	stw r0, 0x134(r31)
/* 806F00B4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 806F00B8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 806F00BC  90 7F 01 20 */	stw r3, 0x120(r31)
/* 806F00C0  38 03 00 58 */	addi r0, r3, 0x58
/* 806F00C4  90 1F 01 34 */	stw r0, 0x134(r31)
/* 806F00C8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 806F00CC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 806F00D0  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 806F00D4  38 03 00 2C */	addi r0, r3, 0x2c
/* 806F00D8  90 1F 01 20 */	stw r0, 0x120(r31)
/* 806F00DC  38 03 00 84 */	addi r0, r3, 0x84
/* 806F00E0  90 1F 01 34 */	stw r0, 0x134(r31)
/* 806F00E4  7F E3 FB 78 */	mr r3, r31
/* 806F00E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F00EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F00F0  7C 08 03 A6 */	mtlr r0
/* 806F00F4  38 21 00 10 */	addi r1, r1, 0x10
/* 806F00F8  4E 80 00 20 */	blr 
