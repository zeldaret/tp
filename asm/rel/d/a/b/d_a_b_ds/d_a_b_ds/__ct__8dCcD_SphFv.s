lbl_805DC514:
/* 805DC514  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DC518  7C 08 02 A6 */	mflr r0
/* 805DC51C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DC520  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DC524  7C 7F 1B 78 */	mr r31, r3
/* 805DC528  4B AA 75 00 */	b __ct__12dCcD_GObjInfFv
/* 805DC52C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 805DC530  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 805DC534  90 1F 01 20 */	stw r0, 0x120(r31)
/* 805DC538  3C 60 80 5E */	lis r3, __vt__8cM3dGAab@ha
/* 805DC53C  38 03 DA 20 */	addi r0, r3, __vt__8cM3dGAab@l
/* 805DC540  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 805DC544  3C 60 80 5E */	lis r3, __vt__8cM3dGSph@ha
/* 805DC548  38 03 DA 14 */	addi r0, r3, __vt__8cM3dGSph@l
/* 805DC54C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 805DC550  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 805DC554  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 805DC558  90 7F 01 20 */	stw r3, 0x120(r31)
/* 805DC55C  38 03 00 58 */	addi r0, r3, 0x58
/* 805DC560  90 1F 01 34 */	stw r0, 0x134(r31)
/* 805DC564  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 805DC568  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 805DC56C  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 805DC570  38 03 00 2C */	addi r0, r3, 0x2c
/* 805DC574  90 1F 01 20 */	stw r0, 0x120(r31)
/* 805DC578  38 03 00 84 */	addi r0, r3, 0x84
/* 805DC57C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 805DC580  7F E3 FB 78 */	mr r3, r31
/* 805DC584  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DC588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DC58C  7C 08 03 A6 */	mtlr r0
/* 805DC590  38 21 00 10 */	addi r1, r1, 0x10
/* 805DC594  4E 80 00 20 */	blr 
