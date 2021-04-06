lbl_80238ADC:
/* 80238ADC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80238AE0  7C 08 02 A6 */	mflr r0
/* 80238AE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80238AE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80238AEC  93 C1 00 08 */	stw r30, 8(r1)
/* 80238AF0  7C 7E 1B 78 */	mr r30, r3
/* 80238AF4  4B FF FF 81 */	bl dMsgObject_getOffering__Fv
/* 80238AF8  7C 1E 1A 14 */	add r0, r30, r3
/* 80238AFC  7C 00 07 35 */	extsh. r0, r0
/* 80238B00  40 80 00 08 */	bge lbl_80238B08
/* 80238B04  38 00 00 00 */	li r0, 0
lbl_80238B08:
/* 80238B08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80238B0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80238B10  3B C3 07 F0 */	addi r30, r3, 0x7f0
/* 80238B14  7F C3 F3 78 */	mr r3, r30
/* 80238B18  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000F7FF@ha */
/* 80238B1C  38 84 F7 FF */	addi r4, r4, 0xF7FF /* 0x0000F7FF@l */
/* 80238B20  54 1F 04 3E */	clrlwi r31, r0, 0x10
/* 80238B24  54 05 C6 3E */	rlwinm r5, r0, 0x18, 0x18, 0x1f
/* 80238B28  4B DF BE B9 */	bl setEventReg__11dSv_event_cFUsUc
/* 80238B2C  7F C3 F3 78 */	mr r3, r30
/* 80238B30  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000F8FF@ha */
/* 80238B34  38 84 F8 FF */	addi r4, r4, 0xF8FF /* 0x0000F8FF@l */
/* 80238B38  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80238B3C  4B DF BE A5 */	bl setEventReg__11dSv_event_cFUsUc
/* 80238B40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80238B44  83 C1 00 08 */	lwz r30, 8(r1)
/* 80238B48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80238B4C  7C 08 03 A6 */	mtlr r0
/* 80238B50  38 21 00 10 */	addi r1, r1, 0x10
/* 80238B54  4E 80 00 20 */	blr 
