lbl_801CA35C:
/* 801CA35C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CA360  7C 08 02 A6 */	mflr r0
/* 801CA364  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CA368  39 61 00 20 */	addi r11, r1, 0x20
/* 801CA36C  48 19 7E 71 */	bl _savegpr_29
/* 801CA370  7C 7D 1B 78 */	mr r29, r3
/* 801CA374  48 06 DE B9 */	bl getStatus__12dMsgObject_cFv
/* 801CA378  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 801CA37C  28 00 00 0E */	cmplwi r0, 0xe
/* 801CA380  40 82 00 74 */	bne lbl_801CA3F4
/* 801CA384  A8 7D 02 14 */	lha r3, 0x214(r29)
/* 801CA388  38 03 00 01 */	addi r0, r3, 1
/* 801CA38C  B0 1D 02 14 */	sth r0, 0x214(r29)
/* 801CA390  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801CA394  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801CA398  3B C3 07 F0 */	addi r30, r3, 0x7f0
/* 801CA39C  7F C3 F3 78 */	mr r3, r30
/* 801CA3A0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 801CA3A4  3B E4 72 88 */	addi r31, r4, saveBitLabels__16dSv_event_flag_c@l
/* 801CA3A8  A0 9F 00 EE */	lhz r4, 0xee(r31)
/* 801CA3AC  4B E6 A6 11 */	bl isEventBit__11dSv_event_cCFUs
/* 801CA3B0  2C 03 00 00 */	cmpwi r3, 0
/* 801CA3B4  41 82 00 20 */	beq lbl_801CA3D4
/* 801CA3B8  A8 1D 02 14 */	lha r0, 0x214(r29)
/* 801CA3BC  2C 00 00 5A */	cmpwi r0, 0x5a
/* 801CA3C0  40 81 00 34 */	ble lbl_801CA3F4
/* 801CA3C4  7F A3 EB 78 */	mr r3, r29
/* 801CA3C8  38 80 00 14 */	li r4, 0x14
/* 801CA3CC  48 00 13 05 */	bl setProcess__12dMenu_Fmap_cFUc
/* 801CA3D0  48 00 00 24 */	b lbl_801CA3F4
lbl_801CA3D4:
/* 801CA3D4  A8 1D 02 14 */	lha r0, 0x214(r29)
/* 801CA3D8  2C 00 00 1E */	cmpwi r0, 0x1e
/* 801CA3DC  40 81 00 18 */	ble lbl_801CA3F4
/* 801CA3E0  38 00 00 01 */	li r0, 1
/* 801CA3E4  98 1D 03 0B */	stb r0, 0x30b(r29)
/* 801CA3E8  7F C3 F3 78 */	mr r3, r30
/* 801CA3EC  A0 9F 00 EE */	lhz r4, 0xee(r31)
/* 801CA3F0  4B E6 A5 9D */	bl onEventBit__11dSv_event_cFUs
lbl_801CA3F4:
/* 801CA3F4  39 61 00 20 */	addi r11, r1, 0x20
/* 801CA3F8  48 19 7E 31 */	bl _restgpr_29
/* 801CA3FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CA400  7C 08 03 A6 */	mtlr r0
/* 801CA404  38 21 00 20 */	addi r1, r1, 0x20
/* 801CA408  4E 80 00 20 */	blr 
