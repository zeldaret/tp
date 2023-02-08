lbl_802A7548:
/* 802A7548  3C 80 80 3D */	lis r4, __vt__Q28JMessage8TControl@ha /* 0x803C9B60@ha */
/* 802A754C  38 04 9B 60 */	addi r0, r4, __vt__Q28JMessage8TControl@l /* 0x803C9B60@l */
/* 802A7550  90 03 00 00 */	stw r0, 0(r3)
/* 802A7554  38 A0 00 00 */	li r5, 0
/* 802A7558  90 A3 00 04 */	stw r5, 4(r3)
/* 802A755C  90 A3 00 08 */	stw r5, 8(r3)
/* 802A7560  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 802A7564  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x0000FFFF@l */
/* 802A7568  B0 03 00 0C */	sth r0, 0xc(r3)
/* 802A756C  B0 03 00 0E */	sth r0, 0xe(r3)
/* 802A7570  90 A3 00 10 */	stw r5, 0x10(r3)
/* 802A7574  90 A3 00 14 */	stw r5, 0x14(r3)
/* 802A7578  90 A3 00 18 */	stw r5, 0x18(r3)
/* 802A757C  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 802A7580  90 A3 00 20 */	stw r5, 0x20(r3)
/* 802A7584  90 A3 00 24 */	stw r5, 0x24(r3)
/* 802A7588  4E 80 00 20 */	blr 
