lbl_80BD2D40:
/* 80BD2D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD2D44  7C 08 02 A6 */	mflr r0
/* 80BD2D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD2D4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD2D50  7C 7F 1B 78 */	mr r31, r3
/* 80BD2D54  4B 4B 0C D4 */	b __ct__12dCcD_GObjInfFv
/* 80BD2D58  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BD2D5C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BD2D60  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80BD2D64  3C 60 80 BD */	lis r3, __vt__8cM3dGAab@ha
/* 80BD2D68  38 03 32 60 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BD2D6C  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80BD2D70  3C 60 80 BD */	lis r3, __vt__8cM3dGSph@ha
/* 80BD2D74  38 03 32 48 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80BD2D78  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80BD2D7C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80BD2D80  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80BD2D84  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80BD2D88  38 03 00 58 */	addi r0, r3, 0x58
/* 80BD2D8C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80BD2D90  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80BD2D94  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80BD2D98  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80BD2D9C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BD2DA0  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80BD2DA4  38 03 00 84 */	addi r0, r3, 0x84
/* 80BD2DA8  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80BD2DAC  7F E3 FB 78 */	mr r3, r31
/* 80BD2DB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD2DB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD2DB8  7C 08 03 A6 */	mtlr r0
/* 80BD2DBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD2DC0  4E 80 00 20 */	blr 
