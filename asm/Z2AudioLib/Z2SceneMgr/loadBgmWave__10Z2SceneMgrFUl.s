lbl_802BA770:
/* 802BA770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BA774  7C 08 02 A6 */	mflr r0
/* 802BA778  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BA77C  80 6D 87 40 */	lwz r3, data_80450CC0(r13)
/* 802BA780  80 03 00 F8 */	lwz r0, 0xf8(r3)
/* 802BA784  28 00 00 01 */	cmplwi r0, 1
/* 802BA788  41 81 00 0C */	bgt lbl_802BA794
/* 802BA78C  38 60 00 00 */	li r3, 0
/* 802BA790  48 00 00 0C */	b lbl_802BA79C
lbl_802BA794:
/* 802BA794  80 63 00 F4 */	lwz r3, 0xf4(r3)
/* 802BA798  80 63 00 04 */	lwz r3, 4(r3)
lbl_802BA79C:
/* 802BA79C  28 03 00 00 */	cmplwi r3, 0
/* 802BA7A0  41 82 00 28 */	beq lbl_802BA7C8
/* 802BA7A4  81 83 00 00 */	lwz r12, 0(r3)
/* 802BA7A8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802BA7AC  7D 89 03 A6 */	mtctr r12
/* 802BA7B0  4E 80 04 21 */	bctrl 
/* 802BA7B4  28 03 00 00 */	cmplwi r3, 0
/* 802BA7B8  41 82 00 10 */	beq lbl_802BA7C8
/* 802BA7BC  38 80 00 00 */	li r4, 0
/* 802BA7C0  4B FD FD C1 */	bl loadTail__10JASWaveArcFP7JASHeap
/* 802BA7C4  48 00 00 08 */	b lbl_802BA7CC
lbl_802BA7C8:
/* 802BA7C8  38 60 00 00 */	li r3, 0
lbl_802BA7CC:
/* 802BA7CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BA7D0  7C 08 03 A6 */	mtlr r0
/* 802BA7D4  38 21 00 10 */	addi r1, r1, 0x10
/* 802BA7D8  4E 80 00 20 */	blr 
