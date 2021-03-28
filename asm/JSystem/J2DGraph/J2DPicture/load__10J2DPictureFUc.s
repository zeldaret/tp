lbl_802FF268:
/* 802FF268  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FF26C  7C 08 02 A6 */	mflr r0
/* 802FF270  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FF274  7C 85 23 78 */	mr r5, r4
/* 802FF278  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 802FF27C  81 83 00 00 */	lwz r12, 0(r3)
/* 802FF280  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 802FF284  7D 89 03 A6 */	mtctr r12
/* 802FF288  4E 80 04 21 */	bctrl 
/* 802FF28C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FF290  7C 08 03 A6 */	mtlr r0
/* 802FF294  38 21 00 10 */	addi r1, r1, 0x10
/* 802FF298  4E 80 00 20 */	blr 
