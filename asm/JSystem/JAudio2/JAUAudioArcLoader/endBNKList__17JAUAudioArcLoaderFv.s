lbl_802A49B4:
/* 802A49B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A49B8  7C 08 02 A6 */	mflr r0
/* 802A49BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A49C0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802A49C4  48 00 13 D9 */	bl endNewBankTable__10JAUSectionFv
/* 802A49C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A49CC  7C 08 03 A6 */	mtlr r0
/* 802A49D0  38 21 00 10 */	addi r1, r1, 0x10
/* 802A49D4  4E 80 00 20 */	blr 
