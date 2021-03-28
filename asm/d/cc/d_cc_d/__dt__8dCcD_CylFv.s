lbl_80084D60:
/* 80084D60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80084D64  7C 08 02 A6 */	mflr r0
/* 80084D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80084D6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80084D70  93 C1 00 08 */	stw r30, 8(r1)
/* 80084D74  7C 7E 1B 79 */	or. r30, r3, r3
/* 80084D78  7C 9F 23 78 */	mr r31, r4
/* 80084D7C  41 82 00 94 */	beq lbl_80084E10
/* 80084D80  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80084D84  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80084D88  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80084D8C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80084D90  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80084D94  38 03 00 84 */	addi r0, r3, 0x84
/* 80084D98  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80084D9C  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80084DA0  41 82 00 54 */	beq lbl_80084DF4
/* 80084DA4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80084DA8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80084DAC  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80084DB0  38 03 00 58 */	addi r0, r3, 0x58
/* 80084DB4  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80084DB8  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80084DBC  41 82 00 10 */	beq lbl_80084DCC
/* 80084DC0  3C 60 80 3A */	lis r3, __vt__8cM3dGCyl@ha
/* 80084DC4  38 03 72 0C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80084DC8  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80084DCC:
/* 80084DCC  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80084DD0  41 82 00 24 */	beq lbl_80084DF4
/* 80084DD4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80084DD8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80084DDC  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80084DE0  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80084DE4  41 82 00 10 */	beq lbl_80084DF4
/* 80084DE8  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha
/* 80084DEC  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80084DF0  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80084DF4:
/* 80084DF4  7F C3 F3 78 */	mr r3, r30
/* 80084DF8  38 80 00 00 */	li r4, 0
/* 80084DFC  4B FF F2 E9 */	bl __dt__12dCcD_GObjInfFv
/* 80084E00  7F E0 07 35 */	extsh. r0, r31
/* 80084E04  40 81 00 0C */	ble lbl_80084E10
/* 80084E08  7F C3 F3 78 */	mr r3, r30
/* 80084E0C  48 24 9F 31 */	bl __dl__FPv
lbl_80084E10:
/* 80084E10  7F C3 F3 78 */	mr r3, r30
/* 80084E14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80084E18  83 C1 00 08 */	lwz r30, 8(r1)
/* 80084E1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80084E20  7C 08 03 A6 */	mtlr r0
/* 80084E24  38 21 00 10 */	addi r1, r1, 0x10
/* 80084E28  4E 80 00 20 */	blr 
