lbl_8024D500:
/* 8024D500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024D504  7C 08 02 A6 */	mflr r0
/* 8024D508  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024D50C  38 00 00 02 */	li r0, 2
/* 8024D510  98 03 00 46 */	stb r0, 0x46(r3)
/* 8024D514  38 00 00 01 */	li r0, 1
/* 8024D518  98 03 00 24 */	stb r0, 0x24(r3)
/* 8024D51C  98 03 00 25 */	stb r0, 0x25(r3)
/* 8024D520  38 84 00 04 */	addi r4, r4, 4
/* 8024D524  4B FF DC 0D */	bl getParam__10dMsgFlow_cFPUc
/* 8024D528  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8024D52C  4B FE B1 21 */	bl setSelectCancelPos__12dMsgObject_cFUc
/* 8024D530  38 60 00 01 */	li r3, 1
/* 8024D534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024D538  7C 08 03 A6 */	mtlr r0
/* 8024D53C  38 21 00 10 */	addi r1, r1, 0x10
/* 8024D540  4E 80 00 20 */	blr 
