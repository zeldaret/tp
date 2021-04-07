lbl_8024D93C:
/* 8024D93C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024D940  7C 08 02 A6 */	mflr r0
/* 8024D944  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024D948  38 84 00 04 */	addi r4, r4, 4
/* 8024D94C  4B FF D7 E5 */	bl getParam__10dMsgFlow_cFPUc
/* 8024D950  3C 80 80 43 */	lis r4, g_meter2_info@ha /* 0x80430188@ha */
/* 8024D954  38 84 01 88 */	addi r4, r4, g_meter2_info@l /* 0x80430188@l */
/* 8024D958  98 64 00 E1 */	stb r3, 0xe1(r4)
/* 8024D95C  38 60 00 01 */	li r3, 1
/* 8024D960  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024D964  7C 08 03 A6 */	mtlr r0
/* 8024D968  38 21 00 10 */	addi r1, r1, 0x10
/* 8024D96C  4E 80 00 20 */	blr 
