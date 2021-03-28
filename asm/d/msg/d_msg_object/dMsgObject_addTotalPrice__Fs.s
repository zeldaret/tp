lbl_80238730:
/* 80238730  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80238734  7C 08 02 A6 */	mflr r0
/* 80238738  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023873C  39 61 00 20 */	addi r11, r1, 0x20
/* 80238740  48 12 9A 9D */	bl _savegpr_29
/* 80238744  7C 7D 1B 78 */	mr r29, r3
/* 80238748  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8023874C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80238750  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 80238754  A8 03 01 7A */	lha r0, 0x17a(r3)
/* 80238758  7C 00 EA 14 */	add r0, r0, r29
/* 8023875C  B0 03 01 7A */	sth r0, 0x17a(r3)
/* 80238760  4B FF FF 01 */	bl dMsgObject_getTotalPrice__Fv
/* 80238764  7C 1D 1A 14 */	add r0, r29, r3
/* 80238768  7C 1D 07 35 */	extsh. r29, r0
/* 8023876C  40 80 00 08 */	bge lbl_80238774
/* 80238770  3B A0 00 00 */	li r29, 0
lbl_80238774:
/* 80238774  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80238778  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8023877C  3B C3 07 F0 */	addi r30, r3, 0x7f0
/* 80238780  7F C3 F3 78 */	mr r3, r30
/* 80238784  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FEFF@ha */
/* 80238788  38 84 FE FF */	addi r4, r4, 0xFEFF /* 0x0000FEFF@l */
/* 8023878C  57 BF 04 3E */	clrlwi r31, r29, 0x10
/* 80238790  57 A5 C6 3E */	rlwinm r5, r29, 0x18, 0x18, 0x1f
/* 80238794  4B DF C2 4D */	bl setEventReg__11dSv_event_cFUsUc
/* 80238798  7F C3 F3 78 */	mr r3, r30
/* 8023879C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FDFF@ha */
/* 802387A0  38 84 FD FF */	addi r4, r4, 0xFDFF /* 0x0000FDFF@l */
/* 802387A4  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 802387A8  4B DF C2 39 */	bl setEventReg__11dSv_event_cFUsUc
/* 802387AC  39 61 00 20 */	addi r11, r1, 0x20
/* 802387B0  48 12 9A 79 */	bl _restgpr_29
/* 802387B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802387B8  7C 08 03 A6 */	mtlr r0
/* 802387BC  38 21 00 20 */	addi r1, r1, 0x20
/* 802387C0  4E 80 00 20 */	blr 
