lbl_802DFD0C:
/* 802DFD0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DFD10  7C 08 02 A6 */	mflr r0
/* 802DFD14  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DFD18  80 83 00 58 */	lwz r4, 0x58(r3)
/* 802DFD1C  28 04 00 00 */	cmplwi r4, 0
/* 802DFD20  41 82 00 18 */	beq lbl_802DFD38
/* 802DFD24  80 84 00 00 */	lwz r4, 0(r4)
/* 802DFD28  28 04 00 00 */	cmplwi r4, 0
/* 802DFD2C  41 82 00 0C */	beq lbl_802DFD38
/* 802DFD30  A0 64 00 0C */	lhz r3, 0xc(r4)
/* 802DFD34  48 00 00 14 */	b lbl_802DFD48
lbl_802DFD38:
/* 802DFD38  81 83 00 00 */	lwz r12, 0(r3)
/* 802DFD3C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802DFD40  7D 89 03 A6 */	mtctr r12
/* 802DFD44  4E 80 04 21 */	bctrl 
lbl_802DFD48:
/* 802DFD48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DFD4C  7C 08 03 A6 */	mtlr r0
/* 802DFD50  38 21 00 10 */	addi r1, r1, 0x10
/* 802DFD54  4E 80 00 20 */	blr 
