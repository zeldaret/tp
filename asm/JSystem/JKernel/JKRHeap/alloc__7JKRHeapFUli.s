lbl_802CE4D4:
/* 802CE4D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CE4D8  7C 08 02 A6 */	mflr r0
/* 802CE4DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CE4E0  81 83 00 00 */	lwz r12, 0(r3)
/* 802CE4E4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802CE4E8  7D 89 03 A6 */	mtctr r12
/* 802CE4EC  4E 80 04 21 */	bctrl 
/* 802CE4F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CE4F4  7C 08 03 A6 */	mtlr r0
/* 802CE4F8  38 21 00 10 */	addi r1, r1, 0x10
/* 802CE4FC  4E 80 00 20 */	blr 
