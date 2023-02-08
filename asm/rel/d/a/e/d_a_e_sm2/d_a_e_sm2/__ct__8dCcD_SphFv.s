lbl_8079CBF4:
/* 8079CBF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8079CBF8  7C 08 02 A6 */	mflr r0
/* 8079CBFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8079CC00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8079CC04  7C 7F 1B 78 */	mr r31, r3
/* 8079CC08  4B 8E 6E 21 */	bl __ct__12dCcD_GObjInfFv
/* 8079CC0C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8079CC10  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8079CC14  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8079CC18  3C 60 80 7A */	lis r3, __vt__8cM3dGAab@ha /* 0x8079DAE0@ha */
/* 8079CC1C  38 03 DA E0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8079DAE0@l */
/* 8079CC20  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 8079CC24  3C 60 80 7A */	lis r3, __vt__8cM3dGSph@ha /* 0x8079DAEC@ha */
/* 8079CC28  38 03 DA EC */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8079DAEC@l */
/* 8079CC2C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8079CC30  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8079CC34  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8079CC38  90 7F 01 20 */	stw r3, 0x120(r31)
/* 8079CC3C  38 03 00 58 */	addi r0, r3, 0x58
/* 8079CC40  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8079CC44  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8079CC48  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8079CC4C  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 8079CC50  38 03 00 2C */	addi r0, r3, 0x2c
/* 8079CC54  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8079CC58  38 03 00 84 */	addi r0, r3, 0x84
/* 8079CC5C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8079CC60  7F E3 FB 78 */	mr r3, r31
/* 8079CC64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8079CC68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8079CC6C  7C 08 03 A6 */	mtlr r0
/* 8079CC70  38 21 00 10 */	addi r1, r1, 0x10
/* 8079CC74  4E 80 00 20 */	blr 
