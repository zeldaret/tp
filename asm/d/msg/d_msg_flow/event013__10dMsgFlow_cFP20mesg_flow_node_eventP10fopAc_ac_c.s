lbl_8024C88C:
/* 8024C88C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024C890  7C 08 02 A6 */	mflr r0
/* 8024C894  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024C898  38 00 00 01 */	li r0, 1
/* 8024C89C  98 03 00 46 */	stb r0, 0x46(r3)
/* 8024C8A0  98 03 00 24 */	stb r0, 0x24(r3)
/* 8024C8A4  98 03 00 25 */	stb r0, 0x25(r3)
/* 8024C8A8  38 84 00 04 */	addi r4, r4, 4
/* 8024C8AC  4B FF E8 85 */	bl getParam__10dMsgFlow_cFPUc
/* 8024C8B0  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8024C8B4  4B FE BD 99 */	bl setSelectCancelPos__12dMsgObject_cFUc
/* 8024C8B8  38 60 00 01 */	li r3, 1
/* 8024C8BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024C8C0  7C 08 03 A6 */	mtlr r0
/* 8024C8C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8024C8C8  4E 80 00 20 */	blr 
