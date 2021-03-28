lbl_802FF3E0:
/* 802FF3E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FF3E4  7C 08 02 A6 */	mflr r0
/* 802FF3E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FF3EC  38 A0 00 00 */	li r5, 0
/* 802FF3F0  81 83 00 00 */	lwz r12, 0(r3)
/* 802FF3F4  81 8C 00 C4 */	lwz r12, 0xc4(r12)
/* 802FF3F8  7D 89 03 A6 */	mtctr r12
/* 802FF3FC  4E 80 04 21 */	bctrl 
/* 802FF400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FF404  7C 08 03 A6 */	mtlr r0
/* 802FF408  38 21 00 10 */	addi r1, r1, 0x10
/* 802FF40C  4E 80 00 20 */	blr 
