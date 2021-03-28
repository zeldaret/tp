lbl_80B1ED6C:
/* 80B1ED6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1ED70  7C 08 02 A6 */	mflr r0
/* 80B1ED74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1ED78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1ED7C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B1ED80  41 82 00 10 */	beq lbl_80B1ED90
/* 80B1ED84  7C 80 07 35 */	extsh. r0, r4
/* 80B1ED88  40 81 00 08 */	ble lbl_80B1ED90
/* 80B1ED8C  4B 7A FF B0 */	b __dl__FPv
lbl_80B1ED90:
/* 80B1ED90  7F E3 FB 78 */	mr r3, r31
/* 80B1ED94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1ED98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1ED9C  7C 08 03 A6 */	mtlr r0
/* 80B1EDA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1EDA4  4E 80 00 20 */	blr 
