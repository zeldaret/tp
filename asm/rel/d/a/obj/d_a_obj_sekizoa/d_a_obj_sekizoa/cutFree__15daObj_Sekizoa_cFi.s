lbl_80CD38F0:
/* 80CD38F0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CD38F4  7C 08 02 A6 */	mflr r0
/* 80CD38F8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CD38FC  39 61 00 40 */	addi r11, r1, 0x40
/* 80CD3900  4B 68 E8 CC */	b _savegpr_25
/* 80CD3904  7C 7C 1B 78 */	mr r28, r3
/* 80CD3908  7C 99 23 78 */	mr r25, r4
/* 80CD390C  3C 60 80 CD */	lis r3, m__21daObj_Sekizoa_Param_c@ha
/* 80CD3910  3B E3 5C FC */	addi r31, r3, m__21daObj_Sekizoa_Param_c@l
/* 80CD3914  3B C0 00 00 */	li r30, 0
/* 80CD3918  3B A0 FF FF */	li r29, -1
/* 80CD391C  3B 40 00 00 */	li r26, 0
/* 80CD3920  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD3924  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CD3928  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80CD392C  7F 63 DB 78 */	mr r3, r27
/* 80CD3930  3C A0 80 CD */	lis r5, struct_80CD5E64+0x0@ha
/* 80CD3934  38 A5 5E 64 */	addi r5, r5, struct_80CD5E64+0x0@l
/* 80CD3938  38 A5 00 5F */	addi r5, r5, 0x5f
/* 80CD393C  38 C0 00 03 */	li r6, 3
/* 80CD3940  4B 37 47 AC */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80CD3944  28 03 00 00 */	cmplwi r3, 0
/* 80CD3948  41 82 00 08 */	beq lbl_80CD3950
/* 80CD394C  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80CD3950:
/* 80CD3950  7F 63 DB 78 */	mr r3, r27
/* 80CD3954  7F 24 CB 78 */	mr r4, r25
/* 80CD3958  3C A0 80 CD */	lis r5, struct_80CD5E64+0x0@ha
/* 80CD395C  38 A5 5E 64 */	addi r5, r5, struct_80CD5E64+0x0@l
/* 80CD3960  38 A5 00 63 */	addi r5, r5, 0x63
/* 80CD3964  38 C0 00 03 */	li r6, 3
/* 80CD3968  4B 37 47 84 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80CD396C  28 03 00 00 */	cmplwi r3, 0
/* 80CD3970  41 82 00 08 */	beq lbl_80CD3978
/* 80CD3974  83 43 00 00 */	lwz r26, 0(r3)
lbl_80CD3978:
/* 80CD3978  7F 63 DB 78 */	mr r3, r27
/* 80CD397C  7F 24 CB 78 */	mr r4, r25
/* 80CD3980  4B 37 43 CC */	b getIsAddvance__16dEvent_manager_cFi
/* 80CD3984  2C 03 00 00 */	cmpwi r3, 0
/* 80CD3988  41 82 01 E0 */	beq lbl_80CD3B68
/* 80CD398C  2C 1D 00 02 */	cmpwi r29, 2
/* 80CD3990  41 82 01 94 */	beq lbl_80CD3B24
/* 80CD3994  40 80 00 14 */	bge lbl_80CD39A8
/* 80CD3998  2C 1D 00 00 */	cmpwi r29, 0
/* 80CD399C  41 82 01 CC */	beq lbl_80CD3B68
/* 80CD39A0  40 80 00 14 */	bge lbl_80CD39B4
/* 80CD39A4  48 00 01 C4 */	b lbl_80CD3B68
lbl_80CD39A8:
/* 80CD39A8  2C 1D 00 04 */	cmpwi r29, 4
/* 80CD39AC  40 80 01 BC */	bge lbl_80CD3B68
/* 80CD39B0  48 00 01 7C */	b lbl_80CD3B2C
lbl_80CD39B4:
/* 80CD39B4  88 1C 10 C8 */	lbz r0, 0x10c8(r28)
/* 80CD39B8  28 00 00 00 */	cmplwi r0, 0
/* 80CD39BC  40 82 01 54 */	bne lbl_80CD3B10
/* 80CD39C0  38 7C 10 D4 */	addi r3, r28, 0x10d4
/* 80CD39C4  4B 47 1D 44 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80CD39C8  C0 03 04 A8 */	lfs f0, 0x4a8(r3)
/* 80CD39CC  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 80CD39D0  C0 03 04 AC */	lfs f0, 0x4ac(r3)
/* 80CD39D4  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80CD39D8  C0 03 04 B0 */	lfs f0, 0x4b0(r3)
/* 80CD39DC  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 80CD39E0  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80CD39E4  D0 03 04 BC */	stfs f0, 0x4bc(r3)
/* 80CD39E8  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80CD39EC  D0 03 04 C0 */	stfs f0, 0x4c0(r3)
/* 80CD39F0  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80CD39F4  D0 03 04 C4 */	stfs f0, 0x4c4(r3)
/* 80CD39F8  38 00 00 00 */	li r0, 0
/* 80CD39FC  98 03 0E 25 */	stb r0, 0xe25(r3)
/* 80CD3A00  38 7C 10 DC */	addi r3, r28, 0x10dc
/* 80CD3A04  4B 47 1D 04 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80CD3A08  C0 03 04 A8 */	lfs f0, 0x4a8(r3)
/* 80CD3A0C  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 80CD3A10  C0 03 04 AC */	lfs f0, 0x4ac(r3)
/* 80CD3A14  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80CD3A18  C0 03 04 B0 */	lfs f0, 0x4b0(r3)
/* 80CD3A1C  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 80CD3A20  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80CD3A24  D0 03 04 BC */	stfs f0, 0x4bc(r3)
/* 80CD3A28  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80CD3A2C  D0 03 04 C0 */	stfs f0, 0x4c0(r3)
/* 80CD3A30  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80CD3A34  D0 03 04 C4 */	stfs f0, 0x4c4(r3)
/* 80CD3A38  38 00 00 00 */	li r0, 0
/* 80CD3A3C  98 03 0E 25 */	stb r0, 0xe25(r3)
/* 80CD3A40  38 60 00 01 */	li r3, 1
/* 80CD3A44  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80CD3A48  7C 04 07 74 */	extsb r4, r0
/* 80CD3A4C  38 A1 00 14 */	addi r5, r1, 0x14
/* 80CD3A50  38 C1 00 0C */	addi r6, r1, 0xc
/* 80CD3A54  4B 47 8A AC */	b daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 80CD3A58  2C 03 00 00 */	cmpwi r3, 0
/* 80CD3A5C  41 82 00 38 */	beq lbl_80CD3A94
/* 80CD3A60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD3A64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CD3A68  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CD3A6C  38 81 00 14 */	addi r4, r1, 0x14
/* 80CD3A70  A8 A1 00 0E */	lha r5, 0xe(r1)
/* 80CD3A74  38 C0 00 00 */	li r6, 0
/* 80CD3A78  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CD3A7C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80CD3A80  7D 89 03 A6 */	mtctr r12
/* 80CD3A84  4E 80 04 21 */	bctrl 
/* 80CD3A88  7F 63 DB 78 */	mr r3, r27
/* 80CD3A8C  38 81 00 14 */	addi r4, r1, 0x14
/* 80CD3A90  4B 37 49 34 */	b setGoal__16dEvent_manager_cFP4cXyz
lbl_80CD3A94:
/* 80CD3A94  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80CD3A98  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CD3A9C  28 04 00 FF */	cmplwi r4, 0xff
/* 80CD3AA0  41 82 00 18 */	beq lbl_80CD3AB8
/* 80CD3AA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD3AA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CD3AAC  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80CD3AB0  7C 05 07 74 */	extsb r5, r0
/* 80CD3AB4  4B 36 17 FC */	b offSwitch__10dSv_info_cFii
lbl_80CD3AB8:
/* 80CD3AB8  38 60 00 00 */	li r3, 0
/* 80CD3ABC  38 80 00 00 */	li r4, 0
/* 80CD3AC0  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 80CD3AC4  4B 4D 4D 48 */	b dKy_custom_colset__FUcUcf
/* 80CD3AC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD3ACC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CD3AD0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CD3AD4  38 00 00 00 */	li r0, 0
/* 80CD3AD8  98 03 05 6A */	stb r0, 0x56a(r3)
/* 80CD3ADC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CD3AE0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CD3AE4  80 63 00 00 */	lwz r3, 0(r3)
/* 80CD3AE8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80CD3AEC  4B 5D BD 98 */	b subBgmStop__8Z2SeqMgrFv
/* 80CD3AF0  38 60 00 31 */	li r3, 0x31
/* 80CD3AF4  4B 47 90 38 */	b daNpcT_offTmpBit__FUl
/* 80CD3AF8  38 00 00 00 */	li r0, 0
/* 80CD3AFC  98 1C 11 73 */	stb r0, 0x1173(r28)
/* 80CD3B00  38 00 00 01 */	li r0, 1
/* 80CD3B04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD3B08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CD3B0C  98 03 5E B8 */	stb r0, 0x5eb8(r3)
lbl_80CD3B10:
/* 80CD3B10  38 00 00 01 */	li r0, 1
/* 80CD3B14  98 1C 0E 25 */	stb r0, 0xe25(r28)
/* 80CD3B18  38 00 00 00 */	li r0, 0
/* 80CD3B1C  98 1C 11 76 */	stb r0, 0x1176(r28)
/* 80CD3B20  48 00 00 48 */	b lbl_80CD3B68
lbl_80CD3B24:
/* 80CD3B24  93 5C 0D C4 */	stw r26, 0xdc4(r28)
/* 80CD3B28  48 00 00 40 */	b lbl_80CD3B68
lbl_80CD3B2C:
/* 80CD3B2C  38 00 00 98 */	li r0, 0x98
/* 80CD3B30  90 01 00 08 */	stw r0, 8(r1)
/* 80CD3B34  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CD3B38  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CD3B3C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CD3B40  38 81 00 08 */	addi r4, r1, 8
/* 80CD3B44  38 A0 00 00 */	li r5, 0
/* 80CD3B48  38 C0 00 00 */	li r6, 0
/* 80CD3B4C  38 E0 00 00 */	li r7, 0
/* 80CD3B50  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 80CD3B54  FC 40 08 90 */	fmr f2, f1
/* 80CD3B58  C0 7F 01 18 */	lfs f3, 0x118(r31)
/* 80CD3B5C  FC 80 18 90 */	fmr f4, f3
/* 80CD3B60  39 00 00 00 */	li r8, 0
/* 80CD3B64  4B 5D 7E 20 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CD3B68:
/* 80CD3B68  2C 1D 00 02 */	cmpwi r29, 2
/* 80CD3B6C  41 82 00 34 */	beq lbl_80CD3BA0
/* 80CD3B70  40 80 00 14 */	bge lbl_80CD3B84
/* 80CD3B74  2C 1D 00 00 */	cmpwi r29, 0
/* 80CD3B78  41 82 00 18 */	beq lbl_80CD3B90
/* 80CD3B7C  40 80 00 1C */	bge lbl_80CD3B98
/* 80CD3B80  48 00 00 3C */	b lbl_80CD3BBC
lbl_80CD3B84:
/* 80CD3B84  2C 1D 00 04 */	cmpwi r29, 4
/* 80CD3B88  40 80 00 34 */	bge lbl_80CD3BBC
/* 80CD3B8C  48 00 00 2C */	b lbl_80CD3BB8
lbl_80CD3B90:
/* 80CD3B90  3B C0 00 01 */	li r30, 1
/* 80CD3B94  48 00 00 28 */	b lbl_80CD3BBC
lbl_80CD3B98:
/* 80CD3B98  3B C0 00 01 */	li r30, 1
/* 80CD3B9C  48 00 00 20 */	b lbl_80CD3BBC
lbl_80CD3BA0:
/* 80CD3BA0  38 7C 0D C4 */	addi r3, r28, 0xdc4
/* 80CD3BA4  48 00 1C E1 */	bl func_80CD5884
/* 80CD3BA8  2C 03 00 00 */	cmpwi r3, 0
/* 80CD3BAC  40 82 00 10 */	bne lbl_80CD3BBC
/* 80CD3BB0  3B C0 00 01 */	li r30, 1
/* 80CD3BB4  48 00 00 08 */	b lbl_80CD3BBC
lbl_80CD3BB8:
/* 80CD3BB8  3B C0 00 01 */	li r30, 1
lbl_80CD3BBC:
/* 80CD3BBC  7F C3 F3 78 */	mr r3, r30
/* 80CD3BC0  39 61 00 40 */	addi r11, r1, 0x40
/* 80CD3BC4  4B 68 E6 54 */	b _restgpr_25
/* 80CD3BC8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CD3BCC  7C 08 03 A6 */	mtlr r0
/* 80CD3BD0  38 21 00 40 */	addi r1, r1, 0x40
/* 80CD3BD4  4E 80 00 20 */	blr 
