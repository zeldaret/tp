lbl_8024C6D8:
/* 8024C6D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024C6DC  7C 08 02 A6 */	mflr r0
/* 8024C6E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024C6E4  7C 86 23 78 */	mr r6, r4
/* 8024C6E8  38 81 00 08 */	addi r4, r1, 8
/* 8024C6EC  38 A1 00 0A */	addi r5, r1, 0xa
/* 8024C6F0  38 C6 00 04 */	addi r6, r6, 4
/* 8024C6F4  4B FF E9 FD */	bl getParam__10dMsgFlow_cFPUsPUsPUc
/* 8024C6F8  A0 01 00 08 */	lhz r0, 8(r1)
/* 8024C6FC  28 00 00 1B */	cmplwi r0, 0x1b
/* 8024C700  40 82 00 30 */	bne lbl_8024C730
/* 8024C704  4B FE C2 25 */	bl dMsgObject_getFundRaising__Fv
/* 8024C708  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8024C70C  20 00 07 D0 */	subfic r0, r0, 0x7d0
/* 8024C710  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 8024C714  41 80 00 10 */	blt lbl_8024C724
/* 8024C718  38 60 00 00 */	li r3, 0
/* 8024C71C  4B FE C2 75 */	bl dMsgObject_setFundRaising__FUs
/* 8024C720  48 00 00 10 */	b lbl_8024C730
lbl_8024C724:
/* 8024C724  20 00 00 C8 */	subfic r0, r0, 0xc8
/* 8024C728  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8024C72C  4B FE C2 65 */	bl dMsgObject_setFundRaising__FUs
lbl_8024C730:
/* 8024C730  38 60 00 01 */	li r3, 1
/* 8024C734  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024C738  7C 08 03 A6 */	mtlr r0
/* 8024C73C  38 21 00 10 */	addi r1, r1, 0x10
/* 8024C740  4E 80 00 20 */	blr 
