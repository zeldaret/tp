lbl_80CB08E0:
/* 80CB08E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB08E4  7C 08 02 A6 */	mflr r0
/* 80CB08E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB08EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB08F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CB08F4  41 82 00 1C */	beq lbl_80CB0910
/* 80CB08F8  3C A0 80 CB */	lis r5, __vt__10cCcD_GStts@ha
/* 80CB08FC  38 05 0B A8 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80CB0900  90 1F 00 00 */	stw r0, 0(r31)
/* 80CB0904  7C 80 07 35 */	extsh. r0, r4
/* 80CB0908  40 81 00 08 */	ble lbl_80CB0910
/* 80CB090C  4B 61 E4 30 */	b __dl__FPv
lbl_80CB0910:
/* 80CB0910  7F E3 FB 78 */	mr r3, r31
/* 80CB0914  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB0918  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB091C  7C 08 03 A6 */	mtlr r0
/* 80CB0920  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB0924  4E 80 00 20 */	blr 
