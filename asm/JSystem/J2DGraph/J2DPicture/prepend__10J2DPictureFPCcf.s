lbl_802FF380:
/* 802FF380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FF384  7C 08 02 A6 */	mflr r0
/* 802FF388  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FF38C  38 A0 00 00 */	li r5, 0
/* 802FF390  81 83 00 00 */	lwz r12, 0(r3)
/* 802FF394  81 8C 00 CC */	lwz r12, 0xcc(r12)
/* 802FF398  7D 89 03 A6 */	mtctr r12
/* 802FF39C  4E 80 04 21 */	bctrl 
/* 802FF3A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FF3A4  7C 08 03 A6 */	mtlr r0
/* 802FF3A8  38 21 00 10 */	addi r1, r1, 0x10
/* 802FF3AC  4E 80 00 20 */	blr 
