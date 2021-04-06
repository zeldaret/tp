lbl_809F1DA8:
/* 809F1DA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F1DAC  7C 08 02 A6 */	mflr r0
/* 809F1DB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F1DB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F1DB8  93 C1 00 08 */	stw r30, 8(r1)
/* 809F1DBC  7C 7E 1B 79 */	or. r30, r3, r3
/* 809F1DC0  7C 9F 23 78 */	mr r31, r4
/* 809F1DC4  41 82 00 94 */	beq lbl_809F1E58
/* 809F1DC8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 809F1DCC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 809F1DD0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 809F1DD4  38 03 00 2C */	addi r0, r3, 0x2c
/* 809F1DD8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 809F1DDC  38 03 00 84 */	addi r0, r3, 0x84
/* 809F1DE0  90 1E 01 34 */	stw r0, 0x134(r30)
/* 809F1DE4  34 1E 01 04 */	addic. r0, r30, 0x104
/* 809F1DE8  41 82 00 54 */	beq lbl_809F1E3C
/* 809F1DEC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 809F1DF0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 809F1DF4  90 7E 01 20 */	stw r3, 0x120(r30)
/* 809F1DF8  38 03 00 58 */	addi r0, r3, 0x58
/* 809F1DFC  90 1E 01 34 */	stw r0, 0x134(r30)
/* 809F1E00  34 1E 01 24 */	addic. r0, r30, 0x124
/* 809F1E04  41 82 00 10 */	beq lbl_809F1E14
/* 809F1E08  3C 60 80 9F */	lis r3, __vt__8cM3dGSph@ha /* 0x809F2F40@ha */
/* 809F1E0C  38 03 2F 40 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x809F2F40@l */
/* 809F1E10  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_809F1E14:
/* 809F1E14  34 1E 01 04 */	addic. r0, r30, 0x104
/* 809F1E18  41 82 00 24 */	beq lbl_809F1E3C
/* 809F1E1C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 809F1E20  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 809F1E24  90 1E 01 20 */	stw r0, 0x120(r30)
/* 809F1E28  34 1E 01 04 */	addic. r0, r30, 0x104
/* 809F1E2C  41 82 00 10 */	beq lbl_809F1E3C
/* 809F1E30  3C 60 80 9F */	lis r3, __vt__8cM3dGAab@ha /* 0x809F2F70@ha */
/* 809F1E34  38 03 2F 70 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x809F2F70@l */
/* 809F1E38  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_809F1E3C:
/* 809F1E3C  7F C3 F3 78 */	mr r3, r30
/* 809F1E40  38 80 00 00 */	li r4, 0
/* 809F1E44  4B 69 22 A1 */	bl __dt__12dCcD_GObjInfFv
/* 809F1E48  7F E0 07 35 */	extsh. r0, r31
/* 809F1E4C  40 81 00 0C */	ble lbl_809F1E58
/* 809F1E50  7F C3 F3 78 */	mr r3, r30
/* 809F1E54  4B 8D CE E9 */	bl __dl__FPv
lbl_809F1E58:
/* 809F1E58  7F C3 F3 78 */	mr r3, r30
/* 809F1E5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F1E60  83 C1 00 08 */	lwz r30, 8(r1)
/* 809F1E64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F1E68  7C 08 03 A6 */	mtlr r0
/* 809F1E6C  38 21 00 10 */	addi r1, r1, 0x10
/* 809F1E70  4E 80 00 20 */	blr 
