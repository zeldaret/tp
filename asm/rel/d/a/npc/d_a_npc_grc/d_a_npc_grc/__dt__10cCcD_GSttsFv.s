lbl_809CF3FC:
/* 809CF3FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CF400  7C 08 02 A6 */	mflr r0
/* 809CF404  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CF408  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809CF40C  7C 7F 1B 79 */	or. r31, r3, r3
/* 809CF410  41 82 00 1C */	beq lbl_809CF42C
/* 809CF414  3C A0 80 9D */	lis r5, __vt__10cCcD_GStts@ha
/* 809CF418  38 05 FA FC */	addi r0, r5, __vt__10cCcD_GStts@l
/* 809CF41C  90 1F 00 00 */	stw r0, 0(r31)
/* 809CF420  7C 80 07 35 */	extsh. r0, r4
/* 809CF424  40 81 00 08 */	ble lbl_809CF42C
/* 809CF428  4B 8F F9 14 */	b __dl__FPv
lbl_809CF42C:
/* 809CF42C  7F E3 FB 78 */	mr r3, r31
/* 809CF430  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809CF434  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CF438  7C 08 03 A6 */	mtlr r0
/* 809CF43C  38 21 00 10 */	addi r1, r1, 0x10
/* 809CF440  4E 80 00 20 */	blr 
