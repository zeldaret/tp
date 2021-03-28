lbl_80D1EDDC:
/* 80D1EDDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1EDE0  7C 08 02 A6 */	mflr r0
/* 80D1EDE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1EDE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1EDEC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D1EDF0  41 82 00 1C */	beq lbl_80D1EE0C
/* 80D1EDF4  3C A0 80 D2 */	lis r5, __vt__10cCcD_GStts@ha
/* 80D1EDF8  38 05 EF 9C */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80D1EDFC  90 1F 00 00 */	stw r0, 0(r31)
/* 80D1EE00  7C 80 07 35 */	extsh. r0, r4
/* 80D1EE04  40 81 00 08 */	ble lbl_80D1EE0C
/* 80D1EE08  4B 5A FF 34 */	b __dl__FPv
lbl_80D1EE0C:
/* 80D1EE0C  7F E3 FB 78 */	mr r3, r31
/* 80D1EE10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1EE14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1EE18  7C 08 03 A6 */	mtlr r0
/* 80D1EE1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1EE20  4E 80 00 20 */	blr 
