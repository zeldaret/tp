lbl_80A6EAB4:
/* 80A6EAB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6EAB8  7C 08 02 A6 */	mflr r0
/* 80A6EABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6EAC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6EAC4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A6EAC8  41 82 00 1C */	beq lbl_80A6EAE4
/* 80A6EACC  3C A0 80 A7 */	lis r5, __vt__10cCcD_GStts@ha
/* 80A6EAD0  38 05 0A 28 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80A6EAD4  90 1F 00 00 */	stw r0, 0(r31)
/* 80A6EAD8  7C 80 07 35 */	extsh. r0, r4
/* 80A6EADC  40 81 00 08 */	ble lbl_80A6EAE4
/* 80A6EAE0  4B 86 02 5C */	b __dl__FPv
lbl_80A6EAE4:
/* 80A6EAE4  7F E3 FB 78 */	mr r3, r31
/* 80A6EAE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6EAEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6EAF0  7C 08 03 A6 */	mtlr r0
/* 80A6EAF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6EAF8  4E 80 00 20 */	blr 
