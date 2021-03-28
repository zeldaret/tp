lbl_802FF410:
/* 802FF410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FF414  7C 08 02 A6 */	mflr r0
/* 802FF418  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FF41C  88 83 01 08 */	lbz r4, 0x108(r3)
/* 802FF420  38 04 FF FF */	addi r0, r4, -1
/* 802FF424  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802FF428  81 83 00 00 */	lwz r12, 0(r3)
/* 802FF42C  81 8C 00 D8 */	lwz r12, 0xd8(r12)
/* 802FF430  7D 89 03 A6 */	mtctr r12
/* 802FF434  4E 80 04 21 */	bctrl 
/* 802FF438  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FF43C  7C 08 03 A6 */	mtlr r0
/* 802FF440  38 21 00 10 */	addi r1, r1, 0x10
/* 802FF444  4E 80 00 20 */	blr 
