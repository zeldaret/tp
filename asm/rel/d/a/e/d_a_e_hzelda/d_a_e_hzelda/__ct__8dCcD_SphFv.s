lbl_806F5264:
/* 806F5264  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F5268  7C 08 02 A6 */	mflr r0
/* 806F526C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F5270  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F5274  7C 7F 1B 78 */	mr r31, r3
/* 806F5278  4B 98 E7 B0 */	b __ct__12dCcD_GObjInfFv
/* 806F527C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806F5280  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806F5284  90 1F 01 20 */	stw r0, 0x120(r31)
/* 806F5288  3C 60 80 6F */	lis r3, __vt__8cM3dGAab@ha
/* 806F528C  38 03 58 D4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 806F5290  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 806F5294  3C 60 80 6F */	lis r3, __vt__8cM3dGSph@ha
/* 806F5298  38 03 58 C8 */	addi r0, r3, __vt__8cM3dGSph@l
/* 806F529C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 806F52A0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 806F52A4  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 806F52A8  90 7F 01 20 */	stw r3, 0x120(r31)
/* 806F52AC  38 03 00 58 */	addi r0, r3, 0x58
/* 806F52B0  90 1F 01 34 */	stw r0, 0x134(r31)
/* 806F52B4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 806F52B8  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 806F52BC  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 806F52C0  38 03 00 2C */	addi r0, r3, 0x2c
/* 806F52C4  90 1F 01 20 */	stw r0, 0x120(r31)
/* 806F52C8  38 03 00 84 */	addi r0, r3, 0x84
/* 806F52CC  90 1F 01 34 */	stw r0, 0x134(r31)
/* 806F52D0  7F E3 FB 78 */	mr r3, r31
/* 806F52D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F52D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F52DC  7C 08 03 A6 */	mtlr r0
/* 806F52E0  38 21 00 10 */	addi r1, r1, 0x10
/* 806F52E4  4E 80 00 20 */	blr 
