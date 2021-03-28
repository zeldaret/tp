lbl_802DFD58:
/* 802DFD58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DFD5C  7C 08 02 A6 */	mflr r0
/* 802DFD60  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DFD64  80 83 00 58 */	lwz r4, 0x58(r3)
/* 802DFD68  28 04 00 00 */	cmplwi r4, 0
/* 802DFD6C  41 82 00 18 */	beq lbl_802DFD84
/* 802DFD70  80 84 00 00 */	lwz r4, 0(r4)
/* 802DFD74  28 04 00 00 */	cmplwi r4, 0
/* 802DFD78  41 82 00 0C */	beq lbl_802DFD84
/* 802DFD7C  A0 64 00 0E */	lhz r3, 0xe(r4)
/* 802DFD80  48 00 00 14 */	b lbl_802DFD94
lbl_802DFD84:
/* 802DFD84  81 83 00 00 */	lwz r12, 0(r3)
/* 802DFD88  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802DFD8C  7D 89 03 A6 */	mtctr r12
/* 802DFD90  4E 80 04 21 */	bctrl 
lbl_802DFD94:
/* 802DFD94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DFD98  7C 08 03 A6 */	mtlr r0
/* 802DFD9C  38 21 00 10 */	addi r1, r1, 0x10
/* 802DFDA0  4E 80 00 20 */	blr 
