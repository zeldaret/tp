lbl_80A0487C:
/* 80A0487C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A04880  7C 08 02 A6 */	mflr r0
/* 80A04884  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A04888  39 61 00 40 */	addi r11, r1, 0x40
/* 80A0488C  4B 95 D9 44 */	b _savegpr_26
/* 80A04890  7C 7C 1B 78 */	mr r28, r3
/* 80A04894  7C 9A 23 78 */	mr r26, r4
/* 80A04898  3C 60 80 A0 */	lis r3, m__17daNpc_Hoz_Param_c@ha
/* 80A0489C  3B E3 66 50 */	addi r31, r3, m__17daNpc_Hoz_Param_c@l
/* 80A048A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A048A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A048A8  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80A048AC  3B C0 00 00 */	li r30, 0
/* 80A048B0  3B A0 FF FF */	li r29, -1
/* 80A048B4  7F 63 DB 78 */	mr r3, r27
/* 80A048B8  3C A0 80 A0 */	lis r5, struct_80A06764+0x0@ha
/* 80A048BC  38 A5 67 64 */	addi r5, r5, struct_80A06764+0x0@l
/* 80A048C0  38 A5 00 9C */	addi r5, r5, 0x9c
/* 80A048C4  38 C0 00 03 */	li r6, 3
/* 80A048C8  4B 64 38 24 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A048CC  28 03 00 00 */	cmplwi r3, 0
/* 80A048D0  41 82 00 08 */	beq lbl_80A048D8
/* 80A048D4  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80A048D8:
/* 80A048D8  7F 63 DB 78 */	mr r3, r27
/* 80A048DC  7F 44 D3 78 */	mr r4, r26
/* 80A048E0  4B 64 34 6C */	b getIsAddvance__16dEvent_manager_cFi
/* 80A048E4  2C 03 00 00 */	cmpwi r3, 0
/* 80A048E8  41 82 01 74 */	beq lbl_80A04A5C
/* 80A048EC  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80A048F0  41 82 01 40 */	beq lbl_80A04A30
/* 80A048F4  40 80 00 28 */	bge lbl_80A0491C
/* 80A048F8  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80A048FC  41 82 00 38 */	beq lbl_80A04934
/* 80A04900  40 80 00 10 */	bge lbl_80A04910
/* 80A04904  2C 1D 00 00 */	cmpwi r29, 0
/* 80A04908  41 82 01 54 */	beq lbl_80A04A5C
/* 80A0490C  48 00 01 50 */	b lbl_80A04A5C
lbl_80A04910:
/* 80A04910  2C 1D 00 0C */	cmpwi r29, 0xc
/* 80A04914  40 80 01 48 */	bge lbl_80A04A5C
/* 80A04918  48 00 00 98 */	b lbl_80A049B0
lbl_80A0491C:
/* 80A0491C  2C 1D 00 28 */	cmpwi r29, 0x28
/* 80A04920  41 82 01 3C */	beq lbl_80A04A5C
/* 80A04924  40 80 01 38 */	bge lbl_80A04A5C
/* 80A04928  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 80A0492C  41 82 01 18 */	beq lbl_80A04A44
/* 80A04930  48 00 01 2C */	b lbl_80A04A5C
lbl_80A04934:
/* 80A04934  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A04938  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A0493C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80A04940  38 00 00 2D */	li r0, 0x2d
/* 80A04944  98 03 05 6A */	stb r0, 0x56a(r3)
/* 80A04948  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80A0494C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80A04950  38 80 00 00 */	li r4, 0
/* 80A04954  4B 81 97 70 */	b resetMiniGameItem__13dMeter2Info_cFb
/* 80A04958  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80A0495C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80A04960  38 80 00 01 */	li r4, 1
/* 80A04964  4B 81 94 B4 */	b setMiniGameItem__13dMeter2Info_cFUc
/* 80A04968  7F 83 E3 78 */	mr r3, r28
/* 80A0496C  38 80 00 00 */	li r4, 0
/* 80A04970  4B 74 60 A8 */	b setAngle__8daNpcT_cFs
/* 80A04974  38 00 00 00 */	li r0, 0
/* 80A04978  B0 1C 04 B6 */	sth r0, 0x4b6(r28)
/* 80A0497C  C0 5F 01 08 */	lfs f2, 0x108(r31)
/* 80A04980  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80A04984  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 80A04988  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80A0498C  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 80A04990  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A04994  D0 41 00 08 */	stfs f2, 8(r1)
/* 80A04998  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A0499C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A049A0  7F 83 E3 78 */	mr r3, r28
/* 80A049A4  38 81 00 08 */	addi r4, r1, 8
/* 80A049A8  4B 74 5F 60 */	b setPos__8daNpcT_cF4cXyz
/* 80A049AC  48 00 00 B0 */	b lbl_80A04A5C
lbl_80A049B0:
/* 80A049B0  7F 83 E3 78 */	mr r3, r28
/* 80A049B4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A049B8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A049BC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A049C0  4B 61 5D 50 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A049C4  B0 7C 04 DE */	sth r3, 0x4de(r28)
/* 80A049C8  7F 83 E3 78 */	mr r3, r28
/* 80A049CC  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80A049D0  4B 74 60 48 */	b setAngle__8daNpcT_cFs
/* 80A049D4  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80A049D8  2C 00 00 22 */	cmpwi r0, 0x22
/* 80A049DC  41 82 00 24 */	beq lbl_80A04A00
/* 80A049E0  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80A049E4  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80A049E8  4B 74 0E B0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A049EC  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80A049F0  38 00 00 22 */	li r0, 0x22
/* 80A049F4  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80A049F8  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80A049FC  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80A04A00:
/* 80A04A00  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80A04A04  2C 00 00 18 */	cmpwi r0, 0x18
/* 80A04A08  41 82 00 54 */	beq lbl_80A04A5C
/* 80A04A0C  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80A04A10  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80A04A14  4B 74 0E 84 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A04A18  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80A04A1C  38 00 00 18 */	li r0, 0x18
/* 80A04A20  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80A04A24  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80A04A28  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
/* 80A04A2C  48 00 00 30 */	b lbl_80A04A5C
lbl_80A04A30:
/* 80A04A30  7F 83 E3 78 */	mr r3, r28
/* 80A04A34  80 9C 0A 7C */	lwz r4, 0xa7c(r28)
/* 80A04A38  38 A0 00 00 */	li r5, 0
/* 80A04A3C  4B 74 71 B4 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80A04A40  48 00 00 1C */	b lbl_80A04A5C
lbl_80A04A44:
/* 80A04A44  80 7C 0F 84 */	lwz r3, 0xf84(r28)
/* 80A04A48  28 03 00 00 */	cmplwi r3, 0
/* 80A04A4C  41 82 00 10 */	beq lbl_80A04A5C
/* 80A04A50  48 34 90 E0 */	b readyStartTimer__16daStartAndGoal_cFv
/* 80A04A54  38 00 00 1E */	li r0, 0x1e
/* 80A04A58  90 1C 0D C4 */	stw r0, 0xdc4(r28)
lbl_80A04A5C:
/* 80A04A5C  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80A04A60  41 82 00 E0 */	beq lbl_80A04B40
/* 80A04A64  40 80 00 24 */	bge lbl_80A04A88
/* 80A04A68  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80A04A6C  40 80 00 10 */	bge lbl_80A04A7C
/* 80A04A70  2C 1D 00 00 */	cmpwi r29, 0
/* 80A04A74  41 82 00 2C */	beq lbl_80A04AA0
/* 80A04A78  48 00 01 4C */	b lbl_80A04BC4
lbl_80A04A7C:
/* 80A04A7C  2C 1D 00 0C */	cmpwi r29, 0xc
/* 80A04A80  40 80 01 44 */	bge lbl_80A04BC4
/* 80A04A84  48 00 00 B4 */	b lbl_80A04B38
lbl_80A04A88:
/* 80A04A88  2C 1D 00 28 */	cmpwi r29, 0x28
/* 80A04A8C  41 82 00 F8 */	beq lbl_80A04B84
/* 80A04A90  40 80 01 34 */	bge lbl_80A04BC4
/* 80A04A94  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 80A04A98  41 82 00 D0 */	beq lbl_80A04B68
/* 80A04A9C  48 00 01 28 */	b lbl_80A04BC4
lbl_80A04AA0:
/* 80A04AA0  80 1C 0F 84 */	lwz r0, 0xf84(r28)
/* 80A04AA4  28 00 00 00 */	cmplwi r0, 0
/* 80A04AA8  40 82 00 3C */	bne lbl_80A04AE4
/* 80A04AAC  3C 60 80 A0 */	lis r3, s_sub__FPvPv@ha
/* 80A04AB0  38 63 1E BC */	addi r3, r3, s_sub__FPvPv@l
/* 80A04AB4  7F 84 E3 78 */	mr r4, r28
/* 80A04AB8  4B 61 C8 80 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80A04ABC  90 7C 0F 84 */	stw r3, 0xf84(r28)
/* 80A04AC0  80 1C 0F 84 */	lwz r0, 0xf84(r28)
/* 80A04AC4  28 00 00 00 */	cmplwi r0, 0
/* 80A04AC8  41 82 00 1C */	beq lbl_80A04AE4
/* 80A04ACC  38 00 00 00 */	li r0, 0
/* 80A04AD0  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80A04AD4  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80A04AD8  98 03 00 BC */	stb r0, 0xbc(r3)
/* 80A04ADC  38 80 00 00 */	li r4, 0
/* 80A04AE0  4B 81 97 88 */	b setMiniGameCount__13dMeter2Info_cFSc
lbl_80A04AE4:
/* 80A04AE4  38 7C 0F A0 */	addi r3, r28, 0xfa0
/* 80A04AE8  4B 74 0C 20 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A04AEC  28 03 00 00 */	cmplwi r3, 0
/* 80A04AF0  40 82 00 24 */	bne lbl_80A04B14
/* 80A04AF4  3C 60 80 A0 */	lis r3, s_subCanoe__FPvPv@ha
/* 80A04AF8  38 63 1F 08 */	addi r3, r3, s_subCanoe__FPvPv@l
/* 80A04AFC  7F 84 E3 78 */	mr r4, r28
/* 80A04B00  4B 61 C8 38 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80A04B04  7C 64 1B 79 */	or. r4, r3, r3
/* 80A04B08  41 82 00 0C */	beq lbl_80A04B14
/* 80A04B0C  38 7C 0F A0 */	addi r3, r28, 0xfa0
/* 80A04B10  4B 74 0B D0 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80A04B14:
/* 80A04B14  80 1C 0F 84 */	lwz r0, 0xf84(r28)
/* 80A04B18  28 00 00 00 */	cmplwi r0, 0
/* 80A04B1C  41 82 00 AC */	beq lbl_80A04BC8
/* 80A04B20  38 7C 0F A0 */	addi r3, r28, 0xfa0
/* 80A04B24  4B 74 0B E4 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A04B28  28 03 00 00 */	cmplwi r3, 0
/* 80A04B2C  41 82 00 9C */	beq lbl_80A04BC8
/* 80A04B30  3B C0 00 01 */	li r30, 1
/* 80A04B34  48 00 00 94 */	b lbl_80A04BC8
lbl_80A04B38:
/* 80A04B38  3B C0 00 01 */	li r30, 1
/* 80A04B3C  48 00 00 8C */	b lbl_80A04BC8
lbl_80A04B40:
/* 80A04B40  7F 83 E3 78 */	mr r3, r28
/* 80A04B44  38 80 00 00 */	li r4, 0
/* 80A04B48  38 A0 00 00 */	li r5, 0
/* 80A04B4C  38 C0 00 00 */	li r6, 0
/* 80A04B50  38 E0 00 00 */	li r7, 0
/* 80A04B54  4B 74 71 24 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A04B58  2C 03 00 00 */	cmpwi r3, 0
/* 80A04B5C  41 82 00 6C */	beq lbl_80A04BC8
/* 80A04B60  3B C0 00 01 */	li r30, 1
/* 80A04B64  48 00 00 64 */	b lbl_80A04BC8
lbl_80A04B68:
/* 80A04B68  38 7C 0D C4 */	addi r3, r28, 0xdc4
/* 80A04B6C  48 00 18 49 */	bl func_80A063B4
/* 80A04B70  2C 03 00 00 */	cmpwi r3, 0
/* 80A04B74  40 82 00 10 */	bne lbl_80A04B84
/* 80A04B78  38 00 00 01 */	li r0, 1
/* 80A04B7C  98 1C 0F 8D */	stb r0, 0xf8d(r28)
/* 80A04B80  3B C0 00 01 */	li r30, 1
lbl_80A04B84:
/* 80A04B84  80 7C 0F 84 */	lwz r3, 0xf84(r28)
/* 80A04B88  28 03 00 00 */	cmplwi r3, 0
/* 80A04B8C  41 82 00 3C */	beq lbl_80A04BC8
/* 80A04B90  48 34 90 1C */	b isStartCheck__16daStartAndGoal_cFv
/* 80A04B94  2C 03 00 00 */	cmpwi r3, 0
/* 80A04B98  41 82 00 30 */	beq lbl_80A04BC8
/* 80A04B9C  38 00 00 01 */	li r0, 1
/* 80A04BA0  98 1C 0F 8D */	stb r0, 0xf8d(r28)
/* 80A04BA4  3B C0 00 01 */	li r30, 1
/* 80A04BA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A04BAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A04BB0  88 9C 0F 89 */	lbz r4, 0xf89(r28)
/* 80A04BB4  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80A04BB8  7C 05 07 74 */	extsb r5, r0
/* 80A04BBC  4B 63 06 44 */	b onSwitch__10dSv_info_cFii
/* 80A04BC0  48 00 00 08 */	b lbl_80A04BC8
lbl_80A04BC4:
/* 80A04BC4  3B C0 00 01 */	li r30, 1
lbl_80A04BC8:
/* 80A04BC8  7F C3 F3 78 */	mr r3, r30
/* 80A04BCC  39 61 00 40 */	addi r11, r1, 0x40
/* 80A04BD0  4B 95 D6 4C */	b _restgpr_26
/* 80A04BD4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A04BD8  7C 08 03 A6 */	mtlr r0
/* 80A04BDC  38 21 00 40 */	addi r1, r1, 0x40
/* 80A04BE0  4E 80 00 20 */	blr 
