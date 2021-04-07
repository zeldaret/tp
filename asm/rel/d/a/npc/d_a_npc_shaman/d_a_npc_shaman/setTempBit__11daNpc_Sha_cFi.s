lbl_80AE48D0:
/* 80AE48D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AE48D4  7C 08 02 A6 */	mflr r0
/* 80AE48D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AE48DC  39 61 00 20 */	addi r11, r1, 0x20
/* 80AE48E0  4B 87 D8 F9 */	bl _savegpr_28
/* 80AE48E4  7C 9C 23 78 */	mr r28, r4
/* 80AE48E8  2C 1C 00 30 */	cmpwi r28, 0x30
/* 80AE48EC  40 80 00 70 */	bge lbl_80AE495C
/* 80AE48F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AE48F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AE48F8  3B A3 0D D8 */	addi r29, r3, 0xdd8
/* 80AE48FC  7F A3 EB 78 */	mr r3, r29
/* 80AE4900  7F 80 1E 70 */	srawi r0, r28, 3
/* 80AE4904  7C 00 01 94 */	addze r0, r0
/* 80AE4908  54 1E 08 3C */	slwi r30, r0, 1
/* 80AE490C  3C 80 80 AE */	lis r4, mTmpBitLabels__11daNpc_Sha_c@ha /* 0x80AE7128@ha */
/* 80AE4910  3B E4 71 28 */	addi r31, r4, mTmpBitLabels__11daNpc_Sha_c@l /* 0x80AE7128@l */
/* 80AE4914  7C 9F F2 2E */	lhzx r4, r31, r30
/* 80AE4918  4B 55 00 ED */	bl getEventReg__11dSv_event_cCFUs
/* 80AE491C  38 A0 00 01 */	li r5, 1
/* 80AE4920  57 80 E8 04 */	slwi r0, r28, 0x1d
/* 80AE4924  57 84 0F FE */	srwi r4, r28, 0x1f
/* 80AE4928  7C 04 00 50 */	subf r0, r4, r0
/* 80AE492C  54 00 18 3E */	rotlwi r0, r0, 3
/* 80AE4930  7C 00 22 15 */	add. r0, r0, r4
/* 80AE4934  41 82 00 18 */	beq lbl_80AE494C
/* 80AE4938  7C 09 03 A6 */	mtctr r0
/* 80AE493C  2C 00 00 00 */	cmpwi r0, 0
/* 80AE4940  40 81 00 0C */	ble lbl_80AE494C
lbl_80AE4944:
/* 80AE4944  54 A5 0E 3C */	rlwinm r5, r5, 1, 0x18, 0x1e
/* 80AE4948  42 00 FF FC */	bdnz lbl_80AE4944
lbl_80AE494C:
/* 80AE494C  7C 65 2B 78 */	or r5, r3, r5
/* 80AE4950  7F A3 EB 78 */	mr r3, r29
/* 80AE4954  7C 9F F2 2E */	lhzx r4, r31, r30
/* 80AE4958  4B 55 00 89 */	bl setEventReg__11dSv_event_cFUsUc
lbl_80AE495C:
/* 80AE495C  39 61 00 20 */	addi r11, r1, 0x20
/* 80AE4960  4B 87 D8 C5 */	bl _restgpr_28
/* 80AE4964  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AE4968  7C 08 03 A6 */	mtlr r0
/* 80AE496C  38 21 00 20 */	addi r1, r1, 0x20
/* 80AE4970  4E 80 00 20 */	blr 
