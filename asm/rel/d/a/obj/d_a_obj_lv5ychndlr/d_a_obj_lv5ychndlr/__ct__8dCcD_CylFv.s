lbl_80C6E674:
/* 80C6E674  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6E678  7C 08 02 A6 */	mflr r0
/* 80C6E67C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6E680  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6E684  7C 7F 1B 78 */	mr r31, r3
/* 80C6E688  4B 41 53 A0 */	b __ct__12dCcD_GObjInfFv
/* 80C6E68C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C6E690  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C6E694  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C6E698  3C 60 80 C7 */	lis r3, __vt__8cM3dGAab@ha
/* 80C6E69C  38 03 EB 2C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C6E6A0  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80C6E6A4  3C 60 80 C7 */	lis r3, __vt__8cM3dGCyl@ha
/* 80C6E6A8  38 03 EB 20 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80C6E6AC  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80C6E6B0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80C6E6B4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80C6E6B8  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80C6E6BC  38 03 00 58 */	addi r0, r3, 0x58
/* 80C6E6C0  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80C6E6C4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80C6E6C8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80C6E6CC  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80C6E6D0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C6E6D4  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C6E6D8  38 03 00 84 */	addi r0, r3, 0x84
/* 80C6E6DC  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80C6E6E0  7F E3 FB 78 */	mr r3, r31
/* 80C6E6E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6E6E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6E6EC  7C 08 03 A6 */	mtlr r0
/* 80C6E6F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6E6F4  4E 80 00 20 */	blr 
