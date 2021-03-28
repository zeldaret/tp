lbl_80493838:
/* 80493838  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049383C  7C 08 02 A6 */	mflr r0
/* 80493840  90 01 00 24 */	stw r0, 0x24(r1)
/* 80493844  39 61 00 20 */	addi r11, r1, 0x20
/* 80493848  4B EC E9 94 */	b _savegpr_29
/* 8049384C  7C 7E 1B 78 */	mr r30, r3
/* 80493850  3C 60 80 49 */	lis r3, l_cull_size_box@ha
/* 80493854  3B E3 61 D4 */	addi r31, r3, l_cull_size_box@l
/* 80493858  38 00 00 00 */	li r0, 0
/* 8049385C  98 1E 09 7E */	stb r0, 0x97e(r30)
/* 80493860  88 1E 07 18 */	lbz r0, 0x718(r30)
/* 80493864  28 00 00 00 */	cmplwi r0, 0
/* 80493868  40 82 00 34 */	bne lbl_8049389C
/* 8049386C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80493870  54 04 D6 BE */	rlwinm r4, r0, 0x1a, 0x1a, 0x1f
/* 80493874  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80493878  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8049387C  38 63 09 58 */	addi r3, r3, 0x958
/* 80493880  4B BA 0F 20 */	b onTbox__12dSv_memBit_cFi
/* 80493884  7F C3 F3 78 */	mr r3, r30
/* 80493888  4B FF DB 95 */	bl setDzb__8daTbox_cFv
/* 8049388C  80 7E 07 3C */	lwz r3, 0x73c(r30)
/* 80493890  28 03 00 00 */	cmplwi r3, 0
/* 80493894  41 82 00 08 */	beq lbl_8049389C
/* 80493898  4B BE 81 28 */	b Move__4dBgWFv
lbl_8049389C:
/* 8049389C  7F C3 F3 78 */	mr r3, r30
/* 804938A0  4B FF DD 1D */	bl checkEnvEffectTbox__8daTbox_cFv
/* 804938A4  2C 03 00 00 */	cmpwi r3, 0
/* 804938A8  41 82 00 90 */	beq lbl_80493938
/* 804938AC  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804938B0  D0 1E 09 F0 */	stfs f0, 0x9f0(r30)
/* 804938B4  C0 3E 09 F0 */	lfs f1, 0x9f0(r30)
/* 804938B8  4B D1 51 8C */	b dKy_set_allcol_ratio__Ff
/* 804938BC  A0 1E 07 54 */	lhz r0, 0x754(r30)
/* 804938C0  60 00 00 08 */	ori r0, r0, 8
/* 804938C4  B0 1E 07 54 */	sth r0, 0x754(r30)
/* 804938C8  38 7E 09 D0 */	addi r3, r30, 0x9d0
/* 804938CC  4B D1 40 B0 */	b dKy_efplight_set__FP15LIGHT_INFLUENCE
/* 804938D0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 804938D4  54 00 67 3E */	rlwinm r0, r0, 0xc, 0x1c, 0x1f
/* 804938D8  2C 00 00 01 */	cmpwi r0, 1
/* 804938DC  40 82 00 5C */	bne lbl_80493938
/* 804938E0  7F C3 F3 78 */	mr r3, r30
/* 804938E4  4B FF D5 6D */	bl getModelInfo__8daTbox_cFv
/* 804938E8  80 63 00 00 */	lwz r3, 0(r3)
/* 804938EC  38 80 00 09 */	li r4, 9
/* 804938F0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 804938F4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 804938F8  3C A5 00 02 */	addis r5, r5, 2
/* 804938FC  38 C0 00 80 */	li r6, 0x80
/* 80493900  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80493904  4B BA 89 E8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80493908  7C 64 1B 78 */	mr r4, r3
/* 8049390C  80 7E 07 2C */	lwz r3, 0x72c(r30)
/* 80493910  38 A0 00 01 */	li r5, 1
/* 80493914  38 C0 00 00 */	li r6, 0
/* 80493918  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8049391C  38 E0 00 00 */	li r7, 0
/* 80493920  A9 04 00 06 */	lha r8, 6(r4)
/* 80493924  39 20 00 01 */	li r9, 1
/* 80493928  4B B7 9E B4 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 8049392C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080021@ha */
/* 80493930  38 03 00 21 */	addi r0, r3, 0x0021 /* 0x00080021@l */
/* 80493934  90 1E 09 F8 */	stw r0, 0x9f8(r30)
lbl_80493938:
/* 80493938  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8049393C  80 7E 07 2C */	lwz r3, 0x72c(r30)
/* 80493940  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80493944  83 BE 09 F8 */	lwz r29, 0x9f8(r30)
/* 80493948  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8049394C  7C 03 07 74 */	extsb r3, r0
/* 80493950  4B B9 97 1C */	b dComIfGp_getReverb__Fi
/* 80493954  7C 67 1B 78 */	mr r7, r3
/* 80493958  93 A1 00 08 */	stw r29, 8(r1)
/* 8049395C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80493960  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80493964  80 63 00 00 */	lwz r3, 0(r3)
/* 80493968  38 81 00 08 */	addi r4, r1, 8
/* 8049396C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80493970  38 C0 00 00 */	li r6, 0
/* 80493974  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80493978  FC 40 08 90 */	fmr f2, f1
/* 8049397C  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80493980  FC 80 18 90 */	fmr f4, f3
/* 80493984  39 00 00 00 */	li r8, 0
/* 80493988  4B E1 7F FC */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8049398C  39 61 00 20 */	addi r11, r1, 0x20
/* 80493990  4B EC E8 98 */	b _restgpr_29
/* 80493994  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80493998  7C 08 03 A6 */	mtlr r0
/* 8049399C  38 21 00 20 */	addi r1, r1, 0x20
/* 804939A0  4E 80 00 20 */	blr 
