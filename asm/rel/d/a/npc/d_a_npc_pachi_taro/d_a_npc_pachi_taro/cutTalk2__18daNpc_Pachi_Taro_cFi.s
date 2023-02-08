lbl_80A9F324:
/* 80A9F324  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A9F328  7C 08 02 A6 */	mflr r0
/* 80A9F32C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A9F330  39 61 00 30 */	addi r11, r1, 0x30
/* 80A9F334  4B 8C 2E A5 */	bl _savegpr_28
/* 80A9F338  7C 7C 1B 78 */	mr r28, r3
/* 80A9F33C  7C 9D 23 78 */	mr r29, r4
/* 80A9F340  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A9F344  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A9F348  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A9F34C  7F C3 F3 78 */	mr r3, r30
/* 80A9F350  3C A0 80 AA */	lis r5, d_a_npc_pachi_taro__stringBase0@ha /* 0x80AA1814@ha */
/* 80A9F354  38 A5 18 14 */	addi r5, r5, d_a_npc_pachi_taro__stringBase0@l /* 0x80AA1814@l */
/* 80A9F358  38 A5 00 EF */	addi r5, r5, 0xef
/* 80A9F35C  38 C0 00 03 */	li r6, 3
/* 80A9F360  4B 5A 8D 8D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A9F364  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9F368  40 82 00 0C */	bne lbl_80A9F374
/* 80A9F36C  38 60 00 01 */	li r3, 1
/* 80A9F370  48 00 00 B8 */	b lbl_80A9F428
lbl_80A9F374:
/* 80A9F374  38 A1 00 08 */	addi r5, r1, 8
/* 80A9F378  3C 60 80 AA */	lis r3, lit_5681@ha /* 0x80AA178C@ha */
/* 80A9F37C  38 63 17 8C */	addi r3, r3, lit_5681@l /* 0x80AA178C@l */
/* 80A9F380  38 83 FF FC */	addi r4, r3, -4
/* 80A9F384  38 00 00 02 */	li r0, 2
/* 80A9F388  7C 09 03 A6 */	mtctr r0
lbl_80A9F38C:
/* 80A9F38C  80 64 00 04 */	lwz r3, 4(r4)
/* 80A9F390  84 04 00 08 */	lwzu r0, 8(r4)
/* 80A9F394  90 65 00 04 */	stw r3, 4(r5)
/* 80A9F398  94 05 00 08 */	stwu r0, 8(r5)
/* 80A9F39C  42 00 FF F0 */	bdnz lbl_80A9F38C
/* 80A9F3A0  80 04 00 04 */	lwz r0, 4(r4)
/* 80A9F3A4  90 05 00 04 */	stw r0, 4(r5)
/* 80A9F3A8  38 00 00 00 */	li r0, 0
/* 80A9F3AC  90 01 00 08 */	stw r0, 8(r1)
/* 80A9F3B0  88 1C 0F E8 */	lbz r0, 0xfe8(r28)
/* 80A9F3B4  7C 00 07 75 */	extsb. r0, r0
/* 80A9F3B8  40 80 00 0C */	bge lbl_80A9F3C4
/* 80A9F3BC  7F 83 E3 78 */	mr r3, r28
/* 80A9F3C0  4B FF ED 95 */	bl setMesPat__18daNpc_Pachi_Taro_cFv
lbl_80A9F3C4:
/* 80A9F3C4  7F C3 F3 78 */	mr r3, r30
/* 80A9F3C8  7F A4 EB 78 */	mr r4, r29
/* 80A9F3CC  88 1C 0F E8 */	lbz r0, 0xfe8(r28)
/* 80A9F3D0  7C 00 07 74 */	extsb r0, r0
/* 80A9F3D4  54 00 10 3A */	slwi r0, r0, 2
/* 80A9F3D8  38 A1 00 0C */	addi r5, r1, 0xc
/* 80A9F3DC  7C A5 00 2E */	lwzx r5, r5, r0
/* 80A9F3E0  38 C0 00 03 */	li r6, 3
/* 80A9F3E4  4B 5A 8D 09 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A9F3E8  28 03 00 00 */	cmplwi r3, 0
/* 80A9F3EC  41 82 00 0C */	beq lbl_80A9F3F8
/* 80A9F3F0  80 03 00 00 */	lwz r0, 0(r3)
/* 80A9F3F4  90 01 00 08 */	stw r0, 8(r1)
lbl_80A9F3F8:
/* 80A9F3F8  7F C3 F3 78 */	mr r3, r30
/* 80A9F3FC  7F A4 EB 78 */	mr r4, r29
/* 80A9F400  4B 5A 89 4D */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A9F404  2C 03 00 00 */	cmpwi r3, 0
/* 80A9F408  41 82 00 10 */	beq lbl_80A9F418
/* 80A9F40C  7F 83 E3 78 */	mr r3, r28
/* 80A9F410  7F E4 FB 78 */	mr r4, r31
/* 80A9F414  48 00 00 2D */	bl _cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi
lbl_80A9F418:
/* 80A9F418  7F 83 E3 78 */	mr r3, r28
/* 80A9F41C  7F E4 FB 78 */	mr r4, r31
/* 80A9F420  38 A1 00 08 */	addi r5, r1, 8
/* 80A9F424  48 00 00 C9 */	bl _cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi
lbl_80A9F428:
/* 80A9F428  39 61 00 30 */	addi r11, r1, 0x30
/* 80A9F42C  4B 8C 2D F9 */	bl _restgpr_28
/* 80A9F430  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A9F434  7C 08 03 A6 */	mtlr r0
/* 80A9F438  38 21 00 30 */	addi r1, r1, 0x30
/* 80A9F43C  4E 80 00 20 */	blr 
