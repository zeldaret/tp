lbl_8024DA78:
/* 8024DA78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024DA7C  7C 08 02 A6 */	mflr r0
/* 8024DA80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024DA84  38 84 00 04 */	addi r4, r4, 4
/* 8024DA88  4B FF D6 A9 */	bl getParam__10dMsgFlow_cFPUc
/* 8024DA8C  7C 63 07 34 */	extsh r3, r3
/* 8024DA90  4B FE B0 4D */	bl dMsgObject_addOffering__Fs
/* 8024DA94  38 60 00 01 */	li r3, 1
/* 8024DA98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024DA9C  7C 08 03 A6 */	mtlr r0
/* 8024DAA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8024DAA4  4E 80 00 20 */	blr 
