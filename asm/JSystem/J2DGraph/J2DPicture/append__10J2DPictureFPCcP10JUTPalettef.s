lbl_802FF2F0:
/* 802FF2F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FF2F4  7C 08 02 A6 */	mflr r0
/* 802FF2F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FF2FC  88 C3 01 08 */	lbz r6, 0x108(r3)
/* 802FF300  81 83 00 00 */	lwz r12, 0(r3)
/* 802FF304  81 8C 00 D0 */	lwz r12, 0xd0(r12)
/* 802FF308  7D 89 03 A6 */	mtctr r12
/* 802FF30C  4E 80 04 21 */	bctrl 
/* 802FF310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FF314  7C 08 03 A6 */	mtlr r0
/* 802FF318  38 21 00 10 */	addi r1, r1, 0x10
/* 802FF31C  4E 80 00 20 */	blr 
