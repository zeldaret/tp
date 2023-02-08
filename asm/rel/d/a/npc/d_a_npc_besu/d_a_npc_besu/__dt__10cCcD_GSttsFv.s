lbl_8053D354:
/* 8053D354  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053D358  7C 08 02 A6 */	mflr r0
/* 8053D35C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053D360  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053D364  7C 7F 1B 79 */	or. r31, r3, r3
/* 8053D368  41 82 00 1C */	beq lbl_8053D384
/* 8053D36C  3C A0 80 54 */	lis r5, __vt__10cCcD_GStts@ha /* 0x8053FD44@ha */
/* 8053D370  38 05 FD 44 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x8053FD44@l */
/* 8053D374  90 1F 00 00 */	stw r0, 0(r31)
/* 8053D378  7C 80 07 35 */	extsh. r0, r4
/* 8053D37C  40 81 00 08 */	ble lbl_8053D384
/* 8053D380  4B D9 19 BD */	bl __dl__FPv
lbl_8053D384:
/* 8053D384  7F E3 FB 78 */	mr r3, r31
/* 8053D388  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053D38C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053D390  7C 08 03 A6 */	mtlr r0
/* 8053D394  38 21 00 10 */	addi r1, r1, 0x10
/* 8053D398  4E 80 00 20 */	blr 
