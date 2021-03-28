lbl_802F9A20:
/* 802F9A20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F9A24  7C 08 02 A6 */	mflr r0
/* 802F9A28  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F9A2C  C0 23 00 D4 */	lfs f1, 0xd4(r3)
/* 802F9A30  C0 43 00 D8 */	lfs f2, 0xd8(r3)
/* 802F9A34  81 83 00 00 */	lwz r12, 0(r3)
/* 802F9A38  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 802F9A3C  7D 89 03 A6 */	mtctr r12
/* 802F9A40  4E 80 04 21 */	bctrl 
/* 802F9A44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F9A48  7C 08 03 A6 */	mtlr r0
/* 802F9A4C  38 21 00 10 */	addi r1, r1, 0x10
/* 802F9A50  4E 80 00 20 */	blr 
