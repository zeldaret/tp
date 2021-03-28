lbl_802CE7B0:
/* 802CE7B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CE7B4  7C 08 02 A6 */	mflr r0
/* 802CE7B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CE7BC  81 83 00 00 */	lwz r12, 0(r3)
/* 802CE7C0  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 802CE7C4  7D 89 03 A6 */	mtctr r12
/* 802CE7C8  4E 80 04 21 */	bctrl 
/* 802CE7CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CE7D0  7C 08 03 A6 */	mtlr r0
/* 802CE7D4  38 21 00 10 */	addi r1, r1, 0x10
/* 802CE7D8  4E 80 00 20 */	blr 
