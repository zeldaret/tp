lbl_80735378:
/* 80735378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8073537C  7C 08 02 A6 */	mflr r0
/* 80735380  90 01 00 14 */	stw r0, 0x14(r1)
/* 80735384  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80735388  7C 7F 1B 78 */	mr r31, r3
/* 8073538C  4B 94 E6 9C */	b __ct__12dCcD_GObjInfFv
/* 80735390  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80735394  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80735398  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8073539C  3C 60 80 73 */	lis r3, __vt__8cM3dGAab@ha
/* 807353A0  38 03 5F A4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 807353A4  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 807353A8  3C 60 80 73 */	lis r3, __vt__8cM3dGSph@ha
/* 807353AC  38 03 5F B0 */	addi r0, r3, __vt__8cM3dGSph@l
/* 807353B0  90 1F 01 34 */	stw r0, 0x134(r31)
/* 807353B4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 807353B8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 807353BC  90 7F 01 20 */	stw r3, 0x120(r31)
/* 807353C0  38 03 00 58 */	addi r0, r3, 0x58
/* 807353C4  90 1F 01 34 */	stw r0, 0x134(r31)
/* 807353C8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 807353CC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 807353D0  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 807353D4  38 03 00 2C */	addi r0, r3, 0x2c
/* 807353D8  90 1F 01 20 */	stw r0, 0x120(r31)
/* 807353DC  38 03 00 84 */	addi r0, r3, 0x84
/* 807353E0  90 1F 01 34 */	stw r0, 0x134(r31)
/* 807353E4  7F E3 FB 78 */	mr r3, r31
/* 807353E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807353EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807353F0  7C 08 03 A6 */	mtlr r0
/* 807353F4  38 21 00 10 */	addi r1, r1, 0x10
/* 807353F8  4E 80 00 20 */	blr 
