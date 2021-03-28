lbl_802E4798:
/* 802E4798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E479C  7C 08 02 A6 */	mflr r0
/* 802E47A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E47A4  7C 86 23 78 */	mr r6, r4
/* 802E47A8  88 84 00 00 */	lbz r4, 0(r4)
/* 802E47AC  88 A6 00 01 */	lbz r5, 1(r6)
/* 802E47B0  88 C6 00 02 */	lbz r6, 2(r6)
/* 802E47B4  48 00 00 15 */	bl setCharColor__14JUTDirectPrintFUcUcUc
/* 802E47B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E47BC  7C 08 03 A6 */	mtlr r0
/* 802E47C0  38 21 00 10 */	addi r1, r1, 0x10
/* 802E47C4  4E 80 00 20 */	blr 
