lbl_80BC1D74:
/* 80BC1D74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC1D78  7C 08 02 A6 */	mflr r0
/* 80BC1D7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC1D80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC1D84  93 C1 00 08 */	stw r30, 8(r1)
/* 80BC1D88  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BC1D8C  7C 9F 23 78 */	mr r31, r4
/* 80BC1D90  41 82 00 94 */	beq lbl_80BC1E24
/* 80BC1D94  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80BC1D98  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80BC1D9C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80BC1DA0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BC1DA4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BC1DA8  38 03 00 84 */	addi r0, r3, 0x84
/* 80BC1DAC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80BC1DB0  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BC1DB4  41 82 00 54 */	beq lbl_80BC1E08
/* 80BC1DB8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80BC1DBC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80BC1DC0  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80BC1DC4  38 03 00 58 */	addi r0, r3, 0x58
/* 80BC1DC8  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80BC1DCC  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80BC1DD0  41 82 00 10 */	beq lbl_80BC1DE0
/* 80BC1DD4  3C 60 80 BC */	lis r3, __vt__8cM3dGCyl@ha
/* 80BC1DD8  38 03 24 BC */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80BC1DDC  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80BC1DE0:
/* 80BC1DE0  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BC1DE4  41 82 00 24 */	beq lbl_80BC1E08
/* 80BC1DE8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BC1DEC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BC1DF0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BC1DF4  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80BC1DF8  41 82 00 10 */	beq lbl_80BC1E08
/* 80BC1DFC  3C 60 80 BC */	lis r3, __vt__8cM3dGAab@ha
/* 80BC1E00  38 03 24 B0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BC1E04  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80BC1E08:
/* 80BC1E08  7F C3 F3 78 */	mr r3, r30
/* 80BC1E0C  38 80 00 00 */	li r4, 0
/* 80BC1E10  4B 4C 22 D4 */	b __dt__12dCcD_GObjInfFv
/* 80BC1E14  7F E0 07 35 */	extsh. r0, r31
/* 80BC1E18  40 81 00 0C */	ble lbl_80BC1E24
/* 80BC1E1C  7F C3 F3 78 */	mr r3, r30
/* 80BC1E20  4B 70 CF 1C */	b __dl__FPv
lbl_80BC1E24:
/* 80BC1E24  7F C3 F3 78 */	mr r3, r30
/* 80BC1E28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC1E2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BC1E30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC1E34  7C 08 03 A6 */	mtlr r0
/* 80BC1E38  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC1E3C  4E 80 00 20 */	blr 
