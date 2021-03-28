lbl_80D61EC4:
/* 80D61EC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D61EC8  7C 08 02 A6 */	mflr r0
/* 80D61ECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D61ED0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D61ED4  93 C1 00 08 */	stw r30, 8(r1)
/* 80D61ED8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D61EDC  7C 9F 23 78 */	mr r31, r4
/* 80D61EE0  41 82 01 00 */	beq lbl_80D61FE0
/* 80D61EE4  34 1E 06 AC */	addic. r0, r30, 0x6ac
/* 80D61EE8  41 82 00 54 */	beq lbl_80D61F3C
/* 80D61EEC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D61EF0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80D61EF4  90 7E 06 C4 */	stw r3, 0x6c4(r30)
/* 80D61EF8  38 03 00 20 */	addi r0, r3, 0x20
/* 80D61EFC  90 1E 06 C8 */	stw r0, 0x6c8(r30)
/* 80D61F00  34 1E 06 C8 */	addic. r0, r30, 0x6c8
/* 80D61F04  41 82 00 24 */	beq lbl_80D61F28
/* 80D61F08  3C 60 80 D6 */	lis r3, __vt__10dCcD_GStts@ha
/* 80D61F0C  38 03 2D 00 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80D61F10  90 1E 06 C8 */	stw r0, 0x6c8(r30)
/* 80D61F14  34 1E 06 C8 */	addic. r0, r30, 0x6c8
/* 80D61F18  41 82 00 10 */	beq lbl_80D61F28
/* 80D61F1C  3C 60 80 D6 */	lis r3, __vt__10cCcD_GStts@ha
/* 80D61F20  38 03 2C F4 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80D61F24  90 1E 06 C8 */	stw r0, 0x6c8(r30)
lbl_80D61F28:
/* 80D61F28  34 1E 06 AC */	addic. r0, r30, 0x6ac
/* 80D61F2C  41 82 00 10 */	beq lbl_80D61F3C
/* 80D61F30  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D61F34  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D61F38  90 1E 06 C4 */	stw r0, 0x6c4(r30)
lbl_80D61F3C:
/* 80D61F3C  34 1E 05 70 */	addic. r0, r30, 0x570
/* 80D61F40  41 82 00 84 */	beq lbl_80D61FC4
/* 80D61F44  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80D61F48  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80D61F4C  90 7E 05 AC */	stw r3, 0x5ac(r30)
/* 80D61F50  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D61F54  90 1E 06 90 */	stw r0, 0x690(r30)
/* 80D61F58  38 03 00 84 */	addi r0, r3, 0x84
/* 80D61F5C  90 1E 06 A8 */	stw r0, 0x6a8(r30)
/* 80D61F60  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80D61F64  41 82 00 54 */	beq lbl_80D61FB8
/* 80D61F68  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80D61F6C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80D61F70  90 7E 06 90 */	stw r3, 0x690(r30)
/* 80D61F74  38 03 00 58 */	addi r0, r3, 0x58
/* 80D61F78  90 1E 06 A8 */	stw r0, 0x6a8(r30)
/* 80D61F7C  34 1E 06 94 */	addic. r0, r30, 0x694
/* 80D61F80  41 82 00 10 */	beq lbl_80D61F90
/* 80D61F84  3C 60 80 D6 */	lis r3, __vt__8cM3dGCyl@ha
/* 80D61F88  38 03 2D 0C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80D61F8C  90 1E 06 A8 */	stw r0, 0x6a8(r30)
lbl_80D61F90:
/* 80D61F90  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80D61F94  41 82 00 24 */	beq lbl_80D61FB8
/* 80D61F98  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D61F9C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D61FA0  90 1E 06 90 */	stw r0, 0x690(r30)
/* 80D61FA4  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80D61FA8  41 82 00 10 */	beq lbl_80D61FB8
/* 80D61FAC  3C 60 80 D6 */	lis r3, __vt__8cM3dGAab@ha
/* 80D61FB0  38 03 2D 18 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D61FB4  90 1E 06 8C */	stw r0, 0x68c(r30)
lbl_80D61FB8:
/* 80D61FB8  38 7E 05 70 */	addi r3, r30, 0x570
/* 80D61FBC  38 80 00 00 */	li r4, 0
/* 80D61FC0  4B 32 21 24 */	b __dt__12dCcD_GObjInfFv
lbl_80D61FC4:
/* 80D61FC4  7F C3 F3 78 */	mr r3, r30
/* 80D61FC8  38 80 00 00 */	li r4, 0
/* 80D61FCC  4B 2B 6C C0 */	b __dt__10fopAc_ac_cFv
/* 80D61FD0  7F E0 07 35 */	extsh. r0, r31
/* 80D61FD4  40 81 00 0C */	ble lbl_80D61FE0
/* 80D61FD8  7F C3 F3 78 */	mr r3, r30
/* 80D61FDC  4B 56 CD 60 */	b __dl__FPv
lbl_80D61FE0:
/* 80D61FE0  7F C3 F3 78 */	mr r3, r30
/* 80D61FE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D61FE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D61FEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D61FF0  7C 08 03 A6 */	mtlr r0
/* 80D61FF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D61FF8  4E 80 00 20 */	blr 
