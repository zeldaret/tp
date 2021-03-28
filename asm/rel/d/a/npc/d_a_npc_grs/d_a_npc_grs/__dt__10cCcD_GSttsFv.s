lbl_809E7C8C:
/* 809E7C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E7C90  7C 08 02 A6 */	mflr r0
/* 809E7C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E7C98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E7C9C  7C 7F 1B 79 */	or. r31, r3, r3
/* 809E7CA0  41 82 00 1C */	beq lbl_809E7CBC
/* 809E7CA4  3C A0 80 9F */	lis r5, __vt__10cCcD_GStts@ha
/* 809E7CA8  38 05 81 D0 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 809E7CAC  90 1F 00 00 */	stw r0, 0(r31)
/* 809E7CB0  7C 80 07 35 */	extsh. r0, r4
/* 809E7CB4  40 81 00 08 */	ble lbl_809E7CBC
/* 809E7CB8  4B 8E 70 84 */	b __dl__FPv
lbl_809E7CBC:
/* 809E7CBC  7F E3 FB 78 */	mr r3, r31
/* 809E7CC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E7CC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E7CC8  7C 08 03 A6 */	mtlr r0
/* 809E7CCC  38 21 00 10 */	addi r1, r1, 0x10
/* 809E7CD0  4E 80 00 20 */	blr 
