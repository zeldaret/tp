lbl_805F3B00:
/* 805F3B00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F3B04  7C 08 02 A6 */	mflr r0
/* 805F3B08  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F3B0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F3B10  7C 7F 1B 78 */	mr r31, r3
/* 805F3B14  4B A8 FF 14 */	b __ct__12dCcD_GObjInfFv
/* 805F3B18  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 805F3B1C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 805F3B20  90 1F 01 20 */	stw r0, 0x120(r31)
/* 805F3B24  3C 60 80 5F */	lis r3, __vt__8cM3dGAab@ha
/* 805F3B28  38 03 47 34 */	addi r0, r3, __vt__8cM3dGAab@l
/* 805F3B2C  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 805F3B30  3C 60 80 5F */	lis r3, __vt__8cM3dGSph@ha
/* 805F3B34  38 03 47 28 */	addi r0, r3, __vt__8cM3dGSph@l
/* 805F3B38  90 1F 01 34 */	stw r0, 0x134(r31)
/* 805F3B3C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 805F3B40  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 805F3B44  90 7F 01 20 */	stw r3, 0x120(r31)
/* 805F3B48  38 03 00 58 */	addi r0, r3, 0x58
/* 805F3B4C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 805F3B50  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 805F3B54  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 805F3B58  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 805F3B5C  38 03 00 2C */	addi r0, r3, 0x2c
/* 805F3B60  90 1F 01 20 */	stw r0, 0x120(r31)
/* 805F3B64  38 03 00 84 */	addi r0, r3, 0x84
/* 805F3B68  90 1F 01 34 */	stw r0, 0x134(r31)
/* 805F3B6C  7F E3 FB 78 */	mr r3, r31
/* 805F3B70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F3B74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F3B78  7C 08 03 A6 */	mtlr r0
/* 805F3B7C  38 21 00 10 */	addi r1, r1, 0x10
/* 805F3B80  4E 80 00 20 */	blr 
