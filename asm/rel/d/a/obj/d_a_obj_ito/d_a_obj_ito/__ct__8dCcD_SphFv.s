lbl_8047D664:
/* 8047D664  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047D668  7C 08 02 A6 */	mflr r0
/* 8047D66C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047D670  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047D674  7C 7F 1B 78 */	mr r31, r3
/* 8047D678  4B C0 63 B1 */	bl __ct__12dCcD_GObjInfFv
/* 8047D67C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8047D680  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8047D684  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8047D688  3C 60 80 48 */	lis r3, __vt__8cM3dGAab@ha /* 0x8047D988@ha */
/* 8047D68C  38 03 D9 88 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8047D988@l */
/* 8047D690  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 8047D694  3C 60 80 48 */	lis r3, __vt__8cM3dGSph@ha /* 0x8047D994@ha */
/* 8047D698  38 03 D9 94 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8047D994@l */
/* 8047D69C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8047D6A0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8047D6A4  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8047D6A8  90 7F 01 20 */	stw r3, 0x120(r31)
/* 8047D6AC  38 03 00 58 */	addi r0, r3, 0x58
/* 8047D6B0  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8047D6B4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8047D6B8  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8047D6BC  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 8047D6C0  38 03 00 2C */	addi r0, r3, 0x2c
/* 8047D6C4  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8047D6C8  38 03 00 84 */	addi r0, r3, 0x84
/* 8047D6CC  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8047D6D0  7F E3 FB 78 */	mr r3, r31
/* 8047D6D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047D6D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047D6DC  7C 08 03 A6 */	mtlr r0
/* 8047D6E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8047D6E4  4E 80 00 20 */	blr 
