lbl_80CBFD54:
/* 80CBFD54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBFD58  7C 08 02 A6 */	mflr r0
/* 80CBFD5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBFD60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBFD64  7C 7F 1B 78 */	mr r31, r3
/* 80CBFD68  4B 3C 3C C0 */	b __ct__12dCcD_GObjInfFv
/* 80CBFD6C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CBFD70  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CBFD74  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80CBFD78  3C 60 80 CC */	lis r3, __vt__8cM3dGAab@ha
/* 80CBFD7C  38 03 0A 54 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CBFD80  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80CBFD84  3C 60 80 CC */	lis r3, __vt__8cM3dGCyl@ha
/* 80CBFD88  38 03 0A 60 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80CBFD8C  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80CBFD90  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80CBFD94  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80CBFD98  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80CBFD9C  38 03 00 58 */	addi r0, r3, 0x58
/* 80CBFDA0  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80CBFDA4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80CBFDA8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80CBFDAC  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80CBFDB0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CBFDB4  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80CBFDB8  38 03 00 84 */	addi r0, r3, 0x84
/* 80CBFDBC  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80CBFDC0  7F E3 FB 78 */	mr r3, r31
/* 80CBFDC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBFDC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBFDCC  7C 08 03 A6 */	mtlr r0
/* 80CBFDD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBFDD4  4E 80 00 20 */	blr 
