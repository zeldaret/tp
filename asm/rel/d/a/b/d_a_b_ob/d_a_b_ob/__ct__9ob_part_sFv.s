lbl_8061A72C:
/* 8061A72C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061A730  7C 08 02 A6 */	mflr r0
/* 8061A734  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061A738  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061A73C  93 C1 00 08 */	stw r30, 8(r1)
/* 8061A740  7C 7F 1B 78 */	mr r31, r3
/* 8061A744  3B DF 00 40 */	addi r30, r31, 0x40
/* 8061A748  7F C3 F3 78 */	mr r3, r30
/* 8061A74C  4B A6 92 DC */	b __ct__12dCcD_GObjInfFv
/* 8061A750  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8061A754  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8061A758  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8061A75C  3C 60 80 62 */	lis r3, __vt__8cM3dGAab@ha
/* 8061A760  38 03 B4 94 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8061A764  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 8061A768  3C 60 80 62 */	lis r3, __vt__8cM3dGSph@ha
/* 8061A76C  38 03 B4 88 */	addi r0, r3, __vt__8cM3dGSph@l
/* 8061A770  90 1E 01 34 */	stw r0, 0x134(r30)
/* 8061A774  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8061A778  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 8061A77C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 8061A780  38 03 00 58 */	addi r0, r3, 0x58
/* 8061A784  90 1E 01 34 */	stw r0, 0x134(r30)
/* 8061A788  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8061A78C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 8061A790  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 8061A794  38 03 00 2C */	addi r0, r3, 0x2c
/* 8061A798  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8061A79C  38 03 00 84 */	addi r0, r3, 0x84
/* 8061A7A0  90 1E 01 34 */	stw r0, 0x134(r30)
/* 8061A7A4  7F E3 FB 78 */	mr r3, r31
/* 8061A7A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061A7AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8061A7B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061A7B4  7C 08 03 A6 */	mtlr r0
/* 8061A7B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8061A7BC  4E 80 00 20 */	blr 
