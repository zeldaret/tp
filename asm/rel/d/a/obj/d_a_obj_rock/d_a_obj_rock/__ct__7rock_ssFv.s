lbl_80CBE678:
/* 80CBE678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBE67C  7C 08 02 A6 */	mflr r0
/* 80CBE680  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBE684  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBE688  93 C1 00 08 */	stw r30, 8(r1)
/* 80CBE68C  7C 7F 1B 78 */	mr r31, r3
/* 80CBE690  3B DF 00 24 */	addi r30, r31, 0x24
/* 80CBE694  7F C3 F3 78 */	mr r3, r30
/* 80CBE698  4B 3C 53 91 */	bl __ct__12dCcD_GObjInfFv
/* 80CBE69C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CBE6A0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CBE6A4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CBE6A8  3C 60 80 CC */	lis r3, __vt__8cM3dGAab@ha /* 0x80CBE880@ha */
/* 80CBE6AC  38 03 E8 80 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CBE880@l */
/* 80CBE6B0  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80CBE6B4  3C 60 80 CC */	lis r3, __vt__8cM3dGSph@ha /* 0x80CBE88C@ha */
/* 80CBE6B8  38 03 E8 8C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80CBE88C@l */
/* 80CBE6BC  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80CBE6C0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80CBE6C4  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80CBE6C8  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80CBE6CC  38 03 00 58 */	addi r0, r3, 0x58
/* 80CBE6D0  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80CBE6D4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80CBE6D8  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80CBE6DC  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80CBE6E0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CBE6E4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CBE6E8  38 03 00 84 */	addi r0, r3, 0x84
/* 80CBE6EC  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80CBE6F0  7F E3 FB 78 */	mr r3, r31
/* 80CBE6F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBE6F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CBE6FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBE700  7C 08 03 A6 */	mtlr r0
/* 80CBE704  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBE708  4E 80 00 20 */	blr 
