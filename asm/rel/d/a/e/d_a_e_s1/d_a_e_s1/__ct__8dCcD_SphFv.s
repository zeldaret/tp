lbl_80780638:
/* 80780638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8078063C  7C 08 02 A6 */	mflr r0
/* 80780640  90 01 00 14 */	stw r0, 0x14(r1)
/* 80780644  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80780648  7C 7F 1B 78 */	mr r31, r3
/* 8078064C  4B 90 33 DC */	b __ct__12dCcD_GObjInfFv
/* 80780650  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80780654  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80780658  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8078065C  3C 60 80 78 */	lis r3, __vt__8cM3dGAab@ha
/* 80780660  38 03 12 F8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80780664  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80780668  3C 60 80 78 */	lis r3, __vt__8cM3dGSph@ha
/* 8078066C  38 03 12 EC */	addi r0, r3, __vt__8cM3dGSph@l
/* 80780670  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80780674  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80780678  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 8078067C  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80780680  38 03 00 58 */	addi r0, r3, 0x58
/* 80780684  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80780688  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8078068C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80780690  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80780694  38 03 00 2C */	addi r0, r3, 0x2c
/* 80780698  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8078069C  38 03 00 84 */	addi r0, r3, 0x84
/* 807806A0  90 1F 01 34 */	stw r0, 0x134(r31)
/* 807806A4  7F E3 FB 78 */	mr r3, r31
/* 807806A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807806AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807806B0  7C 08 03 A6 */	mtlr r0
/* 807806B4  38 21 00 10 */	addi r1, r1, 0x10
/* 807806B8  4E 80 00 20 */	blr 
