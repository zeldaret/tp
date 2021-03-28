lbl_802DCA1C:
/* 802DCA1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DCA20  7C 08 02 A6 */	mflr r0
/* 802DCA24  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DCA28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DCA2C  7C 7F 1B 79 */	or. r31, r3, r3
/* 802DCA30  41 82 00 10 */	beq lbl_802DCA40
/* 802DCA34  7C 80 07 35 */	extsh. r0, r4
/* 802DCA38  40 81 00 08 */	ble lbl_802DCA40
/* 802DCA3C  4B FF 23 01 */	bl __dl__FPv
lbl_802DCA40:
/* 802DCA40  7F E3 FB 78 */	mr r3, r31
/* 802DCA44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DCA48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DCA4C  7C 08 03 A6 */	mtlr r0
/* 802DCA50  38 21 00 10 */	addi r1, r1, 0x10
/* 802DCA54  4E 80 00 20 */	blr 
