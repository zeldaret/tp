lbl_806BB460:
/* 806BB460  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BB464  7C 08 02 A6 */	mflr r0
/* 806BB468  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BB46C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806BB470  7C 7F 1B 78 */	mr r31, r3
/* 806BB474  4B 9C 85 B5 */	bl __ct__12dCcD_GObjInfFv
/* 806BB478  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806BB47C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806BB480  90 1F 01 20 */	stw r0, 0x120(r31)
/* 806BB484  3C 60 80 6C */	lis r3, __vt__8cM3dGAab@ha /* 0x806BB87C@ha */
/* 806BB488  38 03 B8 7C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806BB87C@l */
/* 806BB48C  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 806BB490  3C 60 80 6C */	lis r3, __vt__8cM3dGSph@ha /* 0x806BB888@ha */
/* 806BB494  38 03 B8 88 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806BB888@l */
/* 806BB498  90 1F 01 34 */	stw r0, 0x134(r31)
/* 806BB49C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 806BB4A0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 806BB4A4  90 7F 01 20 */	stw r3, 0x120(r31)
/* 806BB4A8  38 03 00 58 */	addi r0, r3, 0x58
/* 806BB4AC  90 1F 01 34 */	stw r0, 0x134(r31)
/* 806BB4B0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 806BB4B4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 806BB4B8  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 806BB4BC  38 03 00 2C */	addi r0, r3, 0x2c
/* 806BB4C0  90 1F 01 20 */	stw r0, 0x120(r31)
/* 806BB4C4  38 03 00 84 */	addi r0, r3, 0x84
/* 806BB4C8  90 1F 01 34 */	stw r0, 0x134(r31)
/* 806BB4CC  7F E3 FB 78 */	mr r3, r31
/* 806BB4D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806BB4D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BB4D8  7C 08 03 A6 */	mtlr r0
/* 806BB4DC  38 21 00 10 */	addi r1, r1, 0x10
/* 806BB4E0  4E 80 00 20 */	blr 
