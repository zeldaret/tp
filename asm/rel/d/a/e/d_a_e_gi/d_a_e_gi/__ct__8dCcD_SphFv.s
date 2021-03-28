lbl_806D06D4:
/* 806D06D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D06D8  7C 08 02 A6 */	mflr r0
/* 806D06DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D06E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806D06E4  7C 7F 1B 78 */	mr r31, r3
/* 806D06E8  4B 9B 33 40 */	b __ct__12dCcD_GObjInfFv
/* 806D06EC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806D06F0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806D06F4  90 1F 01 20 */	stw r0, 0x120(r31)
/* 806D06F8  3C 60 80 6D */	lis r3, __vt__8cM3dGAab@ha
/* 806D06FC  38 03 10 D8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 806D0700  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 806D0704  3C 60 80 6D */	lis r3, __vt__8cM3dGSph@ha
/* 806D0708  38 03 10 E4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 806D070C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 806D0710  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 806D0714  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 806D0718  90 7F 01 20 */	stw r3, 0x120(r31)
/* 806D071C  38 03 00 58 */	addi r0, r3, 0x58
/* 806D0720  90 1F 01 34 */	stw r0, 0x134(r31)
/* 806D0724  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 806D0728  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 806D072C  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 806D0730  38 03 00 2C */	addi r0, r3, 0x2c
/* 806D0734  90 1F 01 20 */	stw r0, 0x120(r31)
/* 806D0738  38 03 00 84 */	addi r0, r3, 0x84
/* 806D073C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 806D0740  7F E3 FB 78 */	mr r3, r31
/* 806D0744  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806D0748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D074C  7C 08 03 A6 */	mtlr r0
/* 806D0750  38 21 00 10 */	addi r1, r1, 0x10
/* 806D0754  4E 80 00 20 */	blr 
