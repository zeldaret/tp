lbl_80D2824C:
/* 80D2824C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80D28250  7C 08 02 A6 */	mflr r0
/* 80D28254  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80D28258  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80D2825C  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80D28260  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80D28264  4B 63 9F 61 */	bl _savegpr_23
/* 80D28268  7C 7F 1B 78 */	mr r31, r3
/* 80D2826C  3C 60 80 D3 */	lis r3, l_bmd_idx@ha /* 0x80D295B4@ha */
/* 80D28270  3B C3 95 B4 */	addi r30, r3, l_bmd_idx@l /* 0x80D295B4@l */
/* 80D28274  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D28278  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2827C  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 80D28280  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 80D28284  83 23 10 18 */	lwz r25, m_midnaActor__9daPy_py_c@l(r3)  /* 0x80451018@l */
/* 80D28288  3B 44 0F 38 */	addi r26, r4, 0xf38
/* 80D2828C  3B 9A 40 C0 */	addi r28, r26, 0x40c0
/* 80D28290  7F 83 E3 78 */	mr r3, r28
/* 80D28294  80 9F 05 D4 */	lwz r4, 0x5d4(r31)
/* 80D28298  3C A0 80 D3 */	lis r5, action_table@ha /* 0x80D29850@ha */
/* 80D2829C  38 A5 98 50 */	addi r5, r5, action_table@l /* 0x80D29850@l */
/* 80D282A0  38 C0 00 07 */	li r6, 7
/* 80D282A4  38 E0 00 00 */	li r7, 0
/* 80D282A8  39 00 00 00 */	li r8, 0
/* 80D282AC  4B 31 FB 65 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80D282B0  7C 7B 1B 78 */	mr r27, r3
/* 80D282B4  7F 83 E3 78 */	mr r3, r28
/* 80D282B8  80 9F 05 D4 */	lwz r4, 0x5d4(r31)
/* 80D282BC  4B 31 FA 91 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80D282C0  2C 03 00 00 */	cmpwi r3, 0
/* 80D282C4  41 82 03 5C */	beq lbl_80D28620
/* 80D282C8  28 1B 00 06 */	cmplwi r27, 6
/* 80D282CC  41 81 03 54 */	bgt lbl_80D28620
/* 80D282D0  3C 60 80 D3 */	lis r3, lit_4533@ha /* 0x80D29888@ha */
/* 80D282D4  38 63 98 88 */	addi r3, r3, lit_4533@l /* 0x80D29888@l */
/* 80D282D8  57 60 10 3A */	slwi r0, r27, 2
/* 80D282DC  7C 03 00 2E */	lwzx r0, r3, r0
/* 80D282E0  7C 09 03 A6 */	mtctr r0
/* 80D282E4  4E 80 04 20 */	bctr 
lbl_80D282E8:
/* 80D282E8  7F 83 E3 78 */	mr r3, r28
/* 80D282EC  80 9F 05 D4 */	lwz r4, 0x5d4(r31)
/* 80D282F0  3C A0 80 D3 */	lis r5, d_a_obj_warp_kbrg__stringBase0@ha /* 0x80D29688@ha */
/* 80D282F4  38 A5 96 88 */	addi r5, r5, d_a_obj_warp_kbrg__stringBase0@l /* 0x80D29688@l */
/* 80D282F8  38 A5 00 7F */	addi r5, r5, 0x7f
/* 80D282FC  38 C0 00 03 */	li r6, 3
/* 80D28300  4B 31 FD ED */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80D28304  28 03 00 00 */	cmplwi r3, 0
/* 80D28308  40 82 00 10 */	bne lbl_80D28318
/* 80D2830C  38 00 00 01 */	li r0, 1
/* 80D28310  98 1F 05 C9 */	stb r0, 0x5c9(r31)
/* 80D28314  48 00 03 0C */	b lbl_80D28620
lbl_80D28318:
/* 80D28318  80 03 00 00 */	lwz r0, 0(r3)
/* 80D2831C  98 1F 05 C9 */	stb r0, 0x5c9(r31)
/* 80D28320  48 00 03 00 */	b lbl_80D28620
lbl_80D28324:
/* 80D28324  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80D28328  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80D2832C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D28330  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80D28334  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D28338  38 00 00 00 */	li r0, 0
/* 80D2833C  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80D28340  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80D28344  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80D28348  38 00 00 01 */	li r0, 1
/* 80D2834C  98 1F 05 C8 */	stb r0, 0x5c8(r31)
/* 80D28350  7F E3 FB 78 */	mr r3, r31
/* 80D28354  48 00 09 F9 */	bl setSrcEffect__15daObjWarpKBrg_cFv
/* 80D28358  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D2835C  7C 03 07 74 */	extsb r3, r0
/* 80D28360  4B 30 4D 0D */	bl dComIfGp_getReverb__Fi
/* 80D28364  7C 67 1B 78 */	mr r7, r3
/* 80D28368  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080240@ha */
/* 80D2836C  38 03 02 40 */	addi r0, r3, 0x0240 /* 0x00080240@l */
/* 80D28370  90 01 00 28 */	stw r0, 0x28(r1)
/* 80D28374  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D28378  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D2837C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D28380  38 81 00 28 */	addi r4, r1, 0x28
/* 80D28384  38 BF 05 38 */	addi r5, r31, 0x538
/* 80D28388  38 C0 00 00 */	li r6, 0
/* 80D2838C  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80D28390  FC 40 08 90 */	fmr f2, f1
/* 80D28394  C0 7E 00 84 */	lfs f3, 0x84(r30)
/* 80D28398  FC 80 18 90 */	fmr f4, f3
/* 80D2839C  39 00 00 00 */	li r8, 0
/* 80D283A0  4B 58 35 E5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D283A4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80D283A8  28 03 00 00 */	cmplwi r3, 0
/* 80D283AC  41 82 00 1C */	beq lbl_80D283C8
/* 80D283B0  4B 53 FE 25 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80D283B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D283B8  41 82 00 10 */	beq lbl_80D283C8
/* 80D283BC  7F 43 D3 78 */	mr r3, r26
/* 80D283C0  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80D283C4  4B 34 BE 8D */	bl Release__4cBgSFP9dBgW_Base
lbl_80D283C8:
/* 80D283C8  4B 30 77 21 */	bl dComIfGp_TransportWarp_check__Fv
/* 80D283CC  2C 03 00 00 */	cmpwi r3, 0
/* 80D283D0  41 82 02 50 */	beq lbl_80D28620
/* 80D283D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D283D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D283DC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D283E0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D283E4  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D283E8  A0 84 00 66 */	lhz r4, 0x66(r4)
/* 80D283EC  4B 30 C5 A1 */	bl onEventBit__11dSv_event_cFUs
/* 80D283F0  48 00 02 30 */	b lbl_80D28620
lbl_80D283F4:
/* 80D283F4  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80D283F8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80D283FC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D28400  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80D28404  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D28408  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80D2840C  28 04 00 00 */	cmplwi r4, 0
/* 80D28410  41 82 00 10 */	beq lbl_80D28420
/* 80D28414  7F 43 D3 78 */	mr r3, r26
/* 80D28418  7F E5 FB 78 */	mr r5, r31
/* 80D2841C  4B 34 C5 ED */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80D28420:
/* 80D28420  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D28424  7C 03 07 74 */	extsb r3, r0
/* 80D28428  4B 30 4C 45 */	bl dComIfGp_getReverb__Fi
/* 80D2842C  7C 67 1B 78 */	mr r7, r3
/* 80D28430  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080243@ha */
/* 80D28434  38 03 02 43 */	addi r0, r3, 0x0243 /* 0x00080243@l */
/* 80D28438  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D2843C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D28440  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D28444  80 63 00 00 */	lwz r3, 0(r3)
/* 80D28448  38 81 00 34 */	addi r4, r1, 0x34
/* 80D2844C  38 BF 06 34 */	addi r5, r31, 0x634
/* 80D28450  38 C0 00 00 */	li r6, 0
/* 80D28454  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80D28458  FC 40 08 90 */	fmr f2, f1
/* 80D2845C  C0 7E 00 84 */	lfs f3, 0x84(r30)
/* 80D28460  FC 80 18 90 */	fmr f4, f3
/* 80D28464  39 00 00 00 */	li r8, 0
/* 80D28468  4B 58 35 1D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D2846C  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80D28470  64 00 08 00 */	oris r0, r0, 0x800
/* 80D28474  90 1D 05 70 */	stw r0, 0x570(r29)
/* 80D28478  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 80D2847C  60 00 04 00 */	ori r0, r0, 0x400
/* 80D28480  90 1D 05 78 */	stw r0, 0x578(r29)
/* 80D28484  48 00 01 9C */	b lbl_80D28620
lbl_80D28488:
/* 80D28488  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 80D2848C  A8 03 00 08 */	lha r0, 8(r3)
/* 80D28490  C8 3E 00 78 */	lfd f1, 0x78(r30)
/* 80D28494  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D28498  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80D2849C  3C 00 43 30 */	lis r0, 0x4330
/* 80D284A0  90 01 00 68 */	stw r0, 0x68(r1)
/* 80D284A4  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 80D284A8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D284AC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80D284B0  48 00 01 70 */	b lbl_80D28620
lbl_80D284B4:
/* 80D284B4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D284B8  54 00 1F 7A */	rlwinm r0, r0, 3, 0x1d, 0x1d
/* 80D284BC  3C 60 80 D3 */	lis r3, l_arcName@ha /* 0x80D29730@ha */
/* 80D284C0  38 63 97 30 */	addi r3, r3, l_arcName@l /* 0x80D29730@l */
/* 80D284C4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D284C8  38 80 00 0F */	li r4, 0xf
/* 80D284CC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D284D0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D284D4  3E E5 00 02 */	addis r23, r5, 2
/* 80D284D8  3A F7 C2 F8 */	addi r23, r23, -15624
/* 80D284DC  7E E5 BB 78 */	mr r5, r23
/* 80D284E0  38 C0 00 80 */	li r6, 0x80
/* 80D284E4  4B 31 3E 09 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D284E8  7C 78 1B 78 */	mr r24, r3
/* 80D284EC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D284F0  54 00 1F 7A */	rlwinm r0, r0, 3, 0x1d, 0x1d
/* 80D284F4  3C 60 80 D3 */	lis r3, l_arcName@ha /* 0x80D29730@ha */
/* 80D284F8  38 63 97 30 */	addi r3, r3, l_arcName@l /* 0x80D29730@l */
/* 80D284FC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D28500  38 80 00 0A */	li r4, 0xa
/* 80D28504  7E E5 BB 78 */	mr r5, r23
/* 80D28508  38 C0 00 80 */	li r6, 0x80
/* 80D2850C  4B 31 3D E1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D28510  7C 64 1B 78 */	mr r4, r3
/* 80D28514  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 80D28518  38 84 00 58 */	addi r4, r4, 0x58
/* 80D2851C  7F 05 C3 78 */	mr r5, r24
/* 80D28520  38 C0 00 00 */	li r6, 0
/* 80D28524  38 E0 00 00 */	li r7, 0
/* 80D28528  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80D2852C  39 00 00 00 */	li r8, 0
/* 80D28530  39 20 FF FF */	li r9, -1
/* 80D28534  4B 2E 51 D9 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80D28538  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80D2853C  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 80D28540  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80D28544  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80D28548  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 80D2854C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D28550  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80D28554  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D28558  48 00 00 C8 */	b lbl_80D28620
lbl_80D2855C:
/* 80D2855C  38 00 00 01 */	li r0, 1
/* 80D28560  98 1F 05 C8 */	stb r0, 0x5c8(r31)
/* 80D28564  38 00 00 23 */	li r0, 0x23
/* 80D28568  98 1F 05 C9 */	stb r0, 0x5c9(r31)
/* 80D2856C  7F E3 FB 78 */	mr r3, r31
/* 80D28570  48 00 09 2D */	bl setDstEffect__15daObjWarpKBrg_cFv
/* 80D28574  7F E3 FB 78 */	mr r3, r31
/* 80D28578  48 00 04 D9 */	bl calcObjPos__15daObjWarpKBrg_cFv
/* 80D2857C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D28580  7C 03 07 74 */	extsb r3, r0
/* 80D28584  4B 30 4A E9 */	bl dComIfGp_getReverb__Fi
/* 80D28588  7C 67 1B 78 */	mr r7, r3
/* 80D2858C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080242@ha */
/* 80D28590  38 03 02 42 */	addi r0, r3, 0x0242 /* 0x00080242@l */
/* 80D28594  90 01 00 30 */	stw r0, 0x30(r1)
/* 80D28598  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D2859C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D285A0  80 63 00 00 */	lwz r3, 0(r3)
/* 80D285A4  38 81 00 30 */	addi r4, r1, 0x30
/* 80D285A8  38 BF 06 34 */	addi r5, r31, 0x634
/* 80D285AC  38 C0 00 00 */	li r6, 0
/* 80D285B0  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80D285B4  FC 40 08 90 */	fmr f2, f1
/* 80D285B8  C0 7E 00 84 */	lfs f3, 0x84(r30)
/* 80D285BC  FC 80 18 90 */	fmr f4, f3
/* 80D285C0  39 00 00 00 */	li r8, 0
/* 80D285C4  4B 58 33 C1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D285C8  48 00 00 58 */	b lbl_80D28620
lbl_80D285CC:
/* 80D285CC  7F E3 FB 78 */	mr r3, r31
/* 80D285D0  48 00 06 41 */	bl setBindEffect__15daObjWarpKBrg_cFv
/* 80D285D4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D285D8  7C 03 07 74 */	extsb r3, r0
/* 80D285DC  4B 30 4A 91 */	bl dComIfGp_getReverb__Fi
/* 80D285E0  7C 67 1B 78 */	mr r7, r3
/* 80D285E4  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006009F@ha */
/* 80D285E8  38 03 00 9F */	addi r0, r3, 0x009F /* 0x0006009F@l */
/* 80D285EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D285F0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D285F4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D285F8  80 63 00 00 */	lwz r3, 0(r3)
/* 80D285FC  38 81 00 24 */	addi r4, r1, 0x24
/* 80D28600  38 BF 05 38 */	addi r5, r31, 0x538
/* 80D28604  38 C0 00 00 */	li r6, 0
/* 80D28608  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80D2860C  FC 40 08 90 */	fmr f2, f1
/* 80D28610  C0 7E 00 84 */	lfs f3, 0x84(r30)
/* 80D28614  FC 80 18 90 */	fmr f4, f3
/* 80D28618  39 00 00 00 */	li r8, 0
/* 80D2861C  4B 58 33 69 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D28620:
/* 80D28620  28 1B 00 06 */	cmplwi r27, 6
/* 80D28624  41 81 03 F0 */	bgt lbl_80D28A14
/* 80D28628  3C 60 80 D3 */	lis r3, lit_4535@ha /* 0x80D2986C@ha */
/* 80D2862C  38 63 98 6C */	addi r3, r3, lit_4535@l /* 0x80D2986C@l */
/* 80D28630  57 60 10 3A */	slwi r0, r27, 2
/* 80D28634  7C 03 00 2E */	lwzx r0, r3, r0
/* 80D28638  7C 09 03 A6 */	mtctr r0
/* 80D2863C  4E 80 04 20 */	bctr 
lbl_80D28640:
/* 80D28640  38 7F 05 C9 */	addi r3, r31, 0x5c9
/* 80D28644  48 00 0F 4D */	bl func_80D29590
/* 80D28648  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D2864C  40 82 03 D4 */	bne lbl_80D28A20
/* 80D28650  7F 83 E3 78 */	mr r3, r28
/* 80D28654  80 9F 05 D4 */	lwz r4, 0x5d4(r31)
/* 80D28658  4B 31 FB 25 */	bl cutEnd__16dEvent_manager_cFi
/* 80D2865C  48 00 03 C4 */	b lbl_80D28A20
lbl_80D28660:
/* 80D28660  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80D28664  4B 2E 4D C5 */	bl play__14mDoExt_baseAnmFv
/* 80D28668  7C 79 1B 78 */	mr r25, r3
/* 80D2866C  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80D28670  4B 2E 4D B9 */	bl play__14mDoExt_baseAnmFv
/* 80D28674  7F 37 18 38 */	and r23, r25, r3
/* 80D28678  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80D2867C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D28680  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80D28684  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80D28688  40 82 00 58 */	bne lbl_80D286E0
/* 80D2868C  7F E3 FB 78 */	mr r3, r31
/* 80D28690  48 00 03 C1 */	bl calcObjPos__15daObjWarpKBrg_cFv
/* 80D28694  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D28698  7C 03 07 74 */	extsb r3, r0
/* 80D2869C  4B 30 49 D1 */	bl dComIfGp_getReverb__Fi
/* 80D286A0  7C 67 1B 78 */	mr r7, r3
/* 80D286A4  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080241@ha */
/* 80D286A8  38 03 02 41 */	addi r0, r3, 0x0241 /* 0x00080241@l */
/* 80D286AC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80D286B0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D286B4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D286B8  80 63 00 00 */	lwz r3, 0(r3)
/* 80D286BC  38 81 00 2C */	addi r4, r1, 0x2c
/* 80D286C0  38 BF 06 34 */	addi r5, r31, 0x634
/* 80D286C4  38 C0 00 00 */	li r6, 0
/* 80D286C8  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80D286CC  FC 40 08 90 */	fmr f2, f1
/* 80D286D0  C0 7E 00 84 */	lfs f3, 0x84(r30)
/* 80D286D4  FC 80 18 90 */	fmr f4, f3
/* 80D286D8  39 00 00 00 */	li r8, 0
/* 80D286DC  4B 58 32 A9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D286E0:
/* 80D286E0  2C 17 00 00 */	cmpwi r23, 0
/* 80D286E4  41 82 00 10 */	beq lbl_80D286F4
/* 80D286E8  7F 83 E3 78 */	mr r3, r28
/* 80D286EC  80 9F 05 D4 */	lwz r4, 0x5d4(r31)
/* 80D286F0  4B 31 FA 8D */	bl cutEnd__16dEvent_manager_cFi
lbl_80D286F4:
/* 80D286F4  7F E3 FB 78 */	mr r3, r31
/* 80D286F8  48 00 08 F5 */	bl followSrcEffect__15daObjWarpKBrg_cFv
/* 80D286FC  48 00 03 24 */	b lbl_80D28A20
lbl_80D28700:
/* 80D28700  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80D28704  4B 2E 4D 25 */	bl play__14mDoExt_baseAnmFv
/* 80D28708  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80D2870C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D28710  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80D28714  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80D28718  40 82 00 2C */	bne lbl_80D28744
/* 80D2871C  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 80D28720  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80D28724  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80D28728  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80D2872C  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80D28730  38 7A 4C 9C */	addi r3, r26, 0x4c9c
/* 80D28734  38 80 00 08 */	li r4, 8
/* 80D28738  38 A0 00 1F */	li r5, 0x1f
/* 80D2873C  38 C1 00 40 */	addi r6, r1, 0x40
/* 80D28740  4B 34 72 E5 */	bl StartShock__12dVibration_cFii4cXyz
lbl_80D28744:
/* 80D28744  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80D28748  4B 2E 4C E1 */	bl play__14mDoExt_baseAnmFv
/* 80D2874C  2C 03 00 00 */	cmpwi r3, 0
/* 80D28750  41 82 00 44 */	beq lbl_80D28794
/* 80D28754  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80D28758  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80D2875C  90 1D 05 70 */	stw r0, 0x570(r29)
/* 80D28760  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 80D28764  54 00 05 A8 */	rlwinm r0, r0, 0, 0x16, 0x14
/* 80D28768  90 1D 05 78 */	stw r0, 0x578(r29)
/* 80D2876C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D28770  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D28774  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D28778  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D2877C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D28780  7C 05 07 74 */	extsb r5, r0
/* 80D28784  4B 30 CA 7D */	bl onSwitch__10dSv_info_cFii
/* 80D28788  7F 83 E3 78 */	mr r3, r28
/* 80D2878C  80 9F 05 D4 */	lwz r4, 0x5d4(r31)
/* 80D28790  4B 31 F9 ED */	bl cutEnd__16dEvent_manager_cFi
lbl_80D28794:
/* 80D28794  7F E3 FB 78 */	mr r3, r31
/* 80D28798  48 00 09 11 */	bl followDstEffect__15daObjWarpKBrg_cFv
/* 80D2879C  7F E3 FB 78 */	mr r3, r31
/* 80D287A0  48 00 02 B1 */	bl calcObjPos__15daObjWarpKBrg_cFv
/* 80D287A4  48 00 02 7C */	b lbl_80D28A20
lbl_80D287A8:
/* 80D287A8  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 80D287AC  4B 2E 4C 7D */	bl play__14mDoExt_baseAnmFv
/* 80D287B0  2C 03 00 00 */	cmpwi r3, 0
/* 80D287B4  41 82 00 10 */	beq lbl_80D287C4
/* 80D287B8  7F 83 E3 78 */	mr r3, r28
/* 80D287BC  80 9F 05 D4 */	lwz r4, 0x5d4(r31)
/* 80D287C0  4B 31 F9 BD */	bl cutEnd__16dEvent_manager_cFi
lbl_80D287C4:
/* 80D287C4  7F E3 FB 78 */	mr r3, r31
/* 80D287C8  48 00 0A 35 */	bl endDstEffect__15daObjWarpKBrg_cFv
/* 80D287CC  48 00 02 54 */	b lbl_80D28A20
lbl_80D287D0:
/* 80D287D0  38 7F 05 C9 */	addi r3, r31, 0x5c9
/* 80D287D4  48 00 0D BD */	bl func_80D29590
/* 80D287D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D287DC  40 82 00 10 */	bne lbl_80D287EC
/* 80D287E0  7F 83 E3 78 */	mr r3, r28
/* 80D287E4  80 9F 05 D4 */	lwz r4, 0x5d4(r31)
/* 80D287E8  4B 31 F9 95 */	bl cutEnd__16dEvent_manager_cFi
lbl_80D287EC:
/* 80D287EC  7F E3 FB 78 */	mr r3, r31
/* 80D287F0  48 00 08 B9 */	bl followDstEffect__15daObjWarpKBrg_cFv
/* 80D287F4  48 00 02 2C */	b lbl_80D28A20
lbl_80D287F8:
/* 80D287F8  80 79 05 74 */	lwz r3, 0x574(r25)
/* 80D287FC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80D28800  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80D28804  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80D28808  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D2880C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D28810  4B 61 DC A1 */	bl PSMTXCopy
/* 80D28814  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80D28818  C0 5E 00 AC */	lfs f2, 0xac(r30)
/* 80D2881C  C0 7E 00 B0 */	lfs f3, 0xb0(r30)
/* 80D28820  4B 2E 45 7D */	bl transM__14mDoMtx_stack_cFfff
/* 80D28824  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D28828  3B 23 D4 70 */	addi r25, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D2882C  C0 19 00 0C */	lfs f0, 0xc(r25)
/* 80D28830  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80D28834  C0 19 00 1C */	lfs f0, 0x1c(r25)
/* 80D28838  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80D2883C  C0 19 00 2C */	lfs f0, 0x2c(r25)
/* 80D28840  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80D28844  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80D28848  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80D2884C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80D28850  7F 24 CB 78 */	mr r4, r25
/* 80D28854  4B 61 DC 5D */	bl PSMTXCopy
/* 80D28858  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 80D2885C  C0 5E 00 B4 */	lfs f2, 0xb4(r30)
/* 80D28860  FC 60 08 90 */	fmr f3, f1
/* 80D28864  4B 2E 45 39 */	bl transM__14mDoMtx_stack_cFfff
/* 80D28868  C0 19 00 0C */	lfs f0, 0xc(r25)
/* 80D2886C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80D28870  C0 19 00 1C */	lfs f0, 0x1c(r25)
/* 80D28874  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80D28878  C0 19 00 2C */	lfs f0, 0x2c(r25)
/* 80D2887C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80D28880  38 61 00 58 */	addi r3, r1, 0x58
/* 80D28884  38 81 00 4C */	addi r4, r1, 0x4c
/* 80D28888  4B 54 83 7D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80D2888C  B0 61 00 3A */	sth r3, 0x3a(r1)
/* 80D28890  38 61 00 4C */	addi r3, r1, 0x4c
/* 80D28894  38 81 00 58 */	addi r4, r1, 0x58
/* 80D28898  4B 54 83 DD */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80D2889C  B0 61 00 38 */	sth r3, 0x38(r1)
/* 80D288A0  38 00 00 00 */	li r0, 0
/* 80D288A4  B0 01 00 3C */	sth r0, 0x3c(r1)
/* 80D288A8  38 61 00 58 */	addi r3, r1, 0x58
/* 80D288AC  38 81 00 4C */	addi r4, r1, 0x4c
/* 80D288B0  4B 61 EA ED */	bl PSVECSquareDistance
/* 80D288B4  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80D288B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D288BC  40 81 00 58 */	ble lbl_80D28914
/* 80D288C0  FC 00 08 34 */	frsqrte f0, f1
/* 80D288C4  C8 9E 00 88 */	lfd f4, 0x88(r30)
/* 80D288C8  FC 44 00 32 */	fmul f2, f4, f0
/* 80D288CC  C8 7E 00 90 */	lfd f3, 0x90(r30)
/* 80D288D0  FC 00 00 32 */	fmul f0, f0, f0
/* 80D288D4  FC 01 00 32 */	fmul f0, f1, f0
/* 80D288D8  FC 03 00 28 */	fsub f0, f3, f0
/* 80D288DC  FC 02 00 32 */	fmul f0, f2, f0
/* 80D288E0  FC 44 00 32 */	fmul f2, f4, f0
/* 80D288E4  FC 00 00 32 */	fmul f0, f0, f0
/* 80D288E8  FC 01 00 32 */	fmul f0, f1, f0
/* 80D288EC  FC 03 00 28 */	fsub f0, f3, f0
/* 80D288F0  FC 02 00 32 */	fmul f0, f2, f0
/* 80D288F4  FC 44 00 32 */	fmul f2, f4, f0
/* 80D288F8  FC 00 00 32 */	fmul f0, f0, f0
/* 80D288FC  FC 01 00 32 */	fmul f0, f1, f0
/* 80D28900  FC 03 00 28 */	fsub f0, f3, f0
/* 80D28904  FC 02 00 32 */	fmul f0, f2, f0
/* 80D28908  FC 21 00 32 */	fmul f1, f1, f0
/* 80D2890C  FC 20 08 18 */	frsp f1, f1
/* 80D28910  48 00 00 88 */	b lbl_80D28998
lbl_80D28914:
/* 80D28914  C8 1E 00 98 */	lfd f0, 0x98(r30)
/* 80D28918  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D2891C  40 80 00 10 */	bge lbl_80D2892C
/* 80D28920  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D28924  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D28928  48 00 00 70 */	b lbl_80D28998
lbl_80D2892C:
/* 80D2892C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80D28930  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80D28934  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D28938  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D2893C  7C 03 00 00 */	cmpw r3, r0
/* 80D28940  41 82 00 14 */	beq lbl_80D28954
/* 80D28944  40 80 00 40 */	bge lbl_80D28984
/* 80D28948  2C 03 00 00 */	cmpwi r3, 0
/* 80D2894C  41 82 00 20 */	beq lbl_80D2896C
/* 80D28950  48 00 00 34 */	b lbl_80D28984
lbl_80D28954:
/* 80D28954  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D28958  41 82 00 0C */	beq lbl_80D28964
/* 80D2895C  38 00 00 01 */	li r0, 1
/* 80D28960  48 00 00 28 */	b lbl_80D28988
lbl_80D28964:
/* 80D28964  38 00 00 02 */	li r0, 2
/* 80D28968  48 00 00 20 */	b lbl_80D28988
lbl_80D2896C:
/* 80D2896C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D28970  41 82 00 0C */	beq lbl_80D2897C
/* 80D28974  38 00 00 05 */	li r0, 5
/* 80D28978  48 00 00 10 */	b lbl_80D28988
lbl_80D2897C:
/* 80D2897C  38 00 00 03 */	li r0, 3
/* 80D28980  48 00 00 08 */	b lbl_80D28988
lbl_80D28984:
/* 80D28984  38 00 00 04 */	li r0, 4
lbl_80D28988:
/* 80D28988  2C 00 00 01 */	cmpwi r0, 1
/* 80D2898C  40 82 00 0C */	bne lbl_80D28998
/* 80D28990  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D28994  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80D28998:
/* 80D28998  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 80D2899C  EF E0 00 72 */	fmuls f31, f0, f1
/* 80D289A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D289A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D289A8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80D289AC  38 80 00 00 */	li r4, 0
/* 80D289B0  90 81 00 08 */	stw r4, 8(r1)
/* 80D289B4  38 00 FF FF */	li r0, -1
/* 80D289B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D289BC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D289C0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D289C4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D289C8  38 80 00 00 */	li r4, 0
/* 80D289CC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008B53@ha */
/* 80D289D0  38 A5 8B 53 */	addi r5, r5, 0x8B53 /* 0x00008B53@l */
/* 80D289D4  38 C1 00 58 */	addi r6, r1, 0x58
/* 80D289D8  38 E0 00 00 */	li r7, 0
/* 80D289DC  39 01 00 38 */	addi r8, r1, 0x38
/* 80D289E0  39 20 00 00 */	li r9, 0
/* 80D289E4  39 40 00 FF */	li r10, 0xff
/* 80D289E8  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80D289EC  4B 32 40 A5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D289F0  28 03 00 00 */	cmplwi r3, 0
/* 80D289F4  41 82 00 08 */	beq lbl_80D289FC
/* 80D289F8  D3 E3 00 B4 */	stfs f31, 0xb4(r3)
lbl_80D289FC:
/* 80D289FC  7F E3 FB 78 */	mr r3, r31
/* 80D28A00  48 00 02 DD */	bl followBindEffect__15daObjWarpKBrg_cFv
/* 80D28A04  7F 83 E3 78 */	mr r3, r28
/* 80D28A08  80 9F 05 D4 */	lwz r4, 0x5d4(r31)
/* 80D28A0C  4B 31 F7 71 */	bl cutEnd__16dEvent_manager_cFi
/* 80D28A10  48 00 00 10 */	b lbl_80D28A20
lbl_80D28A14:
/* 80D28A14  7F 83 E3 78 */	mr r3, r28
/* 80D28A18  80 9F 05 D4 */	lwz r4, 0x5d4(r31)
/* 80D28A1C  4B 31 F7 61 */	bl cutEnd__16dEvent_manager_cFi
lbl_80D28A20:
/* 80D28A20  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80D28A24  28 03 00 00 */	cmplwi r3, 0
/* 80D28A28  41 82 00 08 */	beq lbl_80D28A30
/* 80D28A2C  4B 2E 49 FD */	bl play__14mDoExt_baseAnmFv
lbl_80D28A30:
/* 80D28A30  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80D28A34  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80D28A38  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80D28A3C  4B 63 97 D5 */	bl _restgpr_23
/* 80D28A40  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80D28A44  7C 08 03 A6 */	mtlr r0
/* 80D28A48  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80D28A4C  4E 80 00 20 */	blr 
