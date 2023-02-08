lbl_802BA630:
/* 802BA630  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BA634  7C 08 02 A6 */	mflr r0
/* 802BA638  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BA63C  80 6D 87 40 */	lwz r3, data_80450CC0(r13)
/* 802BA640  80 03 00 F8 */	lwz r0, 0xf8(r3)
/* 802BA644  28 00 00 01 */	cmplwi r0, 1
/* 802BA648  41 81 00 0C */	bgt lbl_802BA654
/* 802BA64C  38 60 00 00 */	li r3, 0
/* 802BA650  48 00 00 0C */	b lbl_802BA65C
lbl_802BA654:
/* 802BA654  80 63 00 F4 */	lwz r3, 0xf4(r3)
/* 802BA658  80 63 00 04 */	lwz r3, 4(r3)
lbl_802BA65C:
/* 802BA65C  28 03 00 00 */	cmplwi r3, 0
/* 802BA660  41 82 00 24 */	beq lbl_802BA684
/* 802BA664  81 83 00 00 */	lwz r12, 0(r3)
/* 802BA668  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802BA66C  7D 89 03 A6 */	mtctr r12
/* 802BA670  4E 80 04 21 */	bctrl 
/* 802BA674  28 03 00 00 */	cmplwi r3, 0
/* 802BA678  41 82 00 0C */	beq lbl_802BA684
/* 802BA67C  4B FD FF C5 */	bl erase__10JASWaveArcFv
/* 802BA680  48 00 00 08 */	b lbl_802BA688
lbl_802BA684:
/* 802BA684  38 60 00 00 */	li r3, 0
lbl_802BA688:
/* 802BA688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BA68C  7C 08 03 A6 */	mtlr r0
/* 802BA690  38 21 00 10 */	addi r1, r1, 0x10
/* 802BA694  4E 80 00 20 */	blr 
