lbl_80CA6040:
/* 80CA6040  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA6044  7C 08 02 A6 */	mflr r0
/* 80CA6048  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA604C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA6050  7C 7F 1B 78 */	mr r31, r3
/* 80CA6054  4B 3D D9 D4 */	b __ct__12dCcD_GObjInfFv
/* 80CA6058  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CA605C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CA6060  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80CA6064  3C 60 80 CA */	lis r3, __vt__8cM3dGAab@ha
/* 80CA6068  38 03 66 4C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CA606C  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80CA6070  3C 60 80 CA */	lis r3, __vt__8cM3dGSph@ha
/* 80CA6074  38 03 66 34 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80CA6078  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80CA607C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80CA6080  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80CA6084  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80CA6088  38 03 00 58 */	addi r0, r3, 0x58
/* 80CA608C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80CA6090  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80CA6094  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80CA6098  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80CA609C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CA60A0  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80CA60A4  38 03 00 84 */	addi r0, r3, 0x84
/* 80CA60A8  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80CA60AC  7F E3 FB 78 */	mr r3, r31
/* 80CA60B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA60B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA60B8  7C 08 03 A6 */	mtlr r0
/* 80CA60BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA60C0  4E 80 00 20 */	blr 
