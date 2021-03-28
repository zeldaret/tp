lbl_8024D5BC:
/* 8024D5BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024D5C0  7C 08 02 A6 */	mflr r0
/* 8024D5C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024D5C8  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8024D5CC  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8024D5D0  38 80 00 00 */	li r4, 0
/* 8024D5D4  4B FD 0A F1 */	bl resetMiniGameItem__13dMeter2Info_cFb
/* 8024D5D8  38 60 00 01 */	li r3, 1
/* 8024D5DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024D5E0  7C 08 03 A6 */	mtlr r0
/* 8024D5E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8024D5E8  4E 80 00 20 */	blr 
