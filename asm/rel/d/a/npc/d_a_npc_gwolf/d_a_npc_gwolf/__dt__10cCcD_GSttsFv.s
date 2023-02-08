lbl_809F8350:
/* 809F8350  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F8354  7C 08 02 A6 */	mflr r0
/* 809F8358  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F835C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F8360  7C 7F 1B 79 */	or. r31, r3, r3
/* 809F8364  41 82 00 1C */	beq lbl_809F8380
/* 809F8368  3C A0 80 A0 */	lis r5, __vt__10cCcD_GStts@ha /* 0x809F8E5C@ha */
/* 809F836C  38 05 8E 5C */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x809F8E5C@l */
/* 809F8370  90 1F 00 00 */	stw r0, 0(r31)
/* 809F8374  7C 80 07 35 */	extsh. r0, r4
/* 809F8378  40 81 00 08 */	ble lbl_809F8380
/* 809F837C  4B 8D 69 C1 */	bl __dl__FPv
lbl_809F8380:
/* 809F8380  7F E3 FB 78 */	mr r3, r31
/* 809F8384  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F8388  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F838C  7C 08 03 A6 */	mtlr r0
/* 809F8390  38 21 00 10 */	addi r1, r1, 0x10
/* 809F8394  4E 80 00 20 */	blr 
