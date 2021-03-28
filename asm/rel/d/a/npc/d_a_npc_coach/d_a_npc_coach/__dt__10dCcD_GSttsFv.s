lbl_809A4B9C:
/* 809A4B9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A4BA0  7C 08 02 A6 */	mflr r0
/* 809A4BA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A4BA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A4BAC  7C 7F 1B 79 */	or. r31, r3, r3
/* 809A4BB0  41 82 00 30 */	beq lbl_809A4BE0
/* 809A4BB4  3C 60 80 9A */	lis r3, __vt__10dCcD_GStts@ha
/* 809A4BB8  38 03 52 74 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 809A4BBC  90 1F 00 00 */	stw r0, 0(r31)
/* 809A4BC0  41 82 00 10 */	beq lbl_809A4BD0
/* 809A4BC4  3C 60 80 9A */	lis r3, __vt__10cCcD_GStts@ha
/* 809A4BC8  38 03 52 68 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 809A4BCC  90 1F 00 00 */	stw r0, 0(r31)
lbl_809A4BD0:
/* 809A4BD0  7C 80 07 35 */	extsh. r0, r4
/* 809A4BD4  40 81 00 0C */	ble lbl_809A4BE0
/* 809A4BD8  7F E3 FB 78 */	mr r3, r31
/* 809A4BDC  4B 92 A1 60 */	b __dl__FPv
lbl_809A4BE0:
/* 809A4BE0  7F E3 FB 78 */	mr r3, r31
/* 809A4BE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A4BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A4BEC  7C 08 03 A6 */	mtlr r0
/* 809A4BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 809A4BF4  4E 80 00 20 */	blr 
