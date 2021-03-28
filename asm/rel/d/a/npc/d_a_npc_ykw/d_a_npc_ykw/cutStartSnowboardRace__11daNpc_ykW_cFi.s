lbl_80B63AA0:
/* 80B63AA0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B63AA4  7C 08 02 A6 */	mflr r0
/* 80B63AA8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B63AAC  39 61 00 60 */	addi r11, r1, 0x60
/* 80B63AB0  4B 7F E7 18 */	b _savegpr_24
/* 80B63AB4  7C 7A 1B 78 */	mr r26, r3
/* 80B63AB8  7C 98 23 78 */	mr r24, r4
/* 80B63ABC  3C 60 80 B6 */	lis r3, m__17daNpc_ykW_Param_c@ha
/* 80B63AC0  3B E3 7C 38 */	addi r31, r3, m__17daNpc_ykW_Param_c@l
/* 80B63AC4  3B 80 00 00 */	li r28, 0
/* 80B63AC8  3B 60 FF FF */	li r27, -1
/* 80B63ACC  3B 20 00 00 */	li r25, 0
/* 80B63AD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B63AD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B63AD8  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80B63ADC  3B DD 40 C0 */	addi r30, r29, 0x40c0
/* 80B63AE0  7F C3 F3 78 */	mr r3, r30
/* 80B63AE4  3C A0 80 B6 */	lis r5, struct_80B67E68+0x0@ha
/* 80B63AE8  38 A5 7E 68 */	addi r5, r5, struct_80B67E68+0x0@l
/* 80B63AEC  38 A5 00 B4 */	addi r5, r5, 0xb4
/* 80B63AF0  38 C0 00 03 */	li r6, 3
/* 80B63AF4  4B 4E 45 F8 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B63AF8  28 03 00 00 */	cmplwi r3, 0
/* 80B63AFC  41 82 00 08 */	beq lbl_80B63B04
/* 80B63B00  83 63 00 00 */	lwz r27, 0(r3)
lbl_80B63B04:
/* 80B63B04  7F C3 F3 78 */	mr r3, r30
/* 80B63B08  7F 04 C3 78 */	mr r4, r24
/* 80B63B0C  3C A0 80 B6 */	lis r5, struct_80B67E68+0x0@ha
/* 80B63B10  38 A5 7E 68 */	addi r5, r5, struct_80B67E68+0x0@l
/* 80B63B14  38 A5 00 B8 */	addi r5, r5, 0xb8
/* 80B63B18  38 C0 00 03 */	li r6, 3
/* 80B63B1C  4B 4E 45 D0 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B63B20  28 03 00 00 */	cmplwi r3, 0
/* 80B63B24  41 82 00 08 */	beq lbl_80B63B2C
/* 80B63B28  83 23 00 00 */	lwz r25, 0(r3)
lbl_80B63B2C:
/* 80B63B2C  7F C3 F3 78 */	mr r3, r30
/* 80B63B30  7F 04 C3 78 */	mr r4, r24
/* 80B63B34  4B 4E 42 18 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B63B38  2C 03 00 00 */	cmpwi r3, 0
/* 80B63B3C  41 82 02 1C */	beq lbl_80B63D58
/* 80B63B40  2C 1B 00 03 */	cmpwi r27, 3
/* 80B63B44  41 82 00 A8 */	beq lbl_80B63BEC
/* 80B63B48  40 80 00 1C */	bge lbl_80B63B64
/* 80B63B4C  2C 1B 00 01 */	cmpwi r27, 1
/* 80B63B50  41 82 00 2C */	beq lbl_80B63B7C
/* 80B63B54  40 80 00 8C */	bge lbl_80B63BE0
/* 80B63B58  2C 1B 00 00 */	cmpwi r27, 0
/* 80B63B5C  40 80 00 18 */	bge lbl_80B63B74
/* 80B63B60  48 00 01 F8 */	b lbl_80B63D58
lbl_80B63B64:
/* 80B63B64  2C 1B 00 05 */	cmpwi r27, 5
/* 80B63B68  41 82 01 F0 */	beq lbl_80B63D58
/* 80B63B6C  40 80 01 EC */	bge lbl_80B63D58
/* 80B63B70  48 00 01 C4 */	b lbl_80B63D34
lbl_80B63B74:
/* 80B63B74  93 3A 0D C4 */	stw r25, 0xdc4(r26)
/* 80B63B78  48 00 01 E0 */	b lbl_80B63D58
lbl_80B63B7C:
/* 80B63B7C  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 80B63B80  D0 1A 04 A8 */	stfs f0, 0x4a8(r26)
/* 80B63B84  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 80B63B88  D0 1A 04 AC */	stfs f0, 0x4ac(r26)
/* 80B63B8C  C0 1F 01 D4 */	lfs f0, 0x1d4(r31)
/* 80B63B90  D0 1A 04 B0 */	stfs f0, 0x4b0(r26)
/* 80B63B94  38 00 00 00 */	li r0, 0
/* 80B63B98  B0 1A 04 B4 */	sth r0, 0x4b4(r26)
/* 80B63B9C  B0 1A 04 B6 */	sth r0, 0x4b6(r26)
/* 80B63BA0  B0 1A 04 B8 */	sth r0, 0x4b8(r26)
/* 80B63BA4  38 00 2A AA */	li r0, 0x2aaa
/* 80B63BA8  B0 1A 04 B6 */	sth r0, 0x4b6(r26)
/* 80B63BAC  C0 1A 04 A8 */	lfs f0, 0x4a8(r26)
/* 80B63BB0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B63BB4  C0 1A 04 AC */	lfs f0, 0x4ac(r26)
/* 80B63BB8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B63BBC  C0 1A 04 B0 */	lfs f0, 0x4b0(r26)
/* 80B63BC0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B63BC4  7F 43 D3 78 */	mr r3, r26
/* 80B63BC8  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B63BCC  4B 5E 6D 3C */	b setPos__8daNpcT_cF4cXyz
/* 80B63BD0  7F 43 D3 78 */	mr r3, r26
/* 80B63BD4  A8 9A 04 B6 */	lha r4, 0x4b6(r26)
/* 80B63BD8  4B 5E 6E 40 */	b setAngle__8daNpcT_cFs
/* 80B63BDC  48 00 01 7C */	b lbl_80B63D58
lbl_80B63BE0:
/* 80B63BE0  38 00 FF FF */	li r0, -1
/* 80B63BE4  90 1A 10 14 */	stw r0, 0x1014(r26)
/* 80B63BE8  48 00 01 70 */	b lbl_80B63D58
lbl_80B63BEC:
/* 80B63BEC  80 1A 0B 58 */	lwz r0, 0xb58(r26)
/* 80B63BF0  2C 00 00 0D */	cmpwi r0, 0xd
/* 80B63BF4  41 82 00 24 */	beq lbl_80B63C18
/* 80B63BF8  83 3A 0B 5C */	lwz r25, 0xb5c(r26)
/* 80B63BFC  38 7A 0B 50 */	addi r3, r26, 0xb50
/* 80B63C00  4B 5E 1C 98 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B63C04  93 3A 0B 5C */	stw r25, 0xb5c(r26)
/* 80B63C08  38 00 00 0D */	li r0, 0xd
/* 80B63C0C  90 1A 0B 58 */	stw r0, 0xb58(r26)
/* 80B63C10  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80B63C14  D0 1A 0B 68 */	stfs f0, 0xb68(r26)
lbl_80B63C18:
/* 80B63C18  80 1A 0B 7C */	lwz r0, 0xb7c(r26)
/* 80B63C1C  2C 00 00 00 */	cmpwi r0, 0
/* 80B63C20  41 82 00 24 */	beq lbl_80B63C44
/* 80B63C24  83 3A 0B 80 */	lwz r25, 0xb80(r26)
/* 80B63C28  38 7A 0B 74 */	addi r3, r26, 0xb74
/* 80B63C2C  4B 5E 1C 6C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B63C30  93 3A 0B 80 */	stw r25, 0xb80(r26)
/* 80B63C34  38 00 00 00 */	li r0, 0
/* 80B63C38  90 1A 0B 7C */	stw r0, 0xb7c(r26)
/* 80B63C3C  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80B63C40  D0 1A 0B 8C */	stfs f0, 0xb8c(r26)
lbl_80B63C44:
/* 80B63C44  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80B63C48  2C 00 00 00 */	cmpwi r0, 0
/* 80B63C4C  41 82 00 24 */	beq lbl_80B63C70
/* 80B63C50  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80B63C54  4B 5E 1A A8 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B63C58  38 00 00 00 */	li r0, 0
/* 80B63C5C  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80B63C60  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80B63C64  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 80B63C68  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80B63C6C  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_80B63C70:
/* 80B63C70  38 60 00 00 */	li r3, 0
/* 80B63C74  B0 7A 0C D4 */	sth r3, 0xcd4(r26)
/* 80B63C78  B0 7A 0C D6 */	sth r3, 0xcd6(r26)
/* 80B63C7C  38 00 00 01 */	li r0, 1
/* 80B63C80  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80B63C84  98 7A 10 64 */	stb r3, 0x1064(r26)
/* 80B63C88  98 7A 10 6E */	stb r3, 0x106e(r26)
/* 80B63C8C  98 7A 10 65 */	stb r3, 0x1065(r26)
/* 80B63C90  98 7A 10 6B */	stb r3, 0x106b(r26)
/* 80B63C94  38 60 00 55 */	li r3, 0x55
/* 80B63C98  4B 5E 8E 54 */	b daNpcT_onTmpBit__FUl
/* 80B63C9C  7F 43 D3 78 */	mr r3, r26
/* 80B63CA0  38 80 00 06 */	li r4, 6
/* 80B63CA4  4B FF BD D1 */	bl getOtherYkwP__11daNpc_ykW_cFi
/* 80B63CA8  7C 79 1B 78 */	mr r25, r3
/* 80B63CAC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B63CB0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B63CB4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B63CB8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B63CBC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B63CC0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B63CC4  7F 43 D3 78 */	mr r3, r26
/* 80B63CC8  38 81 00 10 */	addi r4, r1, 0x10
/* 80B63CCC  4B 5E 6C 3C */	b setPos__8daNpcT_cF4cXyz
/* 80B63CD0  7F 43 D3 78 */	mr r3, r26
/* 80B63CD4  A8 99 04 E6 */	lha r4, 0x4e6(r25)
/* 80B63CD8  4B 5E 6D 40 */	b setAngle__8daNpcT_cFs
/* 80B63CDC  38 60 00 14 */	li r3, 0x14
/* 80B63CE0  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 80B63CE4  7C 04 07 74 */	extsb r4, r0
/* 80B63CE8  38 A1 00 28 */	addi r5, r1, 0x28
/* 80B63CEC  38 C1 00 08 */	addi r6, r1, 8
/* 80B63CF0  4B 5E 88 10 */	b daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 80B63CF4  2C 03 00 00 */	cmpwi r3, 0
/* 80B63CF8  41 82 00 60 */	beq lbl_80B63D58
/* 80B63CFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B63D00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B63D04  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B63D08  38 81 00 28 */	addi r4, r1, 0x28
/* 80B63D0C  A8 A1 00 0A */	lha r5, 0xa(r1)
/* 80B63D10  38 C0 00 00 */	li r6, 0
/* 80B63D14  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B63D18  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B63D1C  7D 89 03 A6 */	mtctr r12
/* 80B63D20  4E 80 04 21 */	bctrl 
/* 80B63D24  7F C3 F3 78 */	mr r3, r30
/* 80B63D28  38 81 00 28 */	addi r4, r1, 0x28
/* 80B63D2C  4B 4E 46 98 */	b setGoal__16dEvent_manager_cFP4cXyz
/* 80B63D30  48 00 00 28 */	b lbl_80B63D58
lbl_80B63D34:
/* 80B63D34  38 00 00 01 */	li r0, 1
/* 80B63D38  98 1A 10 6A */	stb r0, 0x106a(r26)
/* 80B63D3C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B63D40  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B63D44  80 63 00 00 */	lwz r3, 0(r3)
/* 80B63D48  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B63D4C  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100004B@ha */
/* 80B63D50  38 84 00 4B */	addi r4, r4, 0x004B /* 0x0100004B@l */
/* 80B63D54  4B 74 B7 48 */	b subBgmStart__8Z2SeqMgrFUl
lbl_80B63D58:
/* 80B63D58  2C 1B 00 03 */	cmpwi r27, 3
/* 80B63D5C  41 82 00 D4 */	beq lbl_80B63E30
/* 80B63D60  40 80 00 1C */	bge lbl_80B63D7C
/* 80B63D64  2C 1B 00 01 */	cmpwi r27, 1
/* 80B63D68  41 82 00 3C */	beq lbl_80B63DA4
/* 80B63D6C  40 80 00 40 */	bge lbl_80B63DAC
/* 80B63D70  2C 1B 00 00 */	cmpwi r27, 0
/* 80B63D74  40 80 00 18 */	bge lbl_80B63D8C
/* 80B63D78  48 00 01 4C */	b lbl_80B63EC4
lbl_80B63D7C:
/* 80B63D7C  2C 1B 00 05 */	cmpwi r27, 5
/* 80B63D80  41 82 01 00 */	beq lbl_80B63E80
/* 80B63D84  40 80 01 40 */	bge lbl_80B63EC4
/* 80B63D88  48 00 00 B0 */	b lbl_80B63E38
lbl_80B63D8C:
/* 80B63D8C  38 7A 0D C4 */	addi r3, r26, 0xdc4
/* 80B63D90  48 00 3B 41 */	bl func_80B678D0
/* 80B63D94  2C 03 00 00 */	cmpwi r3, 0
/* 80B63D98  40 82 01 2C */	bne lbl_80B63EC4
/* 80B63D9C  3B 80 00 01 */	li r28, 1
/* 80B63DA0  48 00 01 24 */	b lbl_80B63EC4
lbl_80B63DA4:
/* 80B63DA4  3B 80 00 01 */	li r28, 1
/* 80B63DA8  48 00 01 1C */	b lbl_80B63EC4
lbl_80B63DAC:
/* 80B63DAC  80 7A 10 14 */	lwz r3, 0x1014(r26)
/* 80B63DB0  3C 03 00 01 */	addis r0, r3, 1
/* 80B63DB4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B63DB8  41 82 00 28 */	beq lbl_80B63DE0
/* 80B63DBC  7F A3 EB 78 */	mr r3, r29
/* 80B63DC0  4B 4C 8E 1C */	b getTimerPtr__14dComIfG_play_cFv
/* 80B63DC4  7C 7B 1B 78 */	mr r27, r3
/* 80B63DC8  80 7A 10 14 */	lwz r3, 0x1014(r26)
/* 80B63DCC  4B 4B D5 8C */	b fpcEx_SearchByID__FUi
/* 80B63DD0  7C 03 D8 40 */	cmplw r3, r27
/* 80B63DD4  40 82 00 F0 */	bne lbl_80B63EC4
/* 80B63DD8  3B 80 00 01 */	li r28, 1
/* 80B63DDC  48 00 00 E8 */	b lbl_80B63EC4
lbl_80B63DE0:
/* 80B63DE0  7F A3 EB 78 */	mr r3, r29
/* 80B63DE4  4B 4C 8D F8 */	b getTimerPtr__14dComIfG_play_cFv
/* 80B63DE8  28 03 00 00 */	cmplwi r3, 0
/* 80B63DEC  41 82 00 14 */	beq lbl_80B63E00
/* 80B63DF0  7F A3 EB 78 */	mr r3, r29
/* 80B63DF4  4B 4C 8D C8 */	b getTimerMode__14dComIfG_play_cFv
/* 80B63DF8  4B 4C B9 A4 */	b dComIfG_TimerDeleteRequest__Fi
/* 80B63DFC  48 00 00 C8 */	b lbl_80B63EC4
lbl_80B63E00:
/* 80B63E00  38 60 00 05 */	li r3, 5
/* 80B63E04  3C 80 00 99 */	lis r4, 0x0099 /* 0x00989298@ha */
/* 80B63E08  38 84 92 98 */	addi r4, r4, 0x9298 /* 0x00989298@l */
/* 80B63E0C  38 A0 00 01 */	li r5, 1
/* 80B63E10  38 C0 00 00 */	li r6, 0
/* 80B63E14  C0 3F 01 D8 */	lfs f1, 0x1d8(r31)
/* 80B63E18  C0 5F 01 DC */	lfs f2, 0x1dc(r31)
/* 80B63E1C  C0 7F 01 E0 */	lfs f3, 0x1e0(r31)
/* 80B63E20  C0 9F 01 E4 */	lfs f4, 0x1e4(r31)
/* 80B63E24  4B 6F D1 68 */	b dTimer_createTimer__FlUlUcUcffff
/* 80B63E28  90 7A 10 14 */	stw r3, 0x1014(r26)
/* 80B63E2C  48 00 00 98 */	b lbl_80B63EC4
lbl_80B63E30:
/* 80B63E30  3B 80 00 01 */	li r28, 1
/* 80B63E34  48 00 00 90 */	b lbl_80B63EC4
lbl_80B63E38:
/* 80B63E38  80 7A 10 14 */	lwz r3, 0x1014(r26)
/* 80B63E3C  3C 03 00 01 */	addis r0, r3, 1
/* 80B63E40  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B63E44  41 82 00 80 */	beq lbl_80B63EC4
/* 80B63E48  7F A3 EB 78 */	mr r3, r29
/* 80B63E4C  4B 4C 8D 90 */	b getTimerPtr__14dComIfG_play_cFv
/* 80B63E50  7C 7B 1B 78 */	mr r27, r3
/* 80B63E54  80 7A 10 14 */	lwz r3, 0x1014(r26)
/* 80B63E58  4B 4B D5 00 */	b fpcEx_SearchByID__FUi
/* 80B63E5C  7C 03 D8 40 */	cmplw r3, r27
/* 80B63E60  40 82 00 64 */	bne lbl_80B63EC4
/* 80B63E64  38 60 00 05 */	li r3, 5
/* 80B63E68  38 80 00 00 */	li r4, 0
/* 80B63E6C  4B 4C B6 C0 */	b dComIfG_TimerStart__Fis
/* 80B63E70  2C 03 00 00 */	cmpwi r3, 0
/* 80B63E74  41 82 00 50 */	beq lbl_80B63EC4
/* 80B63E78  3B 80 00 01 */	li r28, 1
/* 80B63E7C  48 00 00 48 */	b lbl_80B63EC4
lbl_80B63E80:
/* 80B63E80  80 7A 10 14 */	lwz r3, 0x1014(r26)
/* 80B63E84  3C 03 00 01 */	addis r0, r3, 1
/* 80B63E88  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B63E8C  41 82 00 38 */	beq lbl_80B63EC4
/* 80B63E90  7F A3 EB 78 */	mr r3, r29
/* 80B63E94  4B 4C 8D 48 */	b getTimerPtr__14dComIfG_play_cFv
/* 80B63E98  7C 7B 1B 78 */	mr r27, r3
/* 80B63E9C  80 7A 10 14 */	lwz r3, 0x1014(r26)
/* 80B63EA0  4B 4B D4 B8 */	b fpcEx_SearchByID__FUi
/* 80B63EA4  7C 03 D8 40 */	cmplw r3, r27
/* 80B63EA8  40 82 00 1C */	bne lbl_80B63EC4
/* 80B63EAC  7F A3 EB 78 */	mr r3, r29
/* 80B63EB0  4B 4C 8D 2C */	b getTimerPtr__14dComIfG_play_cFv
/* 80B63EB4  4B 6F 9C 5C */	b isStart__8dTimer_cFv
/* 80B63EB8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B63EBC  41 82 00 08 */	beq lbl_80B63EC4
/* 80B63EC0  3B 80 00 01 */	li r28, 1
lbl_80B63EC4:
/* 80B63EC4  7F 83 E3 78 */	mr r3, r28
/* 80B63EC8  39 61 00 60 */	addi r11, r1, 0x60
/* 80B63ECC  4B 7F E3 48 */	b _restgpr_24
/* 80B63ED0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B63ED4  7C 08 03 A6 */	mtlr r0
/* 80B63ED8  38 21 00 60 */	addi r1, r1, 0x60
/* 80B63EDC  4E 80 00 20 */	blr 
