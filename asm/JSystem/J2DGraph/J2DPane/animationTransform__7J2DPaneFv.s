lbl_802F7FCC:
/* 802F7FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F7FD0  7C 08 02 A6 */	mflr r0
/* 802F7FD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F7FD8  80 83 00 F8 */	lwz r4, 0xf8(r3)
/* 802F7FDC  28 04 00 00 */	cmplwi r4, 0
/* 802F7FE0  41 82 00 14 */	beq lbl_802F7FF4
/* 802F7FE4  81 83 00 00 */	lwz r12, 0(r3)
/* 802F7FE8  81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 802F7FEC  7D 89 03 A6 */	mtctr r12
/* 802F7FF0  4E 80 04 21 */	bctrl 
lbl_802F7FF4:
/* 802F7FF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F7FF8  7C 08 03 A6 */	mtlr r0
/* 802F7FFC  38 21 00 10 */	addi r1, r1, 0x10
/* 802F8000  4E 80 00 20 */	blr 
