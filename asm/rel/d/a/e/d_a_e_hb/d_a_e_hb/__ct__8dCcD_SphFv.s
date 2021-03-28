lbl_80500344:
/* 80500344  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80500348  7C 08 02 A6 */	mflr r0
/* 8050034C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80500350  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80500354  7C 7F 1B 78 */	mr r31, r3
/* 80500358  4B B8 36 D0 */	b __ct__12dCcD_GObjInfFv
/* 8050035C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80500360  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80500364  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80500368  3C 60 80 50 */	lis r3, __vt__8cM3dGAab@ha
/* 8050036C  38 03 0E 2C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80500370  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80500374  3C 60 80 50 */	lis r3, __vt__8cM3dGSph@ha
/* 80500378  38 03 0E 20 */	addi r0, r3, __vt__8cM3dGSph@l
/* 8050037C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80500380  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80500384  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80500388  90 7F 01 20 */	stw r3, 0x120(r31)
/* 8050038C  38 03 00 58 */	addi r0, r3, 0x58
/* 80500390  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80500394  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80500398  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 8050039C  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 805003A0  38 03 00 2C */	addi r0, r3, 0x2c
/* 805003A4  90 1F 01 20 */	stw r0, 0x120(r31)
/* 805003A8  38 03 00 84 */	addi r0, r3, 0x84
/* 805003AC  90 1F 01 34 */	stw r0, 0x134(r31)
/* 805003B0  7F E3 FB 78 */	mr r3, r31
/* 805003B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805003B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805003BC  7C 08 03 A6 */	mtlr r0
/* 805003C0  38 21 00 10 */	addi r1, r1, 0x10
/* 805003C4  4E 80 00 20 */	blr 
