lbl_804DAB18:
/* 804DAB18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DAB1C  7C 08 02 A6 */	mflr r0
/* 804DAB20  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DAB24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DAB28  93 C1 00 08 */	stw r30, 8(r1)
/* 804DAB2C  7C 7E 1B 79 */	or. r30, r3, r3
/* 804DAB30  7C 9F 23 78 */	mr r31, r4
/* 804DAB34  41 82 00 94 */	beq lbl_804DABC8
/* 804DAB38  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 804DAB3C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 804DAB40  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 804DAB44  38 03 00 2C */	addi r0, r3, 0x2c
/* 804DAB48  90 1E 01 20 */	stw r0, 0x120(r30)
/* 804DAB4C  38 03 00 84 */	addi r0, r3, 0x84
/* 804DAB50  90 1E 01 38 */	stw r0, 0x138(r30)
/* 804DAB54  34 1E 01 04 */	addic. r0, r30, 0x104
/* 804DAB58  41 82 00 54 */	beq lbl_804DABAC
/* 804DAB5C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 804DAB60  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 804DAB64  90 7E 01 20 */	stw r3, 0x120(r30)
/* 804DAB68  38 03 00 58 */	addi r0, r3, 0x58
/* 804DAB6C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 804DAB70  34 1E 01 24 */	addic. r0, r30, 0x124
/* 804DAB74  41 82 00 10 */	beq lbl_804DAB84
/* 804DAB78  3C 60 80 4E */	lis r3, __vt__8cM3dGCyl@ha /* 0x804DD7E4@ha */
/* 804DAB7C  38 03 D7 E4 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x804DD7E4@l */
/* 804DAB80  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_804DAB84:
/* 804DAB84  34 1E 01 04 */	addic. r0, r30, 0x104
/* 804DAB88  41 82 00 24 */	beq lbl_804DABAC
/* 804DAB8C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 804DAB90  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 804DAB94  90 1E 01 20 */	stw r0, 0x120(r30)
/* 804DAB98  34 1E 01 04 */	addic. r0, r30, 0x104
/* 804DAB9C  41 82 00 10 */	beq lbl_804DABAC
/* 804DABA0  3C 60 80 4E */	lis r3, __vt__8cM3dGAab@ha /* 0x804DD7D8@ha */
/* 804DABA4  38 03 D7 D8 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x804DD7D8@l */
/* 804DABA8  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_804DABAC:
/* 804DABAC  7F C3 F3 78 */	mr r3, r30
/* 804DABB0  38 80 00 00 */	li r4, 0
/* 804DABB4  4B BA 95 31 */	bl __dt__12dCcD_GObjInfFv
/* 804DABB8  7F E0 07 35 */	extsh. r0, r31
/* 804DABBC  40 81 00 0C */	ble lbl_804DABC8
/* 804DABC0  7F C3 F3 78 */	mr r3, r30
/* 804DABC4  4B DF 41 79 */	bl __dl__FPv
lbl_804DABC8:
/* 804DABC8  7F C3 F3 78 */	mr r3, r30
/* 804DABCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DABD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804DABD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DABD8  7C 08 03 A6 */	mtlr r0
/* 804DABDC  38 21 00 10 */	addi r1, r1, 0x10
/* 804DABE0  4E 80 00 20 */	blr 
