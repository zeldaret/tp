lbl_80CBFC88:
/* 80CBFC88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBFC8C  7C 08 02 A6 */	mflr r0
/* 80CBFC90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBFC94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBFC98  93 C1 00 08 */	stw r30, 8(r1)
/* 80CBFC9C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CBFCA0  7C 9F 23 78 */	mr r31, r4
/* 80CBFCA4  41 82 00 94 */	beq lbl_80CBFD38
/* 80CBFCA8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80CBFCAC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80CBFCB0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80CBFCB4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CBFCB8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CBFCBC  38 03 00 84 */	addi r0, r3, 0x84
/* 80CBFCC0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80CBFCC4  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CBFCC8  41 82 00 54 */	beq lbl_80CBFD1C
/* 80CBFCCC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80CBFCD0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80CBFCD4  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80CBFCD8  38 03 00 58 */	addi r0, r3, 0x58
/* 80CBFCDC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80CBFCE0  34 1E 01 24 */	addic. r0, r30, 0x124
/* 80CBFCE4  41 82 00 10 */	beq lbl_80CBFCF4
/* 80CBFCE8  3C 60 80 CC */	lis r3, __vt__8cM3dGCyl@ha /* 0x80CC0A60@ha */
/* 80CBFCEC  38 03 0A 60 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80CC0A60@l */
/* 80CBFCF0  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80CBFCF4:
/* 80CBFCF4  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CBFCF8  41 82 00 24 */	beq lbl_80CBFD1C
/* 80CBFCFC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CBFD00  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CBFD04  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CBFD08  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80CBFD0C  41 82 00 10 */	beq lbl_80CBFD1C
/* 80CBFD10  3C 60 80 CC */	lis r3, __vt__8cM3dGAab@ha /* 0x80CC0A54@ha */
/* 80CBFD14  38 03 0A 54 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CC0A54@l */
/* 80CBFD18  90 1E 01 1C */	stw r0, 0x11c(r30)
lbl_80CBFD1C:
/* 80CBFD1C  7F C3 F3 78 */	mr r3, r30
/* 80CBFD20  38 80 00 00 */	li r4, 0
/* 80CBFD24  4B 3C 43 C1 */	bl __dt__12dCcD_GObjInfFv
/* 80CBFD28  7F E0 07 35 */	extsh. r0, r31
/* 80CBFD2C  40 81 00 0C */	ble lbl_80CBFD38
/* 80CBFD30  7F C3 F3 78 */	mr r3, r30
/* 80CBFD34  4B 60 F0 09 */	bl __dl__FPv
lbl_80CBFD38:
/* 80CBFD38  7F C3 F3 78 */	mr r3, r30
/* 80CBFD3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBFD40  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CBFD44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBFD48  7C 08 03 A6 */	mtlr r0
/* 80CBFD4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBFD50  4E 80 00 20 */	blr 
