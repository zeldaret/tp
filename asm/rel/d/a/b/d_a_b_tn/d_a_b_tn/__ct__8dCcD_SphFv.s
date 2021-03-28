lbl_8062D678:
/* 8062D678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062D67C  7C 08 02 A6 */	mflr r0
/* 8062D680  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062D684  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062D688  7C 7F 1B 78 */	mr r31, r3
/* 8062D68C  4B A5 63 9C */	b __ct__12dCcD_GObjInfFv
/* 8062D690  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8062D694  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8062D698  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8062D69C  3C 60 80 63 */	lis r3, __vt__8cM3dGAab@ha
/* 8062D6A0  38 03 EF C0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8062D6A4  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 8062D6A8  3C 60 80 63 */	lis r3, __vt__8cM3dGSph@ha
/* 8062D6AC  38 03 EF B4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 8062D6B0  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8062D6B4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8062D6B8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 8062D6BC  90 7F 01 20 */	stw r3, 0x120(r31)
/* 8062D6C0  38 03 00 58 */	addi r0, r3, 0x58
/* 8062D6C4  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8062D6C8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8062D6CC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 8062D6D0  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 8062D6D4  38 03 00 2C */	addi r0, r3, 0x2c
/* 8062D6D8  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8062D6DC  38 03 00 84 */	addi r0, r3, 0x84
/* 8062D6E0  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8062D6E4  7F E3 FB 78 */	mr r3, r31
/* 8062D6E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062D6EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062D6F0  7C 08 03 A6 */	mtlr r0
/* 8062D6F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8062D6F8  4E 80 00 20 */	blr 
