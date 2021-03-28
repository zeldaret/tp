lbl_80CBC120:
/* 80CBC120  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBC124  7C 08 02 A6 */	mflr r0
/* 80CBC128  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBC12C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBC130  7C 7F 1B 78 */	mr r31, r3
/* 80CBC134  4B 3C 78 F4 */	b __ct__12dCcD_GObjInfFv
/* 80CBC138  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CBC13C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CBC140  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80CBC144  3C 60 80 CC */	lis r3, __vt__8cM3dGAab@ha
/* 80CBC148  38 03 C5 84 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CBC14C  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80CBC150  3C 60 80 CC */	lis r3, __vt__8cM3dGCyl@ha
/* 80CBC154  38 03 C5 90 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80CBC158  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80CBC15C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80CBC160  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80CBC164  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80CBC168  38 03 00 58 */	addi r0, r3, 0x58
/* 80CBC16C  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80CBC170  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80CBC174  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80CBC178  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80CBC17C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CBC180  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80CBC184  38 03 00 84 */	addi r0, r3, 0x84
/* 80CBC188  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80CBC18C  7F E3 FB 78 */	mr r3, r31
/* 80CBC190  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBC194  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBC198  7C 08 03 A6 */	mtlr r0
/* 80CBC19C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBC1A0  4E 80 00 20 */	blr 
