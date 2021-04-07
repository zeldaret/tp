lbl_8025A654:
/* 8025A654  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025A658  7C 08 02 A6 */	mflr r0
/* 8025A65C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025A660  39 61 00 20 */	addi r11, r1, 0x20
/* 8025A664  48 10 7B 75 */	bl _savegpr_28
/* 8025A668  7C 7D 1B 78 */	mr r29, r3
/* 8025A66C  80 63 01 CC */	lwz r3, 0x1cc(r3)
/* 8025A670  28 03 00 00 */	cmplwi r3, 0
/* 8025A674  41 82 00 3C */	beq lbl_8025A6B0
/* 8025A678  80 83 00 1C */	lwz r4, 0x1c(r3)
/* 8025A67C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025A680  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025A684  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8025A688  4B DF 18 29 */	bl createScene__13dPa_control_cFPCv
/* 8025A68C  80 7D 01 CC */	lwz r3, 0x1cc(r29)
/* 8025A690  28 03 00 00 */	cmplwi r3, 0
/* 8025A694  41 82 00 30 */	beq lbl_8025A6C4
/* 8025A698  38 80 00 01 */	li r4, 1
/* 8025A69C  81 83 00 10 */	lwz r12, 0x10(r3)
/* 8025A6A0  81 8C 00 08 */	lwz r12, 8(r12)
/* 8025A6A4  7D 89 03 A6 */	mtctr r12
/* 8025A6A8  4E 80 04 21 */	bctrl 
/* 8025A6AC  48 00 00 18 */	b lbl_8025A6C4
lbl_8025A6B0:
/* 8025A6B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025A6B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025A6B8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8025A6BC  38 80 00 00 */	li r4, 0
/* 8025A6C0  4B DF 17 F1 */	bl createScene__13dPa_control_cFPCv
lbl_8025A6C4:
/* 8025A6C4  80 7D 01 D0 */	lwz r3, 0x1d0(r29)
/* 8025A6C8  28 03 00 00 */	cmplwi r3, 0
/* 8025A6CC  41 82 00 2C */	beq lbl_8025A6F8
/* 8025A6D0  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8025A6D4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025A6D8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025A6DC  90 04 5C F8 */	stw r0, 0x5cf8(r4)
/* 8025A6E0  41 82 00 18 */	beq lbl_8025A6F8
/* 8025A6E4  38 80 00 01 */	li r4, 1
/* 8025A6E8  81 83 00 10 */	lwz r12, 0x10(r3)
/* 8025A6EC  81 8C 00 08 */	lwz r12, 8(r12)
/* 8025A6F0  7D 89 03 A6 */	mtctr r12
/* 8025A6F4  4E 80 04 21 */	bctrl 
lbl_8025A6F8:
/* 8025A6F8  4B DD 42 F9 */	bl dComIfGp_calcNowRegion__Fv
/* 8025A6FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025A700  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025A704  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 8025A708  7F C3 F3 78 */	mr r3, r30
/* 8025A70C  81 9E 14 00 */	lwz r12, 0x1400(r30)
/* 8025A710  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8025A714  7D 89 03 A6 */	mtctr r12
/* 8025A718  4E 80 04 21 */	bctrl 
/* 8025A71C  3C 60 80 3F */	lis r3, mLineCheck__11fopAcM_lc_c@ha /* 0x803F1C48@ha */
/* 8025A720  38 63 1C 48 */	addi r3, r3, mLineCheck__11fopAcM_lc_c@l /* 0x803F1C48@l */
/* 8025A724  38 63 00 14 */	addi r3, r3, 0x14
/* 8025A728  48 00 D9 F9 */	bl ClearPi__13cBgS_PolyInfoFv
/* 8025A72C  3C 60 80 3F */	lis r3, mGndCheck__11fopAcM_gc_c@ha /* 0x803F1CC4@ha */
/* 8025A730  38 63 1C C4 */	addi r3, r3, mGndCheck__11fopAcM_gc_c@l /* 0x803F1CC4@l */
/* 8025A734  38 63 00 14 */	addi r3, r3, 0x14
/* 8025A738  48 00 D9 E9 */	bl ClearPi__13cBgS_PolyInfoFv
/* 8025A73C  3C 60 80 3F */	lis r3, mRoofCheck__11fopAcM_rc_c@ha /* 0x803F1D24@ha */
/* 8025A740  38 63 1D 24 */	addi r3, r3, mRoofCheck__11fopAcM_rc_c@l /* 0x803F1D24@l */
/* 8025A744  48 00 D9 DD */	bl ClearPi__13cBgS_PolyInfoFv
/* 8025A748  3C 60 80 3F */	lis r3, mWaterCheck__11fopAcM_wt_c@ha /* 0x803F1D80@ha */
/* 8025A74C  38 63 1D 80 */	addi r3, r3, mWaterCheck__11fopAcM_wt_c@l /* 0x803F1D80@l */
/* 8025A750  48 00 D9 D1 */	bl ClearPi__13cBgS_PolyInfoFv
/* 8025A754  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025A758  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025A75C  38 63 23 3C */	addi r3, r3, 0x233c
/* 8025A760  4B E2 B7 75 */	bl Ct__4dCcSFv
/* 8025A764  4B DD EF 15 */	bl create__7dDemo_cFv
/* 8025A768  38 A0 00 00 */	li r5, 0
/* 8025A76C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025A770  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025A774  90 BF 5D AC */	stw r5, 0x5dac(r31)
/* 8025A778  98 BF 5D B0 */	stb r5, 0x5db0(r31)
/* 8025A77C  7C A3 2B 78 */	mr r3, r5
/* 8025A780  38 00 00 02 */	li r0, 2
/* 8025A784  7C 09 03 A6 */	mtctr r0
lbl_8025A788:
/* 8025A788  7C 9F 1A 14 */	add r4, r31, r3
/* 8025A78C  90 A4 5D B4 */	stw r5, 0x5db4(r4)
/* 8025A790  38 63 00 04 */	addi r3, r3, 4
/* 8025A794  42 00 FF F4 */	bdnz lbl_8025A788
/* 8025A798  3B 9E 4E 10 */	addi r28, r30, 0x4e10
/* 8025A79C  7F 83 E3 78 */	mr r3, r28
/* 8025A7A0  C0 22 B5 28 */	lfs f1, lit_4068(r2)
/* 8025A7A4  FC 40 08 90 */	fmr f2, f1
/* 8025A7A8  C0 62 B5 30 */	lfs f3, lit_4804(r2)
/* 8025A7AC  C0 82 B5 34 */	lfs f4, lit_4805(r2)
/* 8025A7B0  FC A0 08 90 */	fmr f5, f1
/* 8025A7B4  C0 C2 B5 38 */	lfs f6, lit_4806(r2)
/* 8025A7B8  4B DF 73 09 */	bl setViewPort__14dDlst_window_cFffffff
/* 8025A7BC  7F 83 E3 78 */	mr r3, r28
/* 8025A7C0  C0 22 B5 28 */	lfs f1, lit_4068(r2)
/* 8025A7C4  FC 40 08 90 */	fmr f2, f1
/* 8025A7C8  C0 62 B5 30 */	lfs f3, lit_4804(r2)
/* 8025A7CC  C0 82 B5 34 */	lfs f4, lit_4805(r2)
/* 8025A7D0  4B DF 73 0D */	bl setScissor__14dDlst_window_cFffff
/* 8025A7D4  38 80 00 00 */	li r4, 0
/* 8025A7D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025A7DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025A7E0  98 83 5D 70 */	stb r4, 0x5d70(r3)
/* 8025A7E4  38 00 00 02 */	li r0, 2
/* 8025A7E8  98 03 5D 71 */	stb r0, 0x5d71(r3)
/* 8025A7EC  90 83 5D 74 */	stw r4, 0x5d74(r3)
/* 8025A7F0  98 83 5D 78 */	stb r4, 0x5d78(r3)
/* 8025A7F4  98 83 5D 79 */	stb r4, 0x5d79(r3)
/* 8025A7F8  38 00 FF FF */	li r0, -1
/* 8025A7FC  98 03 5D 7A */	stb r0, 0x5d7a(r3)
/* 8025A800  90 83 5D 7C */	stw r4, 0x5d7c(r3)
/* 8025A804  90 83 61 A8 */	stw r4, 0x61a8(r3)
/* 8025A808  90 83 61 AC */	stw r4, 0x61ac(r3)
/* 8025A80C  90 83 61 B0 */	stw r4, 0x61b0(r3)
/* 8025A810  3C 60 00 0C */	lis r3, 0x000C /* 0x000BB800@ha */
/* 8025A814  38 63 B8 00 */	addi r3, r3, 0xB800 /* 0x000BB800@l */
/* 8025A818  38 80 00 00 */	li r4, 0
/* 8025A81C  4B DC 5B 81 */	bl fopMsgM_createExpHeap__FUlP7JKRHeap
/* 8025A820  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025A824  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025A828  90 64 5E BC */	stw r3, 0x5ebc(r4)
/* 8025A82C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000A800@ha */
/* 8025A830  38 63 A8 00 */	addi r3, r3, 0xA800 /* 0x0000A800@l */
/* 8025A834  38 80 00 00 */	li r4, 0
/* 8025A838  4B DC 5B 65 */	bl fopMsgM_createExpHeap__FUlP7JKRHeap
/* 8025A83C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025A840  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025A844  90 64 5E C8 */	stw r3, 0x5ec8(r4)
/* 8025A848  A8 1D 00 08 */	lha r0, 8(r29)
/* 8025A84C  2C 00 00 0C */	cmpwi r0, 0xc
/* 8025A850  40 82 00 80 */	bne lbl_8025A8D0
/* 8025A854  38 60 02 E1 */	li r3, 0x2e1
/* 8025A858  38 80 00 00 */	li r4, 0
/* 8025A85C  38 A0 00 00 */	li r5, 0
/* 8025A860  38 C0 FF FF */	li r6, -1
/* 8025A864  38 E0 00 00 */	li r7, 0
/* 8025A868  39 00 00 00 */	li r8, 0
/* 8025A86C  39 20 FF FF */	li r9, -1
/* 8025A870  4B DB F5 29 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 8025A874  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025A878  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025A87C  4B DD A7 51 */	bl init__10dSv_info_cFv
/* 8025A880  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025A884  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025A888  38 00 00 00 */	li r0, 0
/* 8025A88C  98 03 01 EB */	stb r0, 0x1eb(r3)
/* 8025A890  38 00 00 0C */	li r0, 0xc
/* 8025A894  B0 03 00 02 */	sth r0, 2(r3)
/* 8025A898  38 60 00 2F */	li r3, 0x2f
/* 8025A89C  38 80 00 00 */	li r4, 0
/* 8025A8A0  4B FC 3C 11 */	bl dMeter2Info_setCloth__FUcb
/* 8025A8A4  38 60 00 28 */	li r3, 0x28
/* 8025A8A8  38 80 00 00 */	li r4, 0
/* 8025A8AC  4B FC 3C 85 */	bl dMeter2Info_setSword__FUcb
/* 8025A8B0  38 60 00 2C */	li r3, 0x2c
/* 8025A8B4  38 80 00 00 */	li r4, 0
/* 8025A8B8  4B FC 3D 1D */	bl dMeter2Info_setShield__FUcb
/* 8025A8BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025A8C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025A8C4  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8025A8C8  38 80 06 01 */	li r4, 0x601
/* 8025A8CC  4B DD A0 C1 */	bl onEventBit__11dSv_event_cFUs
lbl_8025A8D0:
/* 8025A8D0  4B DE 52 A1 */	bl create__8dMpath_cFv
/* 8025A8D4  4B E4 13 45 */	bl create__7dTres_cFv
/* 8025A8D8  4B DC C4 61 */	bl dStage_Create__Fv
/* 8025A8DC  7F C3 F3 78 */	mr r3, r30
/* 8025A8E0  4B DD 21 3D */	bl createSimpleModel__14dComIfG_play_cFv
/* 8025A8E4  4B E4 1E C9 */	bl create__10dMdl_mng_cFv
/* 8025A8E8  80 8D 8C 40 */	lwz r4, sManager__10JFWDisplay(r13)
/* 8025A8EC  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000F8@ha */
/* 8025A8F0  80 03 00 F8 */	lwz r0, 0x00F8(r3)  /* 0x800000F8@l */
/* 8025A8F4  54 03 F0 BE */	srwi r3, r0, 2
/* 8025A8F8  38 00 00 1E */	li r0, 0x1e
/* 8025A8FC  7C 03 03 96 */	divwu r0, r3, r0
/* 8025A900  90 04 00 20 */	stw r0, 0x20(r4)
/* 8025A904  38 00 00 00 */	li r0, 0
/* 8025A908  B0 04 00 1C */	sth r0, 0x1c(r4)
/* 8025A90C  38 00 FF FF */	li r0, -1
/* 8025A910  3C 60 80 43 */	lis r3, g_envHIO@ha /* 0x8043079C@ha */
/* 8025A914  38 63 07 9C */	addi r3, r3, g_envHIO@l /* 0x8043079C@l */
/* 8025A918  98 03 00 04 */	stb r0, 4(r3)
/* 8025A91C  3C 60 80 43 */	lis r3, g_save_bit_HIO@ha /* 0x804307EC@ha */
/* 8025A920  38 63 07 EC */	addi r3, r3, g_save_bit_HIO@l /* 0x804307EC@l */
/* 8025A924  98 03 00 04 */	stb r0, 4(r3)
/* 8025A928  34 7E 47 80 */	addic. r3, r30, 0x4780
/* 8025A92C  41 82 00 10 */	beq lbl_8025A93C
/* 8025A930  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8025A934  38 A0 00 00 */	li r5, 0
/* 8025A938  4B E1 58 61 */	bl __ct__12dAttention_cFP10fopAc_ac_cUl
lbl_8025A93C:
/* 8025A93C  38 7E 4C 9C */	addi r3, r30, 0x4c9c
/* 8025A940  4B E1 55 C5 */	bl Init__12dVibration_cFv
/* 8025A944  38 A0 00 00 */	li r5, 0
/* 8025A948  90 AD 88 18 */	stw r5, m_emitter__8daYkgr_c(r13)
/* 8025A94C  98 AD 88 0C */	stb r5, struct_80450D8C+0x0(r13)
/* 8025A950  38 80 00 01 */	li r4, 1
/* 8025A954  98 8D 88 0D */	stb r4, struct_80450D8C+0x1(r13)
/* 8025A958  38 00 00 FF */	li r0, 0xff
/* 8025A95C  98 0D 88 0E */	stb r0, struct_80450D8C+0x2(r13)
/* 8025A960  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025A964  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025A968  3C 63 00 02 */	addis r3, r3, 2
/* 8025A96C  98 03 DD F8 */	stb r0, -0x2208(r3)
/* 8025A970  98 AD 86 66 */	stb r5, struct_80450BE4+0x2(r13)
/* 8025A974  98 8D 86 3A */	stb r4, struct_80450BB8+0x2(r13)
/* 8025A978  98 AD 8B A4 */	stb r5, struct_80451124+0x0(r13)
/* 8025A97C  98 AD 8B A5 */	stb r5, struct_80451124+0x1(r13)
/* 8025A980  38 00 FF FF */	li r0, -1
/* 8025A984  98 0D 81 E4 */	stb r0, struct_80450764+0x0(r13)
/* 8025A988  88 0D 81 E5 */	lbz r0, struct_80450764+0x1(r13)
/* 8025A98C  28 00 00 00 */	cmplwi r0, 0
/* 8025A990  41 82 00 28 */	beq lbl_8025A9B8
/* 8025A994  38 7E 3E C8 */	addi r3, r30, 0x3ec8
/* 8025A998  3B 80 00 00 */	li r28, 0
/* 8025A99C  3C 80 80 3A */	lis r4, PreLoadInfoT@ha /* 0x8039A2C8@ha */
/* 8025A9A0  38 84 A2 C8 */	addi r4, r4, PreLoadInfoT@l /* 0x8039A2C8@l */
/* 8025A9A4  80 84 00 00 */	lwz r4, 0(r4)
/* 8025A9A8  48 10 DF ED */	bl strcmp
/* 8025A9AC  2C 03 00 00 */	cmpwi r3, 0
/* 8025A9B0  40 82 00 08 */	bne lbl_8025A9B8
/* 8025A9B4  9B 8D 81 E4 */	stb r28, struct_80450764+0x0(r13)
lbl_8025A9B8:
/* 8025A9B8  88 0D 81 E4 */	lbz r0, struct_80450764+0x0(r13)
/* 8025A9BC  7C 00 07 75 */	extsb. r0, r0
/* 8025A9C0  40 80 00 0C */	bge lbl_8025A9CC
/* 8025A9C4  38 60 00 04 */	li r3, 4
/* 8025A9C8  48 00 00 14 */	b lbl_8025A9DC
lbl_8025A9CC:
/* 8025A9CC  48 0E 7D 31 */	bl OSGetTime
/* 8025A9D0  90 8D 8B 94 */	stw r4, data_80451114(r13)
/* 8025A9D4  90 6D 8B 90 */	stw r3, resPreLoadTime0(r13)
/* 8025A9D8  38 60 00 02 */	li r3, 2
lbl_8025A9DC:
/* 8025A9DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8025A9E0  48 10 78 45 */	bl _restgpr_28
/* 8025A9E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025A9E8  7C 08 03 A6 */	mtlr r0
/* 8025A9EC  38 21 00 20 */	addi r1, r1, 0x20
/* 8025A9F0  4E 80 00 20 */	blr 
