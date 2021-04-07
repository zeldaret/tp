lbl_807D2B48:
/* 807D2B48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807D2B4C  7C 08 02 A6 */	mflr r0
/* 807D2B50  90 01 00 14 */	stw r0, 0x14(r1)
/* 807D2B54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807D2B58  7C 7F 1B 79 */	or. r31, r3, r3
/* 807D2B5C  41 82 00 10 */	beq lbl_807D2B6C
/* 807D2B60  7C 80 07 35 */	extsh. r0, r4
/* 807D2B64  40 81 00 08 */	ble lbl_807D2B6C
/* 807D2B68  4B AF C1 D5 */	bl __dl__FPv
lbl_807D2B6C:
/* 807D2B6C  7F E3 FB 78 */	mr r3, r31
/* 807D2B70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807D2B74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807D2B78  7C 08 03 A6 */	mtlr r0
/* 807D2B7C  38 21 00 10 */	addi r1, r1, 0x10
/* 807D2B80  4E 80 00 20 */	blr 
