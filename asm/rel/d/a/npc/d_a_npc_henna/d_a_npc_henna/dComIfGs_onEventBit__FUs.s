lbl_8054A920:
/* 8054A920  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054A924  7C 08 02 A6 */	mflr r0
/* 8054A928  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054A92C  7C 64 1B 78 */	mr r4, r3
/* 8054A930  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8054A934  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8054A938  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8054A93C  4B AE A0 50 */	b onEventBit__11dSv_event_cFUs
/* 8054A940  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054A944  7C 08 03 A6 */	mtlr r0
/* 8054A948  38 21 00 10 */	addi r1, r1, 0x10
/* 8054A94C  4E 80 00 20 */	blr 
