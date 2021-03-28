lbl_80250560:
/* 80250560  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80250564  7C 08 02 A6 */	mflr r0
/* 80250568  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025056C  39 61 00 20 */	addi r11, r1, 0x20
/* 80250570  48 11 1C 69 */	bl _savegpr_28
/* 80250574  7C 7C 1B 78 */	mr r28, r3
/* 80250578  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025057C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80250580  3B E3 5F 64 */	addi r31, r3, 0x5f64
/* 80250584  7F E3 FB 78 */	mr r3, r31
/* 80250588  3B BF 01 B4 */	addi r29, r31, 0x1b4
/* 8025058C  7F A4 EB 78 */	mr r4, r29
/* 80250590  3B DF 01 B8 */	addi r30, r31, 0x1b8
/* 80250594  7F C5 F3 78 */	mr r5, r30
/* 80250598  38 DC 00 0C */	addi r6, r28, 0xc
/* 8025059C  4B E0 61 F9 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 802505A0  7F E3 FB 78 */	mr r3, r31
/* 802505A4  7F A4 EB 78 */	mr r4, r29
/* 802505A8  7F C5 F3 78 */	mr r5, r30
/* 802505AC  80 DC 00 20 */	lwz r6, 0x20(r28)
/* 802505B0  4B E0 61 E5 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 802505B4  39 61 00 20 */	addi r11, r1, 0x20
/* 802505B8  48 11 1C 6D */	bl _restgpr_28
/* 802505BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802505C0  7C 08 03 A6 */	mtlr r0
/* 802505C4  38 21 00 20 */	addi r1, r1, 0x20
/* 802505C8  4E 80 00 20 */	blr 
