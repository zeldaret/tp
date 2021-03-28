lbl_8076AD5C:
/* 8076AD5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8076AD60  7C 08 02 A6 */	mflr r0
/* 8076AD64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8076AD68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8076AD6C  7C 7F 1B 78 */	mr r31, r3
/* 8076AD70  4B 91 8C B8 */	b __ct__12dCcD_GObjInfFv
/* 8076AD74  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8076AD78  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8076AD7C  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8076AD80  3C 60 80 77 */	lis r3, __vt__8cM3dGAab@ha
/* 8076AD84  38 03 B9 80 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8076AD88  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 8076AD8C  3C 60 80 77 */	lis r3, __vt__8cM3dGSph@ha
/* 8076AD90  38 03 B9 68 */	addi r0, r3, __vt__8cM3dGSph@l
/* 8076AD94  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8076AD98  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8076AD9C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 8076ADA0  90 7F 01 20 */	stw r3, 0x120(r31)
/* 8076ADA4  38 03 00 58 */	addi r0, r3, 0x58
/* 8076ADA8  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8076ADAC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8076ADB0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 8076ADB4  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 8076ADB8  38 03 00 2C */	addi r0, r3, 0x2c
/* 8076ADBC  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8076ADC0  38 03 00 84 */	addi r0, r3, 0x84
/* 8076ADC4  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8076ADC8  7F E3 FB 78 */	mr r3, r31
/* 8076ADCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8076ADD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8076ADD4  7C 08 03 A6 */	mtlr r0
/* 8076ADD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8076ADDC  4E 80 00 20 */	blr 
