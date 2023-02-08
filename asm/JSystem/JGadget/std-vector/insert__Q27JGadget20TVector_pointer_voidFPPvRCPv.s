lbl_802DCDA4:
/* 802DCDA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DCDA8  7C 08 02 A6 */	mflr r0
/* 802DCDAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DCDB0  48 00 03 81 */	bl func_802DD130
/* 802DCDB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DCDB8  7C 08 03 A6 */	mtlr r0
/* 802DCDBC  38 21 00 10 */	addi r1, r1, 0x10
/* 802DCDC0  4E 80 00 20 */	blr 
