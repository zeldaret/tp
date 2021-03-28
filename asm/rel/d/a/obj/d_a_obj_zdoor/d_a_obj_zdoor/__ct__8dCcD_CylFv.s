lbl_80D40074:
/* 80D40074  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D40078  7C 08 02 A6 */	mflr r0
/* 80D4007C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D40080  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D40084  7C 7F 1B 78 */	mr r31, r3
/* 80D40088  4B 34 39 A0 */	b __ct__12dCcD_GObjInfFv
/* 80D4008C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D40090  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D40094  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80D40098  3C 60 80 D4 */	lis r3, __vt__8cM3dGAab@ha
/* 80D4009C  38 03 04 18 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D400A0  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80D400A4  3C 60 80 D4 */	lis r3, __vt__8cM3dGCyl@ha
/* 80D400A8  38 03 04 0C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80D400AC  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80D400B0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80D400B4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80D400B8  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80D400BC  38 03 00 58 */	addi r0, r3, 0x58
/* 80D400C0  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80D400C4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80D400C8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80D400CC  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80D400D0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D400D4  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80D400D8  38 03 00 84 */	addi r0, r3, 0x84
/* 80D400DC  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80D400E0  7F E3 FB 78 */	mr r3, r31
/* 80D400E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D400E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D400EC  7C 08 03 A6 */	mtlr r0
/* 80D400F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D400F4  4E 80 00 20 */	blr 
