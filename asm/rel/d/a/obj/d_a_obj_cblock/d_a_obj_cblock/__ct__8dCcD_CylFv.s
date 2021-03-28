lbl_80BC6024:
/* 80BC6024  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC6028  7C 08 02 A6 */	mflr r0
/* 80BC602C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC6030  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC6034  7C 7F 1B 78 */	mr r31, r3
/* 80BC6038  4B 4B D9 F0 */	b __ct__12dCcD_GObjInfFv
/* 80BC603C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BC6040  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BC6044  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80BC6048  3C 60 80 BC */	lis r3, __vt__8cM3dGAab@ha
/* 80BC604C  38 03 6C 10 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BC6050  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80BC6054  3C 60 80 BC */	lis r3, __vt__8cM3dGCyl@ha
/* 80BC6058  38 03 6C 04 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80BC605C  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80BC6060  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80BC6064  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80BC6068  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80BC606C  38 03 00 58 */	addi r0, r3, 0x58
/* 80BC6070  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80BC6074  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80BC6078  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80BC607C  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80BC6080  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BC6084  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80BC6088  38 03 00 84 */	addi r0, r3, 0x84
/* 80BC608C  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80BC6090  7F E3 FB 78 */	mr r3, r31
/* 80BC6094  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC6098  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC609C  7C 08 03 A6 */	mtlr r0
/* 80BC60A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC60A4  4E 80 00 20 */	blr 
