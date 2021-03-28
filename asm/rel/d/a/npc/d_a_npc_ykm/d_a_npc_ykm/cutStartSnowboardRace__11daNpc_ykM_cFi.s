lbl_80B59748:
/* 80B59748  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B5974C  7C 08 02 A6 */	mflr r0
/* 80B59750  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B59754  39 61 00 60 */	addi r11, r1, 0x60
/* 80B59758  4B 80 8A 70 */	b _savegpr_24
/* 80B5975C  7C 7A 1B 78 */	mr r26, r3
/* 80B59760  7C 98 23 78 */	mr r24, r4
/* 80B59764  3C 60 80 B6 */	lis r3, m__17daNpc_ykM_Param_c@ha
/* 80B59768  3B E3 D7 94 */	addi r31, r3, m__17daNpc_ykM_Param_c@l
/* 80B5976C  3B 80 00 00 */	li r28, 0
/* 80B59770  3B 60 FF FF */	li r27, -1
/* 80B59774  3B 20 00 00 */	li r25, 0
/* 80B59778  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B5977C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B59780  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80B59784  3B DD 40 C0 */	addi r30, r29, 0x40c0
/* 80B59788  7F C3 F3 78 */	mr r3, r30
/* 80B5978C  3C A0 80 B6 */	lis r5, struct_80B5DA40+0x0@ha
/* 80B59790  38 A5 DA 40 */	addi r5, r5, struct_80B5DA40+0x0@l
/* 80B59794  38 A5 00 97 */	addi r5, r5, 0x97
/* 80B59798  38 C0 00 03 */	li r6, 3
/* 80B5979C  4B 4E E9 50 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B597A0  28 03 00 00 */	cmplwi r3, 0
/* 80B597A4  41 82 00 08 */	beq lbl_80B597AC
/* 80B597A8  83 63 00 00 */	lwz r27, 0(r3)
lbl_80B597AC:
/* 80B597AC  7F C3 F3 78 */	mr r3, r30
/* 80B597B0  7F 04 C3 78 */	mr r4, r24
/* 80B597B4  3C A0 80 B6 */	lis r5, struct_80B5DA40+0x0@ha
/* 80B597B8  38 A5 DA 40 */	addi r5, r5, struct_80B5DA40+0x0@l
/* 80B597BC  38 A5 00 9B */	addi r5, r5, 0x9b
/* 80B597C0  38 C0 00 03 */	li r6, 3
/* 80B597C4  4B 4E E9 28 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B597C8  28 03 00 00 */	cmplwi r3, 0
/* 80B597CC  41 82 00 08 */	beq lbl_80B597D4
/* 80B597D0  83 23 00 00 */	lwz r25, 0(r3)
lbl_80B597D4:
/* 80B597D4  7F C3 F3 78 */	mr r3, r30
/* 80B597D8  7F 04 C3 78 */	mr r4, r24
/* 80B597DC  4B 4E E5 70 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B597E0  2C 03 00 00 */	cmpwi r3, 0
/* 80B597E4  41 82 02 24 */	beq lbl_80B59A08
/* 80B597E8  2C 1B 00 03 */	cmpwi r27, 3
/* 80B597EC  41 82 02 1C */	beq lbl_80B59A08
/* 80B597F0  40 80 00 1C */	bge lbl_80B5980C
/* 80B597F4  2C 1B 00 01 */	cmpwi r27, 1
/* 80B597F8  41 82 00 2C */	beq lbl_80B59824
/* 80B597FC  40 80 01 78 */	bge lbl_80B59974
/* 80B59800  2C 1B 00 00 */	cmpwi r27, 0
/* 80B59804  40 80 00 18 */	bge lbl_80B5981C
/* 80B59808  48 00 02 00 */	b lbl_80B59A08
lbl_80B5980C:
/* 80B5980C  2C 1B 00 05 */	cmpwi r27, 5
/* 80B59810  41 82 01 98 */	beq lbl_80B599A8
/* 80B59814  40 80 01 F4 */	bge lbl_80B59A08
/* 80B59818  48 00 01 84 */	b lbl_80B5999C
lbl_80B5981C:
/* 80B5981C  93 3A 0D C4 */	stw r25, 0xdc4(r26)
/* 80B59820  48 00 01 E8 */	b lbl_80B59A08
lbl_80B59824:
/* 80B59824  80 1A 0B 58 */	lwz r0, 0xb58(r26)
/* 80B59828  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B5982C  41 82 00 24 */	beq lbl_80B59850
/* 80B59830  83 3A 0B 5C */	lwz r25, 0xb5c(r26)
/* 80B59834  38 7A 0B 50 */	addi r3, r26, 0xb50
/* 80B59838  4B 5E C0 60 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5983C  93 3A 0B 5C */	stw r25, 0xb5c(r26)
/* 80B59840  38 00 00 0F */	li r0, 0xf
/* 80B59844  90 1A 0B 58 */	stw r0, 0xb58(r26)
/* 80B59848  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B5984C  D0 1A 0B 68 */	stfs f0, 0xb68(r26)
lbl_80B59850:
/* 80B59850  80 1A 0B 7C */	lwz r0, 0xb7c(r26)
/* 80B59854  2C 00 00 20 */	cmpwi r0, 0x20
/* 80B59858  41 82 00 24 */	beq lbl_80B5987C
/* 80B5985C  83 3A 0B 80 */	lwz r25, 0xb80(r26)
/* 80B59860  38 7A 0B 74 */	addi r3, r26, 0xb74
/* 80B59864  4B 5E C0 34 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B59868  93 3A 0B 80 */	stw r25, 0xb80(r26)
/* 80B5986C  38 00 00 20 */	li r0, 0x20
/* 80B59870  90 1A 0B 7C */	stw r0, 0xb7c(r26)
/* 80B59874  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B59878  D0 1A 0B 8C */	stfs f0, 0xb8c(r26)
lbl_80B5987C:
/* 80B5987C  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80B59880  2C 00 00 00 */	cmpwi r0, 0
/* 80B59884  41 82 00 24 */	beq lbl_80B598A8
/* 80B59888  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80B5988C  4B 5E BE 70 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B59890  38 00 00 00 */	li r0, 0
/* 80B59894  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80B59898  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B5989C  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 80B598A0  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80B598A4  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_80B598A8:
/* 80B598A8  38 60 00 00 */	li r3, 0
/* 80B598AC  B0 7A 0C D4 */	sth r3, 0xcd4(r26)
/* 80B598B0  B0 7A 0C D6 */	sth r3, 0xcd6(r26)
/* 80B598B4  38 00 00 01 */	li r0, 1
/* 80B598B8  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80B598BC  98 7A 15 85 */	stb r3, 0x1585(r26)
/* 80B598C0  98 7A 15 7E */	stb r3, 0x157e(r26)
/* 80B598C4  98 1A 15 76 */	stb r0, 0x1576(r26)
/* 80B598C8  98 7A 15 7C */	stb r3, 0x157c(r26)
/* 80B598CC  38 60 00 54 */	li r3, 0x54
/* 80B598D0  4B 5F 32 1C */	b daNpcT_onTmpBit__FUl
/* 80B598D4  38 00 00 00 */	li r0, 0
/* 80B598D8  98 1A 15 7E */	stb r0, 0x157e(r26)
/* 80B598DC  7F 43 D3 78 */	mr r3, r26
/* 80B598E0  38 80 00 05 */	li r4, 5
/* 80B598E4  4B FF AC 69 */	bl getOtherYkmP__11daNpc_ykM_cFi
/* 80B598E8  7C 79 1B 78 */	mr r25, r3
/* 80B598EC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B598F0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B598F4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B598F8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B598FC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B59900  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B59904  7F 43 D3 78 */	mr r3, r26
/* 80B59908  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B5990C  4B 5F 0F FC */	b setPos__8daNpcT_cF4cXyz
/* 80B59910  7F 43 D3 78 */	mr r3, r26
/* 80B59914  A8 99 04 E6 */	lha r4, 0x4e6(r25)
/* 80B59918  4B 5F 11 00 */	b setAngle__8daNpcT_cFs
/* 80B5991C  38 60 00 14 */	li r3, 0x14
/* 80B59920  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 80B59924  7C 04 07 74 */	extsb r4, r0
/* 80B59928  38 A1 00 28 */	addi r5, r1, 0x28
/* 80B5992C  38 C1 00 08 */	addi r6, r1, 8
/* 80B59930  4B 5F 2B D0 */	b daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 80B59934  2C 03 00 00 */	cmpwi r3, 0
/* 80B59938  41 82 00 D0 */	beq lbl_80B59A08
/* 80B5993C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B59940  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B59944  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B59948  38 81 00 28 */	addi r4, r1, 0x28
/* 80B5994C  A8 A1 00 0A */	lha r5, 0xa(r1)
/* 80B59950  38 C0 00 00 */	li r6, 0
/* 80B59954  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B59958  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B5995C  7D 89 03 A6 */	mtctr r12
/* 80B59960  4E 80 04 21 */	bctrl 
/* 80B59964  7F C3 F3 78 */	mr r3, r30
/* 80B59968  38 81 00 28 */	addi r4, r1, 0x28
/* 80B5996C  4B 4E EA 58 */	b setGoal__16dEvent_manager_cFP4cXyz
/* 80B59970  48 00 00 98 */	b lbl_80B59A08
lbl_80B59974:
/* 80B59974  38 00 00 01 */	li r0, 1
/* 80B59978  98 1A 15 7B */	stb r0, 0x157b(r26)
/* 80B5997C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B59980  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B59984  80 63 00 00 */	lwz r3, 0(r3)
/* 80B59988  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B5998C  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100004B@ha */
/* 80B59990  38 84 00 4B */	addi r4, r4, 0x004B /* 0x0100004B@l */
/* 80B59994  4B 75 5B 08 */	b subBgmStart__8Z2SeqMgrFUl
/* 80B59998  48 00 00 70 */	b lbl_80B59A08
lbl_80B5999C:
/* 80B5999C  38 00 FF FF */	li r0, -1
/* 80B599A0  90 1A 15 34 */	stw r0, 0x1534(r26)
/* 80B599A4  48 00 00 64 */	b lbl_80B59A08
lbl_80B599A8:
/* 80B599A8  C0 1F 02 48 */	lfs f0, 0x248(r31)
/* 80B599AC  D0 1A 04 A8 */	stfs f0, 0x4a8(r26)
/* 80B599B0  C0 1F 02 4C */	lfs f0, 0x24c(r31)
/* 80B599B4  D0 1A 04 AC */	stfs f0, 0x4ac(r26)
/* 80B599B8  C0 1F 02 50 */	lfs f0, 0x250(r31)
/* 80B599BC  D0 1A 04 B0 */	stfs f0, 0x4b0(r26)
/* 80B599C0  38 00 00 00 */	li r0, 0
/* 80B599C4  B0 1A 04 B4 */	sth r0, 0x4b4(r26)
/* 80B599C8  B0 1A 04 B6 */	sth r0, 0x4b6(r26)
/* 80B599CC  B0 1A 04 B8 */	sth r0, 0x4b8(r26)
/* 80B599D0  38 00 2A AA */	li r0, 0x2aaa
/* 80B599D4  B0 1A 04 B6 */	sth r0, 0x4b6(r26)
/* 80B599D8  C0 1A 04 A8 */	lfs f0, 0x4a8(r26)
/* 80B599DC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B599E0  C0 1A 04 AC */	lfs f0, 0x4ac(r26)
/* 80B599E4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B599E8  C0 1A 04 B0 */	lfs f0, 0x4b0(r26)
/* 80B599EC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B599F0  7F 43 D3 78 */	mr r3, r26
/* 80B599F4  38 81 00 10 */	addi r4, r1, 0x10
/* 80B599F8  4B 5F 0F 10 */	b setPos__8daNpcT_cF4cXyz
/* 80B599FC  7F 43 D3 78 */	mr r3, r26
/* 80B59A00  A8 9A 04 B6 */	lha r4, 0x4b6(r26)
/* 80B59A04  4B 5F 10 14 */	b setAngle__8daNpcT_cFs
lbl_80B59A08:
/* 80B59A08  2C 1B 00 03 */	cmpwi r27, 3
/* 80B59A0C  41 82 00 98 */	beq lbl_80B59AA4
/* 80B59A10  40 80 00 1C */	bge lbl_80B59A2C
/* 80B59A14  2C 1B 00 01 */	cmpwi r27, 1
/* 80B59A18  41 82 00 3C */	beq lbl_80B59A54
/* 80B59A1C  40 80 00 40 */	bge lbl_80B59A5C
/* 80B59A20  2C 1B 00 00 */	cmpwi r27, 0
/* 80B59A24  40 80 00 18 */	bge lbl_80B59A3C
/* 80B59A28  48 00 01 4C */	b lbl_80B59B74
lbl_80B59A2C:
/* 80B59A2C  2C 1B 00 05 */	cmpwi r27, 5
/* 80B59A30  41 82 01 40 */	beq lbl_80B59B70
/* 80B59A34  40 80 01 40 */	bge lbl_80B59B74
/* 80B59A38  48 00 00 B4 */	b lbl_80B59AEC
lbl_80B59A3C:
/* 80B59A3C  38 7A 0D C4 */	addi r3, r26, 0xdc4
/* 80B59A40  48 00 39 39 */	bl func_80B5D378
/* 80B59A44  2C 03 00 00 */	cmpwi r3, 0
/* 80B59A48  40 82 01 2C */	bne lbl_80B59B74
/* 80B59A4C  3B 80 00 01 */	li r28, 1
/* 80B59A50  48 00 01 24 */	b lbl_80B59B74
lbl_80B59A54:
/* 80B59A54  3B 80 00 01 */	li r28, 1
/* 80B59A58  48 00 01 1C */	b lbl_80B59B74
lbl_80B59A5C:
/* 80B59A5C  80 7A 15 34 */	lwz r3, 0x1534(r26)
/* 80B59A60  3C 03 00 01 */	addis r0, r3, 1
/* 80B59A64  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B59A68  41 82 01 0C */	beq lbl_80B59B74
/* 80B59A6C  7F A3 EB 78 */	mr r3, r29
/* 80B59A70  4B 4D 31 6C */	b getTimerPtr__14dComIfG_play_cFv
/* 80B59A74  7C 7B 1B 78 */	mr r27, r3
/* 80B59A78  80 7A 15 34 */	lwz r3, 0x1534(r26)
/* 80B59A7C  4B 4C 78 DC */	b fpcEx_SearchByID__FUi
/* 80B59A80  7C 03 D8 40 */	cmplw r3, r27
/* 80B59A84  40 82 00 F0 */	bne lbl_80B59B74
/* 80B59A88  38 60 00 05 */	li r3, 5
/* 80B59A8C  38 80 00 00 */	li r4, 0
/* 80B59A90  4B 4D 5A 9C */	b dComIfG_TimerStart__Fis
/* 80B59A94  2C 03 00 00 */	cmpwi r3, 0
/* 80B59A98  41 82 00 DC */	beq lbl_80B59B74
/* 80B59A9C  3B 80 00 01 */	li r28, 1
/* 80B59AA0  48 00 00 D4 */	b lbl_80B59B74
lbl_80B59AA4:
/* 80B59AA4  80 7A 15 34 */	lwz r3, 0x1534(r26)
/* 80B59AA8  3C 03 00 01 */	addis r0, r3, 1
/* 80B59AAC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B59AB0  41 82 00 C4 */	beq lbl_80B59B74
/* 80B59AB4  7F A3 EB 78 */	mr r3, r29
/* 80B59AB8  4B 4D 31 24 */	b getTimerPtr__14dComIfG_play_cFv
/* 80B59ABC  7C 7B 1B 78 */	mr r27, r3
/* 80B59AC0  80 7A 15 34 */	lwz r3, 0x1534(r26)
/* 80B59AC4  4B 4C 78 94 */	b fpcEx_SearchByID__FUi
/* 80B59AC8  7C 03 D8 40 */	cmplw r3, r27
/* 80B59ACC  40 82 00 A8 */	bne lbl_80B59B74
/* 80B59AD0  7F A3 EB 78 */	mr r3, r29
/* 80B59AD4  4B 4D 31 08 */	b getTimerPtr__14dComIfG_play_cFv
/* 80B59AD8  4B 70 40 38 */	b isStart__8dTimer_cFv
/* 80B59ADC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B59AE0  41 82 00 94 */	beq lbl_80B59B74
/* 80B59AE4  3B 80 00 01 */	li r28, 1
/* 80B59AE8  48 00 00 8C */	b lbl_80B59B74
lbl_80B59AEC:
/* 80B59AEC  80 7A 15 34 */	lwz r3, 0x1534(r26)
/* 80B59AF0  3C 03 00 01 */	addis r0, r3, 1
/* 80B59AF4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B59AF8  41 82 00 28 */	beq lbl_80B59B20
/* 80B59AFC  7F A3 EB 78 */	mr r3, r29
/* 80B59B00  4B 4D 30 DC */	b getTimerPtr__14dComIfG_play_cFv
/* 80B59B04  7C 7B 1B 78 */	mr r27, r3
/* 80B59B08  80 7A 15 34 */	lwz r3, 0x1534(r26)
/* 80B59B0C  4B 4C 78 4C */	b fpcEx_SearchByID__FUi
/* 80B59B10  7C 03 D8 40 */	cmplw r3, r27
/* 80B59B14  40 82 00 60 */	bne lbl_80B59B74
/* 80B59B18  3B 80 00 01 */	li r28, 1
/* 80B59B1C  48 00 00 58 */	b lbl_80B59B74
lbl_80B59B20:
/* 80B59B20  7F A3 EB 78 */	mr r3, r29
/* 80B59B24  4B 4D 30 B8 */	b getTimerPtr__14dComIfG_play_cFv
/* 80B59B28  28 03 00 00 */	cmplwi r3, 0
/* 80B59B2C  41 82 00 14 */	beq lbl_80B59B40
/* 80B59B30  7F A3 EB 78 */	mr r3, r29
/* 80B59B34  4B 4D 30 88 */	b getTimerMode__14dComIfG_play_cFv
/* 80B59B38  4B 4D 5C 64 */	b dComIfG_TimerDeleteRequest__Fi
/* 80B59B3C  48 00 00 38 */	b lbl_80B59B74
lbl_80B59B40:
/* 80B59B40  38 60 00 05 */	li r3, 5
/* 80B59B44  3C 80 00 99 */	lis r4, 0x0099 /* 0x00989298@ha */
/* 80B59B48  38 84 92 98 */	addi r4, r4, 0x9298 /* 0x00989298@l */
/* 80B59B4C  38 A0 00 01 */	li r5, 1
/* 80B59B50  38 C0 00 00 */	li r6, 0
/* 80B59B54  C0 3F 02 54 */	lfs f1, 0x254(r31)
/* 80B59B58  C0 5F 02 58 */	lfs f2, 0x258(r31)
/* 80B59B5C  C0 7F 02 5C */	lfs f3, 0x25c(r31)
/* 80B59B60  C0 9F 02 60 */	lfs f4, 0x260(r31)
/* 80B59B64  4B 70 74 28 */	b dTimer_createTimer__FlUlUcUcffff
/* 80B59B68  90 7A 15 34 */	stw r3, 0x1534(r26)
/* 80B59B6C  48 00 00 08 */	b lbl_80B59B74
lbl_80B59B70:
/* 80B59B70  3B 80 00 01 */	li r28, 1
lbl_80B59B74:
/* 80B59B74  7F 83 E3 78 */	mr r3, r28
/* 80B59B78  39 61 00 60 */	addi r11, r1, 0x60
/* 80B59B7C  4B 80 86 98 */	b _restgpr_24
/* 80B59B80  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B59B84  7C 08 03 A6 */	mtlr r0
/* 80B59B88  38 21 00 60 */	addi r1, r1, 0x60
/* 80B59B8C  4E 80 00 20 */	blr 
