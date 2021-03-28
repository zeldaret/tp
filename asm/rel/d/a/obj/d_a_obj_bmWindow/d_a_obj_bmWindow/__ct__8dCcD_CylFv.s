lbl_80BB8768:
/* 80BB8768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB876C  7C 08 02 A6 */	mflr r0
/* 80BB8770  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB8774  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB8778  7C 7F 1B 78 */	mr r31, r3
/* 80BB877C  4B 4C B2 AC */	b __ct__12dCcD_GObjInfFv
/* 80BB8780  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BB8784  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BB8788  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80BB878C  3C 60 80 BC */	lis r3, __vt__8cM3dGAab@ha
/* 80BB8790  38 03 99 20 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BB8794  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80BB8798  3C 60 80 BC */	lis r3, __vt__8cM3dGCyl@ha
/* 80BB879C  38 03 99 2C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80BB87A0  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80BB87A4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80BB87A8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80BB87AC  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80BB87B0  38 03 00 58 */	addi r0, r3, 0x58
/* 80BB87B4  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80BB87B8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80BB87BC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80BB87C0  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80BB87C4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BB87C8  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80BB87CC  38 03 00 84 */	addi r0, r3, 0x84
/* 80BB87D0  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80BB87D4  7F E3 FB 78 */	mr r3, r31
/* 80BB87D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB87DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB87E0  7C 08 03 A6 */	mtlr r0
/* 80BB87E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB87E8  4E 80 00 20 */	blr 
