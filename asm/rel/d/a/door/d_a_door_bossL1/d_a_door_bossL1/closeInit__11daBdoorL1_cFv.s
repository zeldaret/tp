lbl_804E3850:
/* 804E3850  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E3854  7C 08 02 A6 */	mflr r0
/* 804E3858  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E385C  39 61 00 30 */	addi r11, r1, 0x30
/* 804E3860  4B E7 E9 7D */	bl _savegpr_29
/* 804E3864  7C 7E 1B 78 */	mr r30, r3
/* 804E3868  3C 80 80 4E */	lis r4, l_staff_name@ha /* 0x804E4A14@ha */
/* 804E386C  3B E4 4A 14 */	addi r31, r4, l_staff_name@l /* 0x804E4A14@l */
/* 804E3870  4B FF E8 E9 */	bl getCloseAnm__11daBdoorL1_cFv
/* 804E3874  7C 7D 1B 78 */	mr r29, r3
/* 804E3878  7F C3 F3 78 */	mr r3, r30
/* 804E387C  4B FF E7 E5 */	bl getAnmArcName__11daBdoorL1_cFv
/* 804E3880  7F A4 EB 78 */	mr r4, r29
/* 804E3884  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E3888  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E388C  3C A5 00 02 */	addis r5, r5, 2
/* 804E3890  38 C0 00 80 */	li r6, 0x80
/* 804E3894  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804E3898  4B B5 8A 55 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804E389C  7C 64 1B 78 */	mr r4, r3
/* 804E38A0  80 7E 05 88 */	lwz r3, 0x588(r30)
/* 804E38A4  38 A0 00 01 */	li r5, 1
/* 804E38A8  38 C0 00 00 */	li r6, 0
/* 804E38AC  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804E38B0  38 E0 00 00 */	li r7, 0
/* 804E38B4  39 00 FF FF */	li r8, -1
/* 804E38B8  39 20 00 01 */	li r9, 1
/* 804E38BC  4B B2 9F 21 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 804E38C0  4B FF E4 D9 */	bl getNowLevel__Fv
/* 804E38C4  2C 03 00 08 */	cmpwi r3, 8
/* 804E38C8  41 82 00 2C */	beq lbl_804E38F4
/* 804E38CC  40 80 00 1C */	bge lbl_804E38E8
/* 804E38D0  2C 03 00 05 */	cmpwi r3, 5
/* 804E38D4  41 82 00 C0 */	beq lbl_804E3994
/* 804E38D8  40 80 00 6C */	bge lbl_804E3944
/* 804E38DC  2C 03 00 04 */	cmpwi r3, 4
/* 804E38E0  40 80 00 64 */	bge lbl_804E3944
/* 804E38E4  48 00 00 B0 */	b lbl_804E3994
lbl_804E38E8:
/* 804E38E8  2C 03 00 0A */	cmpwi r3, 0xa
/* 804E38EC  40 80 00 A8 */	bge lbl_804E3994
/* 804E38F0  48 00 00 54 */	b lbl_804E3944
lbl_804E38F4:
/* 804E38F4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804E38F8  7C 03 07 74 */	extsb r3, r0
/* 804E38FC  4B B4 97 71 */	bl dComIfGp_getReverb__Fi
/* 804E3900  7C 67 1B 78 */	mr r7, r3
/* 804E3904  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008021A@ha */
/* 804E3908  38 03 02 1A */	addi r0, r3, 0x021A /* 0x0008021A@l */
/* 804E390C  90 01 00 08 */	stw r0, 8(r1)
/* 804E3910  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804E3914  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804E3918  80 63 00 00 */	lwz r3, 0(r3)
/* 804E391C  38 81 00 08 */	addi r4, r1, 8
/* 804E3920  38 BE 05 38 */	addi r5, r30, 0x538
/* 804E3924  38 C0 00 00 */	li r6, 0
/* 804E3928  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804E392C  FC 40 08 90 */	fmr f2, f1
/* 804E3930  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 804E3934  FC 80 18 90 */	fmr f4, f3
/* 804E3938  39 00 00 00 */	li r8, 0
/* 804E393C  4B DC 80 49 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804E3940  48 00 00 A0 */	b lbl_804E39E0
lbl_804E3944:
/* 804E3944  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804E3948  7C 03 07 74 */	extsb r3, r0
/* 804E394C  4B B4 97 21 */	bl dComIfGp_getReverb__Fi
/* 804E3950  7C 67 1B 78 */	mr r7, r3
/* 804E3954  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080192@ha */
/* 804E3958  38 03 01 92 */	addi r0, r3, 0x0192 /* 0x00080192@l */
/* 804E395C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E3960  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804E3964  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804E3968  80 63 00 00 */	lwz r3, 0(r3)
/* 804E396C  38 81 00 10 */	addi r4, r1, 0x10
/* 804E3970  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 804E3974  38 C0 00 00 */	li r6, 0
/* 804E3978  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804E397C  FC 40 08 90 */	fmr f2, f1
/* 804E3980  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 804E3984  FC 80 18 90 */	fmr f4, f3
/* 804E3988  39 00 00 00 */	li r8, 0
/* 804E398C  4B DC 7F F9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804E3990  48 00 00 50 */	b lbl_804E39E0
lbl_804E3994:
/* 804E3994  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804E3998  7C 03 07 74 */	extsb r3, r0
/* 804E399C  4B B4 96 D1 */	bl dComIfGp_getReverb__Fi
/* 804E39A0  7C 67 1B 78 */	mr r7, r3
/* 804E39A4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800B3@ha */
/* 804E39A8  38 03 00 B3 */	addi r0, r3, 0x00B3 /* 0x000800B3@l */
/* 804E39AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E39B0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804E39B4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804E39B8  80 63 00 00 */	lwz r3, 0(r3)
/* 804E39BC  38 81 00 0C */	addi r4, r1, 0xc
/* 804E39C0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 804E39C4  38 C0 00 00 */	li r6, 0
/* 804E39C8  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804E39CC  FC 40 08 90 */	fmr f2, f1
/* 804E39D0  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 804E39D4  FC 80 18 90 */	fmr f4, f3
/* 804E39D8  39 00 00 00 */	li r8, 0
/* 804E39DC  4B DC 7F A9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_804E39E0:
/* 804E39E0  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 804E39E4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804E39E8  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804E39EC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804E39F0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 804E39F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E39F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E39FC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804E3A00  38 80 00 04 */	li r4, 4
/* 804E3A04  38 A0 00 0F */	li r5, 0xf
/* 804E3A08  38 C1 00 14 */	addi r6, r1, 0x14
/* 804E3A0C  4B B8 C1 05 */	bl StartQuake__12dVibration_cFii4cXyz
/* 804E3A10  38 60 00 01 */	li r3, 1
/* 804E3A14  39 61 00 30 */	addi r11, r1, 0x30
/* 804E3A18  4B E7 E8 11 */	bl _restgpr_29
/* 804E3A1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E3A20  7C 08 03 A6 */	mtlr r0
/* 804E3A24  38 21 00 30 */	addi r1, r1, 0x30
/* 804E3A28  4E 80 00 20 */	blr 
