lbl_80C663C0:
/* 80C663C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C663C4  7C 08 02 A6 */	mflr r0
/* 80C663C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C663CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C663D0  7C 7F 1B 78 */	mr r31, r3
/* 80C663D4  4B 41 D6 54 */	b __ct__12dCcD_GObjInfFv
/* 80C663D8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C663DC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C663E0  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C663E4  3C 60 80 C6 */	lis r3, __vt__8cM3dGAab@ha
/* 80C663E8  38 03 6A 24 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C663EC  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80C663F0  3C 60 80 C6 */	lis r3, __vt__8cM3dGSph@ha
/* 80C663F4  38 03 6A 30 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80C663F8  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80C663FC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80C66400  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80C66404  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80C66408  38 03 00 58 */	addi r0, r3, 0x58
/* 80C6640C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80C66410  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80C66414  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80C66418  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80C6641C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C66420  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C66424  38 03 00 84 */	addi r0, r3, 0x84
/* 80C66428  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80C6642C  7F E3 FB 78 */	mr r3, r31
/* 80C66430  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C66434  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C66438  7C 08 03 A6 */	mtlr r0
/* 80C6643C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C66440  4E 80 00 20 */	blr 
