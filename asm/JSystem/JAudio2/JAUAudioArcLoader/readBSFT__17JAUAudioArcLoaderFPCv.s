lbl_802A4968:
/* 802A4968  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A496C  7C 08 02 A6 */	mflr r0
/* 802A4970  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A4974  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802A4978  38 A0 00 01 */	li r5, 1
/* 802A497C  48 00 09 E1 */	bl newStreamFileTable__10JAUSectionFPCvb
/* 802A4980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A4984  7C 08 03 A6 */	mtlr r0
/* 802A4988  38 21 00 10 */	addi r1, r1, 0x10
/* 802A498C  4E 80 00 20 */	blr 
