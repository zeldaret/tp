lbl_80D1ED80:
/* 80D1ED80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1ED84  7C 08 02 A6 */	mflr r0
/* 80D1ED88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1ED8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1ED90  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D1ED94  41 82 00 30 */	beq lbl_80D1EDC4
/* 80D1ED98  3C 60 80 D2 */	lis r3, __vt__10dCcD_GStts@ha
/* 80D1ED9C  38 03 EF A8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80D1EDA0  90 1F 00 00 */	stw r0, 0(r31)
/* 80D1EDA4  41 82 00 10 */	beq lbl_80D1EDB4
/* 80D1EDA8  3C 60 80 D2 */	lis r3, __vt__10cCcD_GStts@ha
/* 80D1EDAC  38 03 EF 9C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80D1EDB0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D1EDB4:
/* 80D1EDB4  7C 80 07 35 */	extsh. r0, r4
/* 80D1EDB8  40 81 00 0C */	ble lbl_80D1EDC4
/* 80D1EDBC  7F E3 FB 78 */	mr r3, r31
/* 80D1EDC0  4B 5A FF 7C */	b __dl__FPv
lbl_80D1EDC4:
/* 80D1EDC4  7F E3 FB 78 */	mr r3, r31
/* 80D1EDC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1EDCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1EDD0  7C 08 03 A6 */	mtlr r0
/* 80D1EDD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1EDD8  4E 80 00 20 */	blr 
