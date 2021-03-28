lbl_80D4ABC0:
/* 80D4ABC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4ABC4  7C 08 02 A6 */	mflr r0
/* 80D4ABC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4ABCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4ABD0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D4ABD4  41 82 00 1C */	beq lbl_80D4ABF0
/* 80D4ABD8  3C A0 80 D5 */	lis r5, __vt__10cCcD_GStts@ha
/* 80D4ABDC  38 05 C6 CC */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80D4ABE0  90 1F 00 00 */	stw r0, 0(r31)
/* 80D4ABE4  7C 80 07 35 */	extsh. r0, r4
/* 80D4ABE8  40 81 00 08 */	ble lbl_80D4ABF0
/* 80D4ABEC  4B 58 41 50 */	b __dl__FPv
lbl_80D4ABF0:
/* 80D4ABF0  7F E3 FB 78 */	mr r3, r31
/* 80D4ABF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4ABF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4ABFC  7C 08 03 A6 */	mtlr r0
/* 80D4AC00  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4AC04  4E 80 00 20 */	blr 
