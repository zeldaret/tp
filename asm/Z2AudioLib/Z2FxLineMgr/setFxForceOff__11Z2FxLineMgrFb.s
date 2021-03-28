lbl_802BAE1C:
/* 802BAE1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BAE20  7C 08 02 A6 */	mflr r0
/* 802BAE24  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BAE28  7C 86 23 78 */	mr r6, r4
/* 802BAE2C  88 83 00 14 */	lbz r4, 0x14(r3)
/* 802BAE30  38 A0 00 01 */	li r5, 1
/* 802BAE34  4B FF FD F5 */	bl setLineID__11Z2FxLineMgrFScbb
/* 802BAE38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BAE3C  7C 08 03 A6 */	mtlr r0
/* 802BAE40  38 21 00 10 */	addi r1, r1, 0x10
/* 802BAE44  4E 80 00 20 */	blr 
