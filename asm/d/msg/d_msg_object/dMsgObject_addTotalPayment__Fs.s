lbl_80238894:
/* 80238894  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80238898  7C 08 02 A6 */	mflr r0
/* 8023889C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802388A0  39 61 00 20 */	addi r11, r1, 0x20
/* 802388A4  48 12 99 39 */	bl _savegpr_29
/* 802388A8  7C 7D 1B 78 */	mr r29, r3
/* 802388AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802388B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802388B4  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 802388B8  A8 03 01 7C */	lha r0, 0x17c(r3)
/* 802388BC  7C 00 EA 14 */	add r0, r0, r29
/* 802388C0  B0 03 01 7C */	sth r0, 0x17c(r3)
/* 802388C4  4B FF FF 01 */	bl dMsgObject_getTotalPayment__Fv
/* 802388C8  7C 1D 1A 14 */	add r0, r29, r3
/* 802388CC  7C 1D 07 35 */	extsh. r29, r0
/* 802388D0  40 80 00 08 */	bge lbl_802388D8
/* 802388D4  3B A0 00 00 */	li r29, 0
lbl_802388D8:
/* 802388D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802388DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802388E0  3B C3 07 F0 */	addi r30, r3, 0x7f0
/* 802388E4  7F C3 F3 78 */	mr r3, r30
/* 802388E8  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FCFF@ha */
/* 802388EC  38 84 FC FF */	addi r4, r4, 0xFCFF /* 0x0000FCFF@l */
/* 802388F0  57 BF 04 3E */	clrlwi r31, r29, 0x10
/* 802388F4  57 A5 C6 3E */	rlwinm r5, r29, 0x18, 0x18, 0x1f
/* 802388F8  4B DF C0 E9 */	bl setEventReg__11dSv_event_cFUsUc
/* 802388FC  7F C3 F3 78 */	mr r3, r30
/* 80238900  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FBFF@ha */
/* 80238904  38 84 FB FF */	addi r4, r4, 0xFBFF /* 0x0000FBFF@l */
/* 80238908  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 8023890C  4B DF C0 D5 */	bl setEventReg__11dSv_event_cFUsUc
/* 80238910  39 61 00 20 */	addi r11, r1, 0x20
/* 80238914  48 12 99 15 */	bl _restgpr_29
/* 80238918  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023891C  7C 08 03 A6 */	mtlr r0
/* 80238920  38 21 00 20 */	addi r1, r1, 0x20
/* 80238924  4E 80 00 20 */	blr 
