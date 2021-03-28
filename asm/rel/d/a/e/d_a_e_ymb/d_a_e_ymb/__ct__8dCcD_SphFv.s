lbl_80821318:
/* 80821318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8082131C  7C 08 02 A6 */	mflr r0
/* 80821320  90 01 00 14 */	stw r0, 0x14(r1)
/* 80821324  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80821328  7C 7F 1B 78 */	mr r31, r3
/* 8082132C  4B 86 26 FC */	b __ct__12dCcD_GObjInfFv
/* 80821330  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80821334  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80821338  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8082133C  3C 60 80 82 */	lis r3, __vt__8cM3dGAab@ha
/* 80821340  38 03 1D E8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80821344  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80821348  3C 60 80 82 */	lis r3, __vt__8cM3dGSph@ha
/* 8082134C  38 03 1D DC */	addi r0, r3, __vt__8cM3dGSph@l
/* 80821350  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80821354  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80821358  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 8082135C  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80821360  38 03 00 58 */	addi r0, r3, 0x58
/* 80821364  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80821368  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8082136C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80821370  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80821374  38 03 00 2C */	addi r0, r3, 0x2c
/* 80821378  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8082137C  38 03 00 84 */	addi r0, r3, 0x84
/* 80821380  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80821384  7F E3 FB 78 */	mr r3, r31
/* 80821388  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8082138C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80821390  7C 08 03 A6 */	mtlr r0
/* 80821394  38 21 00 10 */	addi r1, r1, 0x10
/* 80821398  4E 80 00 20 */	blr 
