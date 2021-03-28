lbl_80B6AEE8:
/* 80B6AEE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6AEEC  7C 08 02 A6 */	mflr r0
/* 80B6AEF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6AEF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6AEF8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B6AEFC  41 82 00 10 */	beq lbl_80B6AF0C
/* 80B6AF00  7C 80 07 35 */	extsh. r0, r4
/* 80B6AF04  40 81 00 08 */	ble lbl_80B6AF0C
/* 80B6AF08  4B 76 3E 34 */	b __dl__FPv
lbl_80B6AF0C:
/* 80B6AF0C  7F E3 FB 78 */	mr r3, r31
/* 80B6AF10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6AF14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6AF18  7C 08 03 A6 */	mtlr r0
/* 80B6AF1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6AF20  4E 80 00 20 */	blr 
