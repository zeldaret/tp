lbl_806B59F8:
/* 806B59F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B59FC  7C 08 02 A6 */	mflr r0
/* 806B5A00  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B5A04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806B5A08  7C 7F 1B 78 */	mr r31, r3
/* 806B5A0C  4B 9C E0 1D */	bl __ct__12dCcD_GObjInfFv
/* 806B5A10  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806B5A14  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806B5A18  90 1F 01 20 */	stw r0, 0x120(r31)
/* 806B5A1C  3C 60 80 6B */	lis r3, __vt__8cM3dGAab@ha /* 0x806B6200@ha */
/* 806B5A20  38 03 62 00 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806B6200@l */
/* 806B5A24  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 806B5A28  3C 60 80 6B */	lis r3, __vt__8cM3dGSph@ha /* 0x806B620C@ha */
/* 806B5A2C  38 03 62 0C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806B620C@l */
/* 806B5A30  90 1F 01 34 */	stw r0, 0x134(r31)
/* 806B5A34  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 806B5A38  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 806B5A3C  90 7F 01 20 */	stw r3, 0x120(r31)
/* 806B5A40  38 03 00 58 */	addi r0, r3, 0x58
/* 806B5A44  90 1F 01 34 */	stw r0, 0x134(r31)
/* 806B5A48  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 806B5A4C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 806B5A50  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 806B5A54  38 03 00 2C */	addi r0, r3, 0x2c
/* 806B5A58  90 1F 01 20 */	stw r0, 0x120(r31)
/* 806B5A5C  38 03 00 84 */	addi r0, r3, 0x84
/* 806B5A60  90 1F 01 34 */	stw r0, 0x134(r31)
/* 806B5A64  7F E3 FB 78 */	mr r3, r31
/* 806B5A68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806B5A6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B5A70  7C 08 03 A6 */	mtlr r0
/* 806B5A74  38 21 00 10 */	addi r1, r1, 0x10
/* 806B5A78  4E 80 00 20 */	blr 
