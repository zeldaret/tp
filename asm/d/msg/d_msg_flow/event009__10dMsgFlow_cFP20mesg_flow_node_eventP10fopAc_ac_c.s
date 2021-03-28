lbl_8024C744:
/* 8024C744  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024C748  7C 08 02 A6 */	mflr r0
/* 8024C74C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024C750  38 84 00 04 */	addi r4, r4, 4
/* 8024C754  4B FF E9 DD */	bl getParam__10dMsgFlow_cFPUc
/* 8024C758  38 60 00 01 */	li r3, 1
/* 8024C75C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024C760  7C 08 03 A6 */	mtlr r0
/* 8024C764  38 21 00 10 */	addi r1, r1, 0x10
/* 8024C768  4E 80 00 20 */	blr 
