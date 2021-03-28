lbl_80C71138:
/* 80C71138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7113C  7C 08 02 A6 */	mflr r0
/* 80C71140  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C71144  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C71148  7C 7F 1B 78 */	mr r31, r3
/* 80C7114C  4B 41 28 DC */	b __ct__12dCcD_GObjInfFv
/* 80C71150  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C71154  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C71158  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C7115C  3C 60 80 C7 */	lis r3, __vt__8cM3dGAab@ha
/* 80C71160  38 03 22 D8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C71164  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80C71168  3C 60 80 C7 */	lis r3, __vt__8cM3dGCyl@ha
/* 80C7116C  38 03 22 E4 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80C71170  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80C71174  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80C71178  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80C7117C  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80C71180  38 03 00 58 */	addi r0, r3, 0x58
/* 80C71184  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80C71188  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80C7118C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80C71190  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80C71194  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C71198  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C7119C  38 03 00 84 */	addi r0, r3, 0x84
/* 80C711A0  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80C711A4  7F E3 FB 78 */	mr r3, r31
/* 80C711A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C711AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C711B0  7C 08 03 A6 */	mtlr r0
/* 80C711B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C711B8  4E 80 00 20 */	blr 
