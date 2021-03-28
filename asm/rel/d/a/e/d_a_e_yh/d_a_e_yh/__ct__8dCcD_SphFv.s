lbl_80803ABC:
/* 80803ABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80803AC0  7C 08 02 A6 */	mflr r0
/* 80803AC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80803AC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80803ACC  7C 7F 1B 78 */	mr r31, r3
/* 80803AD0  4B 87 FF 58 */	b __ct__12dCcD_GObjInfFv
/* 80803AD4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80803AD8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80803ADC  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80803AE0  3C 60 80 80 */	lis r3, __vt__8cM3dGAab@ha
/* 80803AE4  38 03 46 D8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80803AE8  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80803AEC  3C 60 80 80 */	lis r3, __vt__8cM3dGSph@ha
/* 80803AF0  38 03 46 CC */	addi r0, r3, __vt__8cM3dGSph@l
/* 80803AF4  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80803AF8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80803AFC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80803B00  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80803B04  38 03 00 58 */	addi r0, r3, 0x58
/* 80803B08  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80803B0C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80803B10  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80803B14  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80803B18  38 03 00 2C */	addi r0, r3, 0x2c
/* 80803B1C  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80803B20  38 03 00 84 */	addi r0, r3, 0x84
/* 80803B24  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80803B28  7F E3 FB 78 */	mr r3, r31
/* 80803B2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80803B30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80803B34  7C 08 03 A6 */	mtlr r0
/* 80803B38  38 21 00 10 */	addi r1, r1, 0x10
/* 80803B3C  4E 80 00 20 */	blr 
