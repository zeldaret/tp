lbl_806392E0:
/* 806392E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806392E4  7C 08 02 A6 */	mflr r0
/* 806392E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806392EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806392F0  7C 7F 1B 78 */	mr r31, r3
/* 806392F4  4B A4 A7 34 */	b __ct__12dCcD_GObjInfFv
/* 806392F8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806392FC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80639300  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80639304  3C 60 80 64 */	lis r3, __vt__8cM3dGAab@ha
/* 80639308  38 03 9E E4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8063930C  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80639310  3C 60 80 64 */	lis r3, __vt__8cM3dGSph@ha
/* 80639314  38 03 9E CC */	addi r0, r3, __vt__8cM3dGSph@l
/* 80639318  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8063931C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80639320  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80639324  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80639328  38 03 00 58 */	addi r0, r3, 0x58
/* 8063932C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80639330  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80639334  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80639338  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 8063933C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80639340  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80639344  38 03 00 84 */	addi r0, r3, 0x84
/* 80639348  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8063934C  7F E3 FB 78 */	mr r3, r31
/* 80639350  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80639354  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80639358  7C 08 03 A6 */	mtlr r0
/* 8063935C  38 21 00 10 */	addi r1, r1, 0x10
/* 80639360  4E 80 00 20 */	blr 
