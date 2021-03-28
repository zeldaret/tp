lbl_80035A04:
/* 80035A04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80035A08  7C 08 02 A6 */	mflr r0
/* 80035A0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80035A10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80035A14  93 C1 00 08 */	stw r30, 8(r1)
/* 80035A18  1C 05 0A 94 */	mulli r0, r5, 0xa94
/* 80035A1C  7C 84 02 14 */	add r4, r4, r0
/* 80035A20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80035A24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80035A28  38 A0 09 58 */	li r5, 0x958
/* 80035A2C  4B FC DB 15 */	bl memcpy
/* 80035A30  48 30 AB 61 */	bl OSGetSoundMode
/* 80035A34  28 03 00 00 */	cmplwi r3, 0
/* 80035A38  40 82 00 28 */	bne lbl_80035A60
/* 80035A3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80035A40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80035A44  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80035A48  38 80 00 00 */	li r4, 0
/* 80035A4C  4B FF EC 41 */	bl setSound__19dSv_player_config_cFUc
/* 80035A50  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80035A54  38 80 00 00 */	li r4, 0
/* 80035A58  48 29 7E 31 */	bl setOutputMode__10Z2AudioMgrFUl
/* 80035A5C  48 00 00 4C */	b lbl_80035AA8
lbl_80035A60:
/* 80035A60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80035A64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80035A68  3B E3 01 E0 */	addi r31, r3, 0x1e0
/* 80035A6C  7F E3 FB 78 */	mr r3, r31
/* 80035A70  4B FF EC 15 */	bl getSound__19dSv_player_config_cFv
/* 80035A74  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80035A78  28 00 00 02 */	cmplwi r0, 2
/* 80035A7C  40 82 00 14 */	bne lbl_80035A90
/* 80035A80  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80035A84  38 80 00 02 */	li r4, 2
/* 80035A88  48 29 7E 01 */	bl setOutputMode__10Z2AudioMgrFUl
/* 80035A8C  48 00 00 1C */	b lbl_80035AA8
lbl_80035A90:
/* 80035A90  7F E3 FB 78 */	mr r3, r31
/* 80035A94  38 80 00 01 */	li r4, 1
/* 80035A98  4B FF EB F5 */	bl setSound__19dSv_player_config_cFUc
/* 80035A9C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80035AA0  38 80 00 01 */	li r4, 1
/* 80035AA4  48 29 7D E5 */	bl setOutputMode__10Z2AudioMgrFUl
lbl_80035AA8:
/* 80035AA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80035AAC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80035AB0  A0 1F 00 02 */	lhz r0, 2(r31)
/* 80035AB4  28 00 00 0C */	cmplwi r0, 0xc
/* 80035AB8  40 80 00 0C */	bge lbl_80035AC4
/* 80035ABC  38 00 00 0C */	li r0, 0xc
/* 80035AC0  B0 1F 00 02 */	sth r0, 2(r31)
lbl_80035AC4:
/* 80035AC4  38 60 00 06 */	li r3, 6
/* 80035AC8  38 80 00 00 */	li r4, 0
/* 80035ACC  4B FF 95 75 */	bl dComIfGs_setKeyNum__FiUc
/* 80035AD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80035AD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80035AD8  3B C3 00 9C */	addi r30, r3, 0x9c
/* 80035ADC  7F C3 F3 78 */	mr r3, r30
/* 80035AE0  38 80 00 09 */	li r4, 9
/* 80035AE4  38 A0 00 01 */	li r5, 1
/* 80035AE8  4B FF D5 49 */	bl getItem__17dSv_player_item_cCFib
/* 80035AEC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80035AF0  28 00 00 47 */	cmplwi r0, 0x47
/* 80035AF4  40 82 00 24 */	bne lbl_80035B18
/* 80035AF8  7F C3 F3 78 */	mr r3, r30
/* 80035AFC  38 80 00 0A */	li r4, 0xa
/* 80035B00  38 A0 00 47 */	li r5, 0x47
/* 80035B04  4B FF D4 B5 */	bl setItem__17dSv_player_item_cFiUc
/* 80035B08  7F C3 F3 78 */	mr r3, r30
/* 80035B0C  38 80 00 09 */	li r4, 9
/* 80035B10  38 A0 00 FF */	li r5, 0xff
/* 80035B14  4B FF D4 A5 */	bl setItem__17dSv_player_item_cFiUc
lbl_80035B18:
/* 80035B18  7F C3 F3 78 */	mr r3, r30
/* 80035B1C  38 80 00 09 */	li r4, 9
/* 80035B20  38 A0 00 01 */	li r5, 1
/* 80035B24  4B FF D5 0D */	bl getItem__17dSv_player_item_cCFib
/* 80035B28  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80035B2C  28 00 00 44 */	cmplwi r0, 0x44
/* 80035B30  40 82 00 30 */	bne lbl_80035B60
/* 80035B34  7F C3 F3 78 */	mr r3, r30
/* 80035B38  38 80 00 0A */	li r4, 0xa
/* 80035B3C  38 A0 00 01 */	li r5, 1
/* 80035B40  4B FF D4 F1 */	bl getItem__17dSv_player_item_cCFib
/* 80035B44  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80035B48  28 00 00 47 */	cmplwi r0, 0x47
/* 80035B4C  40 82 00 14 */	bne lbl_80035B60
/* 80035B50  7F C3 F3 78 */	mr r3, r30
/* 80035B54  38 80 00 09 */	li r4, 9
/* 80035B58  38 A0 00 FF */	li r5, 0xff
/* 80035B5C  4B FF D4 5D */	bl setItem__17dSv_player_item_cFiUc
lbl_80035B60:
/* 80035B60  7F C3 F3 78 */	mr r3, r30
/* 80035B64  4B FF D7 95 */	bl setLineUpItem__17dSv_player_item_cFv
/* 80035B68  38 7F 01 E0 */	addi r3, r31, 0x1e0
/* 80035B6C  4B FF EB 29 */	bl getVibration__19dSv_player_config_cFv
/* 80035B70  7C 64 1B 78 */	mr r4, r3
/* 80035B74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80035B78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80035B7C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80035B80  4B FF 58 29 */	bl setNowVibration__14dComIfG_play_cFUc
/* 80035B84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80035B88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80035B8C  38 83 00 58 */	addi r4, r3, 0x58
/* 80035B90  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80035B94  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80035B98  48 1E 86 F9 */	bl setSaveStageName__13dMeter2Info_cFPCc
/* 80035B9C  3C 60 80 38 */	lis r3, d_save_d_save__stringBase0@ha
/* 80035BA0  38 63 92 34 */	addi r3, r3, d_save_d_save__stringBase0@l
/* 80035BA4  38 63 00 46 */	addi r3, r3, 0x46
/* 80035BA8  38 80 09 58 */	li r4, 0x958
/* 80035BAC  4C C6 31 82 */	crclr 6
/* 80035BB0  48 33 0C CD */	bl printf
/* 80035BB4  38 60 00 00 */	li r3, 0
/* 80035BB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80035BBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80035BC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80035BC4  7C 08 03 A6 */	mtlr r0
/* 80035BC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80035BCC  4E 80 00 20 */	blr 
