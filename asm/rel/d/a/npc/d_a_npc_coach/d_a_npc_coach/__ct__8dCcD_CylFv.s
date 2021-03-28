lbl_809A4D7C:
/* 809A4D7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A4D80  7C 08 02 A6 */	mflr r0
/* 809A4D84  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A4D88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A4D8C  7C 7F 1B 78 */	mr r31, r3
/* 809A4D90  4B 6D EC 98 */	b __ct__12dCcD_GObjInfFv
/* 809A4D94  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809A4D98  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809A4D9C  90 1F 01 20 */	stw r0, 0x120(r31)
/* 809A4DA0  3C 60 80 9A */	lis r3, __vt__8cM3dGAab@ha
/* 809A4DA4  38 03 52 20 */	addi r0, r3, __vt__8cM3dGAab@l
/* 809A4DA8  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 809A4DAC  3C 60 80 9A */	lis r3, __vt__8cM3dGCyl@ha
/* 809A4DB0  38 03 52 2C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 809A4DB4  90 1F 01 38 */	stw r0, 0x138(r31)
/* 809A4DB8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 809A4DBC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 809A4DC0  90 7F 01 20 */	stw r3, 0x120(r31)
/* 809A4DC4  38 03 00 58 */	addi r0, r3, 0x58
/* 809A4DC8  90 1F 01 38 */	stw r0, 0x138(r31)
/* 809A4DCC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 809A4DD0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 809A4DD4  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 809A4DD8  38 03 00 2C */	addi r0, r3, 0x2c
/* 809A4DDC  90 1F 01 20 */	stw r0, 0x120(r31)
/* 809A4DE0  38 03 00 84 */	addi r0, r3, 0x84
/* 809A4DE4  90 1F 01 38 */	stw r0, 0x138(r31)
/* 809A4DE8  7F E3 FB 78 */	mr r3, r31
/* 809A4DEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A4DF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A4DF4  7C 08 03 A6 */	mtlr r0
/* 809A4DF8  38 21 00 10 */	addi r1, r1, 0x10
/* 809A4DFC  4E 80 00 20 */	blr 
