lbl_80713258:
/* 80713258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8071325C  7C 08 02 A6 */	mflr r0
/* 80713260  90 01 00 14 */	stw r0, 0x14(r1)
/* 80713264  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80713268  7C 7F 1B 78 */	mr r31, r3
/* 8071326C  4B 97 07 BC */	b __ct__12dCcD_GObjInfFv
/* 80713270  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80713274  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80713278  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8071327C  3C 60 80 71 */	lis r3, __vt__8cM3dGAab@ha
/* 80713280  38 03 3E B4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80713284  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80713288  3C 60 80 71 */	lis r3, __vt__8cM3dGSph@ha
/* 8071328C  38 03 3E A8 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80713290  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80713294  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80713298  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 8071329C  90 7F 01 20 */	stw r3, 0x120(r31)
/* 807132A0  38 03 00 58 */	addi r0, r3, 0x58
/* 807132A4  90 1F 01 34 */	stw r0, 0x134(r31)
/* 807132A8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 807132AC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 807132B0  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 807132B4  38 03 00 2C */	addi r0, r3, 0x2c
/* 807132B8  90 1F 01 20 */	stw r0, 0x120(r31)
/* 807132BC  38 03 00 84 */	addi r0, r3, 0x84
/* 807132C0  90 1F 01 34 */	stw r0, 0x134(r31)
/* 807132C4  7F E3 FB 78 */	mr r3, r31
/* 807132C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807132CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807132D0  7C 08 03 A6 */	mtlr r0
/* 807132D4  38 21 00 10 */	addi r1, r1, 0x10
/* 807132D8  4E 80 00 20 */	blr 
