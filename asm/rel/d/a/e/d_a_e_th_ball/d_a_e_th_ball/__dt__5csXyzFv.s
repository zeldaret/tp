lbl_807B7E5C:
/* 807B7E5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B7E60  7C 08 02 A6 */	mflr r0
/* 807B7E64  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B7E68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807B7E6C  7C 7F 1B 79 */	or. r31, r3, r3
/* 807B7E70  41 82 00 10 */	beq lbl_807B7E80
/* 807B7E74  7C 80 07 35 */	extsh. r0, r4
/* 807B7E78  40 81 00 08 */	ble lbl_807B7E80
/* 807B7E7C  4B B1 6E C1 */	bl __dl__FPv
lbl_807B7E80:
/* 807B7E80  7F E3 FB 78 */	mr r3, r31
/* 807B7E84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807B7E88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B7E8C  7C 08 03 A6 */	mtlr r0
/* 807B7E90  38 21 00 10 */	addi r1, r1, 0x10
/* 807B7E94  4E 80 00 20 */	blr 
