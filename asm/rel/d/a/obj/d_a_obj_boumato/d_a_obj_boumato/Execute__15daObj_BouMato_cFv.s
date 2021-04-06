lbl_80BBB834:
/* 80BBB834  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80BBB838  7C 08 02 A6 */	mflr r0
/* 80BBB83C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BBB840  39 61 00 60 */	addi r11, r1, 0x60
/* 80BBB844  4B 7A 69 89 */	bl _savegpr_25
/* 80BBB848  7C 7F 1B 78 */	mr r31, r3
/* 80BBB84C  3C 60 80 BC */	lis r3, m__21daObj_BouMato_Param_c@ha /* 0x80BBC470@ha */
/* 80BBB850  3B C3 C4 70 */	addi r30, r3, m__21daObj_BouMato_Param_c@l /* 0x80BBC470@l */
/* 80BBB854  38 7F 07 6C */	addi r3, r31, 0x76c
/* 80BBB858  4B 4C 7F D9 */	bl Move__10dCcD_GSttsFv
/* 80BBB85C  8B 3F 0A 38 */	lbz r25, 0xa38(r31)
/* 80BBB860  38 00 00 01 */	li r0, 1
/* 80BBB864  98 1F 0A 38 */	stb r0, 0xa38(r31)
/* 80BBB868  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BBB86C  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80BBB870  28 04 00 FF */	cmplwi r4, 0xff
/* 80BBB874  41 82 00 24 */	beq lbl_80BBB898
/* 80BBB878  41 82 00 58 */	beq lbl_80BBB8D0
/* 80BBB87C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BBB880  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BBB884  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BBB888  7C 05 07 74 */	extsb r5, r0
/* 80BBB88C  4B 47 9A D5 */	bl isSwitch__10dSv_info_cCFii
/* 80BBB890  2C 03 00 00 */	cmpwi r3, 0
/* 80BBB894  41 82 00 3C */	beq lbl_80BBB8D0
lbl_80BBB898:
/* 80BBB898  38 60 00 3C */	li r3, 0x3c
/* 80BBB89C  4B 59 12 D1 */	bl daNpcT_chkTmpBit__FUl
/* 80BBB8A0  2C 03 00 00 */	cmpwi r3, 0
/* 80BBB8A4  40 82 00 24 */	bne lbl_80BBB8C8
/* 80BBB8A8  38 60 00 4B */	li r3, 0x4b
/* 80BBB8AC  4B 59 12 01 */	bl daNpcT_chkEvtBit__FUl
/* 80BBB8B0  2C 03 00 00 */	cmpwi r3, 0
/* 80BBB8B4  41 82 00 1C */	beq lbl_80BBB8D0
/* 80BBB8B8  38 60 00 4C */	li r3, 0x4c
/* 80BBB8BC  4B 59 11 F1 */	bl daNpcT_chkEvtBit__FUl
/* 80BBB8C0  2C 03 00 00 */	cmpwi r3, 0
/* 80BBB8C4  41 82 00 0C */	beq lbl_80BBB8D0
lbl_80BBB8C8:
/* 80BBB8C8  38 00 00 00 */	li r0, 0
/* 80BBB8CC  98 1F 0A 38 */	stb r0, 0xa38(r31)
lbl_80BBB8D0:
/* 80BBB8D0  38 00 00 00 */	li r0, 0
/* 80BBB8D4  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80BBB8D8  88 1F 0A 38 */	lbz r0, 0xa38(r31)
/* 80BBB8DC  28 00 00 01 */	cmplwi r0, 1
/* 80BBB8E0  40 82 00 14 */	bne lbl_80BBB8F4
/* 80BBB8E4  28 19 00 00 */	cmplwi r25, 0
/* 80BBB8E8  40 82 00 0C */	bne lbl_80BBB8F4
/* 80BBB8EC  7F E3 FB 78 */	mr r3, r31
/* 80BBB8F0  48 00 06 5D */	bl deleteStuckArrow__15daObj_BouMato_cFv
lbl_80BBB8F4:
/* 80BBB8F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BBB8F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BBB8FC  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80BBB900  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80BBB904  28 00 00 00 */	cmplwi r0, 0
/* 80BBB908  41 82 00 74 */	beq lbl_80BBB97C
/* 80BBB90C  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80BBB910  28 00 00 01 */	cmplwi r0, 1
/* 80BBB914  41 82 00 68 */	beq lbl_80BBB97C
/* 80BBB918  28 00 00 02 */	cmplwi r0, 2
/* 80BBB91C  40 82 00 2C */	bne lbl_80BBB948
/* 80BBB920  38 7D 40 C0 */	addi r3, r29, 0x40c0
/* 80BBB924  A8 9F 0A 30 */	lha r4, 0xa30(r31)
/* 80BBB928  4B 48 C1 51 */	bl endCheck__16dEvent_manager_cFs
/* 80BBB92C  2C 03 00 00 */	cmpwi r3, 0
/* 80BBB930  41 82 00 18 */	beq lbl_80BBB948
/* 80BBB934  38 7D 3F 90 */	addi r3, r29, 0x3f90
/* 80BBB938  4B 48 6B 31 */	bl reset__14dEvt_control_cFv
/* 80BBB93C  38 00 FF FF */	li r0, -1
/* 80BBB940  B0 1F 0A 30 */	sth r0, 0xa30(r31)
/* 80BBB944  48 00 00 38 */	b lbl_80BBB97C
lbl_80BBB948:
/* 80BBB948  3B 3D 40 C0 */	addi r25, r29, 0x40c0
/* 80BBB94C  7F 23 CB 78 */	mr r3, r25
/* 80BBB950  3C 80 80 BC */	lis r4, d_a_obj_boumato__stringBase0@ha /* 0x80BBC518@ha */
/* 80BBB954  38 84 C5 18 */	addi r4, r4, d_a_obj_boumato__stringBase0@l /* 0x80BBC518@l */
/* 80BBB958  38 84 00 0B */	addi r4, r4, 0xb
/* 80BBB95C  7F E5 FB 78 */	mr r5, r31
/* 80BBB960  38 C0 FF FF */	li r6, -1
/* 80BBB964  4B 48 C1 B9 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80BBB968  7C 64 1B 78 */	mr r4, r3
/* 80BBB96C  2C 04 FF FF */	cmpwi r4, -1
/* 80BBB970  41 82 00 0C */	beq lbl_80BBB97C
/* 80BBB974  7F 23 CB 78 */	mr r3, r25
/* 80BBB978  4B 48 C8 05 */	bl cutEnd__16dEvent_manager_cFi
lbl_80BBB97C:
/* 80BBB97C  80 7F 0A 10 */	lwz r3, 0xa10(r31)
/* 80BBB980  2C 03 00 00 */	cmpwi r3, 0
/* 80BBB984  41 82 00 0C */	beq lbl_80BBB990
/* 80BBB988  38 03 FF FF */	addi r0, r3, -1
/* 80BBB98C  90 1F 0A 10 */	stw r0, 0xa10(r31)
lbl_80BBB990:
/* 80BBB990  80 1F 0A 10 */	lwz r0, 0xa10(r31)
/* 80BBB994  2C 00 00 00 */	cmpwi r0, 0
/* 80BBB998  40 82 00 F0 */	bne lbl_80BBBA88
/* 80BBB99C  38 7F 08 08 */	addi r3, r31, 0x808
/* 80BBB9A0  4B 4C 8A C1 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80BBB9A4  28 03 00 00 */	cmplwi r3, 0
/* 80BBB9A8  41 82 00 E0 */	beq lbl_80BBBA88
/* 80BBB9AC  38 7F 08 08 */	addi r3, r31, 0x808
/* 80BBB9B0  4B 4C 8B 49 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80BBB9B4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80BBB9B8  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80BBB9BC  41 82 00 B8 */	beq lbl_80BBBA74
/* 80BBB9C0  38 7F 08 A4 */	addi r3, r31, 0x8a4
/* 80BBB9C4  4B 4C 7C C5 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 80BBB9C8  28 03 00 00 */	cmplwi r3, 0
/* 80BBB9CC  41 82 00 0C */	beq lbl_80BBB9D8
/* 80BBB9D0  80 03 00 04 */	lwz r0, 4(r3)
/* 80BBB9D4  48 00 00 08 */	b lbl_80BBB9DC
lbl_80BBB9D8:
/* 80BBB9D8  38 00 FF FF */	li r0, -1
lbl_80BBB9DC:
/* 80BBB9DC  90 1F 0A 34 */	stw r0, 0xa34(r31)
/* 80BBB9E0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BBB9E4  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80BBB9E8  28 04 00 FF */	cmplwi r4, 0xff
/* 80BBB9EC  41 82 00 3C */	beq lbl_80BBBA28
/* 80BBB9F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BBB9F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BBB9F8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BBB9FC  7C 05 07 74 */	extsb r5, r0
/* 80BBBA00  4B 47 99 61 */	bl isSwitch__10dSv_info_cCFii
/* 80BBBA04  2C 03 00 00 */	cmpwi r3, 0
/* 80BBBA08  40 82 00 20 */	bne lbl_80BBBA28
/* 80BBBA0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BBBA10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BBBA14  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BBBA18  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80BBBA1C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BBBA20  7C 05 07 74 */	extsb r5, r0
/* 80BBBA24  4B 47 97 DD */	bl onSwitch__10dSv_info_cFii
lbl_80BBBA28:
/* 80BBBA28  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BBBA2C  7C 03 07 74 */	extsb r3, r0
/* 80BBBA30  4B 47 16 3D */	bl dComIfGp_getReverb__Fi
/* 80BBBA34  7C 67 1B 78 */	mr r7, r3
/* 80BBBA38  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008017A@ha */
/* 80BBBA3C  38 03 01 7A */	addi r0, r3, 0x017A /* 0x0008017A@l */
/* 80BBBA40  90 01 00 08 */	stw r0, 8(r1)
/* 80BBBA44  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BBBA48  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BBBA4C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BBBA50  38 81 00 08 */	addi r4, r1, 8
/* 80BBBA54  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BBBA58  38 C0 00 00 */	li r6, 0
/* 80BBBA5C  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80BBBA60  FC 40 08 90 */	fmr f2, f1
/* 80BBBA64  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 80BBBA68  FC 80 18 90 */	fmr f4, f3
/* 80BBBA6C  39 00 00 00 */	li r8, 0
/* 80BBBA70  4B 6E FF 15 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BBBA74:
/* 80BBBA74  38 7F 08 A4 */	addi r3, r31, 0x8a4
/* 80BBBA78  4B 4C 7C 11 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 80BBBA7C  7C 64 1B 78 */	mr r4, r3
/* 80BBBA80  7F E3 FB 78 */	mr r3, r31
/* 80BBBA84  48 00 05 85 */	bl setSwayParam__15daObj_BouMato_cFP10fopAc_ac_c
lbl_80BBBA88:
/* 80BBBA88  7F E3 FB 78 */	mr r3, r31
/* 80BBBA8C  38 9F 07 50 */	addi r4, r31, 0x750
/* 80BBBA90  4B 45 EC 3D */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80BBBA94  38 7F 05 78 */	addi r3, r31, 0x578
/* 80BBBA98  7F A4 EB 78 */	mr r4, r29
/* 80BBBA9C  4B 4B B0 11 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80BBBAA0  80 1F 06 54 */	lwz r0, 0x654(r31)
/* 80BBBAA4  90 1F 07 CC */	stw r0, 0x7cc(r31)
/* 80BBBAA8  80 1F 06 58 */	lwz r0, 0x658(r31)
/* 80BBBAAC  90 1F 07 D0 */	stw r0, 0x7d0(r31)
/* 80BBBAB0  80 1F 06 5C */	lwz r0, 0x65c(r31)
/* 80BBBAB4  90 1F 07 D4 */	stw r0, 0x7d4(r31)
/* 80BBBAB8  88 1F 06 60 */	lbz r0, 0x660(r31)
/* 80BBBABC  98 1F 07 D8 */	stb r0, 0x7d8(r31)
/* 80BBBAC0  A0 1F 06 68 */	lhz r0, 0x668(r31)
/* 80BBBAC4  B0 1F 07 E0 */	sth r0, 0x7e0(r31)
/* 80BBBAC8  A0 1F 06 6A */	lhz r0, 0x66a(r31)
/* 80BBBACC  B0 1F 07 E2 */	sth r0, 0x7e2(r31)
/* 80BBBAD0  80 1F 06 6C */	lwz r0, 0x66c(r31)
/* 80BBBAD4  90 1F 07 E4 */	stw r0, 0x7e4(r31)
/* 80BBBAD8  80 1F 06 70 */	lwz r0, 0x670(r31)
/* 80BBBADC  90 1F 07 E8 */	stw r0, 0x7e8(r31)
/* 80BBBAE0  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 80BBBAE4  D0 1F 07 F0 */	stfs f0, 0x7f0(r31)
/* 80BBBAE8  C0 1F 06 7C */	lfs f0, 0x67c(r31)
/* 80BBBAEC  D0 1F 07 F4 */	stfs f0, 0x7f4(r31)
/* 80BBBAF0  C0 1F 06 80 */	lfs f0, 0x680(r31)
/* 80BBBAF4  D0 1F 07 F8 */	stfs f0, 0x7f8(r31)
/* 80BBBAF8  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 80BBBAFC  90 1F 07 FC */	stw r0, 0x7fc(r31)
/* 80BBBB00  C0 1F 06 88 */	lfs f0, 0x688(r31)
/* 80BBBB04  D0 1F 08 00 */	stfs f0, 0x800(r31)
/* 80BBBB08  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 80BBBB0C  90 1F 08 04 */	stw r0, 0x804(r31)
/* 80BBBB10  C0 1F 06 10 */	lfs f0, 0x610(r31)
/* 80BBBB14  D0 1F 0A 14 */	stfs f0, 0xa14(r31)
/* 80BBBB18  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80BBBB1C  C0 1F 0A 14 */	lfs f0, 0xa14(r31)
/* 80BBBB20  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80BBBB24  41 82 00 14 */	beq lbl_80BBBB38
/* 80BBBB28  7F E3 FB 78 */	mr r3, r31
/* 80BBBB2C  48 00 06 71 */	bl setEnvTevColor__15daObj_BouMato_cFv
/* 80BBBB30  7F E3 FB 78 */	mr r3, r31
/* 80BBBB34  48 00 06 C5 */	bl setRoomNo__15daObj_BouMato_cFv
lbl_80BBBB38:
/* 80BBBB38  3B 80 00 00 */	li r28, 0
/* 80BBBB3C  3B 60 00 00 */	li r27, 0
/* 80BBBB40  3B 40 00 00 */	li r26, 0
/* 80BBBB44  3B 20 00 00 */	li r25, 0
lbl_80BBBB48:
/* 80BBBB48  88 1F 0A 39 */	lbz r0, 0xa39(r31)
/* 80BBBB4C  28 00 00 00 */	cmplwi r0, 0
/* 80BBBB50  41 82 00 84 */	beq lbl_80BBBBD4
/* 80BBBB54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BBBB58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BBBB5C  3B B9 0A 24 */	addi r29, r25, 0xa24
/* 80BBBB60  7C 9F EA AE */	lhax r4, r31, r29
/* 80BBBB64  4B 45 08 79 */	bl mDoMtx_YrotS__FPA4_fs
/* 80BBBB68  38 1A 0A 18 */	addi r0, r26, 0xa18
/* 80BBBB6C  7C 3F 04 2E */	lfsx f1, r31, r0
/* 80BBBB70  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 80BBBB74  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BBBB78  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BBBB7C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80BBBB80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BBBB84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BBBB88  38 81 00 18 */	addi r4, r1, 0x18
/* 80BBBB8C  38 A1 00 0C */	addi r5, r1, 0xc
/* 80BBBB90  4B 78 B1 DD */	bl PSMTXMultVec
/* 80BBBB94  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80BBBB98  FC 00 00 1E */	fctiwz f0, f0
/* 80BBBB9C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80BBBBA0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80BBBBA4  7C 7F DA 14 */	add r3, r31, r27
/* 80BBBBA8  B0 03 09 F8 */	sth r0, 0x9f8(r3)
/* 80BBBBAC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BBBBB0  FC 00 00 50 */	fneg f0, f0
/* 80BBBBB4  FC 00 00 1E */	fctiwz f0, f0
/* 80BBBBB8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80BBBBBC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BBBBC0  B0 03 09 FC */	sth r0, 0x9fc(r3)
/* 80BBBBC4  7C 7F EA AE */	lhax r3, r31, r29
/* 80BBBBC8  38 03 E0 00 */	addi r0, r3, -8192
/* 80BBBBCC  7C 1F EB 2E */	sthx r0, r31, r29
/* 80BBBBD0  48 00 00 98 */	b lbl_80BBBC68
lbl_80BBBBD4:
/* 80BBBBD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BBBBD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BBBBDC  A8 9F 0A 2A */	lha r4, 0xa2a(r31)
/* 80BBBBE0  4B 45 07 FD */	bl mDoMtx_YrotS__FPA4_fs
/* 80BBBBE4  3B B9 0A 24 */	addi r29, r25, 0xa24
/* 80BBBBE8  7C 1F EA AE */	lhax r0, r31, r29
/* 80BBBBEC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BBBBF0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BBBBF4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BBBBF8  7C 23 04 2E */	lfsx f1, r3, r0
/* 80BBBBFC  38 1A 0A 18 */	addi r0, r26, 0xa18
/* 80BBBC00  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80BBBC04  EC 20 00 72 */	fmuls f1, f0, f1
/* 80BBBC08  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 80BBBC0C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BBBC10  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BBBC14  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80BBBC18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BBBC1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BBBC20  38 81 00 18 */	addi r4, r1, 0x18
/* 80BBBC24  38 A1 00 0C */	addi r5, r1, 0xc
/* 80BBBC28  4B 78 B1 45 */	bl PSMTXMultVec
/* 80BBBC2C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80BBBC30  FC 00 00 1E */	fctiwz f0, f0
/* 80BBBC34  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80BBBC38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BBBC3C  7C 7F DA 14 */	add r3, r31, r27
/* 80BBBC40  B0 03 09 F8 */	sth r0, 0x9f8(r3)
/* 80BBBC44  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BBBC48  FC 00 00 50 */	fneg f0, f0
/* 80BBBC4C  FC 00 00 1E */	fctiwz f0, f0
/* 80BBBC50  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80BBBC54  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80BBBC58  B0 03 09 FC */	sth r0, 0x9fc(r3)
/* 80BBBC5C  7C 7F EA AE */	lhax r3, r31, r29
/* 80BBBC60  38 03 20 00 */	addi r0, r3, 0x2000
/* 80BBBC64  7C 1F EB 2E */	sthx r0, r31, r29
lbl_80BBBC68:
/* 80BBBC68  3B 9C 00 01 */	addi r28, r28, 1
/* 80BBBC6C  2C 1C 00 03 */	cmpwi r28, 3
/* 80BBBC70  3B 7B 00 06 */	addi r27, r27, 6
/* 80BBBC74  3B 5A 00 04 */	addi r26, r26, 4
/* 80BBBC78  3B 39 00 02 */	addi r25, r25, 2
/* 80BBBC7C  41 80 FE CC */	blt lbl_80BBBB48
/* 80BBBC80  38 7F 0A 18 */	addi r3, r31, 0xa18
/* 80BBBC84  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 80BBBC88  C0 5E 00 6C */	lfs f2, 0x6c(r30)
/* 80BBBC8C  C0 7E 00 70 */	lfs f3, 0x70(r30)
/* 80BBBC90  4B 6B 3D AD */	bl cLib_addCalc2__FPffff
/* 80BBBC94  38 7F 0A 1C */	addi r3, r31, 0xa1c
/* 80BBBC98  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 80BBBC9C  C0 5E 00 74 */	lfs f2, 0x74(r30)
/* 80BBBCA0  C0 7E 00 78 */	lfs f3, 0x78(r30)
/* 80BBBCA4  4B 6B 3D 99 */	bl cLib_addCalc2__FPffff
/* 80BBBCA8  38 7F 0A 20 */	addi r3, r31, 0xa20
/* 80BBBCAC  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 80BBBCB0  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 80BBBCB4  C0 7E 00 80 */	lfs f3, 0x80(r30)
/* 80BBBCB8  4B 6B 3D 85 */	bl cLib_addCalc2__FPffff
/* 80BBBCBC  7F E3 FB 78 */	mr r3, r31
/* 80BBBCC0  48 00 05 7D */	bl setMtx__15daObj_BouMato_cFv
/* 80BBBCC4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80BBBCC8  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80BBBCCC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80BBBCD0  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80BBBCD4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80BBBCD8  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80BBBCDC  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 80BBBCE0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80BBBCE4  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBBCE8  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80BBBCEC  C0 1F 05 50 */	lfs f0, 0x550(r31)
/* 80BBBCF0  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80BBBCF4  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 80BBBCF8  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80BBBCFC  C0 1F 05 58 */	lfs f0, 0x558(r31)
/* 80BBBD00  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80BBBD04  88 1F 0A 38 */	lbz r0, 0xa38(r31)
/* 80BBBD08  28 00 00 00 */	cmplwi r0, 0
/* 80BBBD0C  40 82 00 44 */	bne lbl_80BBBD50
/* 80BBBD10  38 7F 09 2C */	addi r3, r31, 0x92c
/* 80BBBD14  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BBBD18  4B 6B 34 C5 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80BBBD1C  38 7F 09 2C */	addi r3, r31, 0x92c
/* 80BBBD20  38 9E 00 00 */	addi r4, r30, 0
/* 80BBBD24  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 80BBBD28  4B 6B 34 D1 */	bl SetH__8cM3dGCylFf
/* 80BBBD2C  38 7F 09 2C */	addi r3, r31, 0x92c
/* 80BBBD30  38 9E 00 00 */	addi r4, r30, 0
/* 80BBBD34  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80BBBD38  4B 6B 34 C9 */	bl SetR__8cM3dGCylFf
/* 80BBBD3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BBBD40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BBBD44  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BBBD48  38 9F 08 08 */	addi r4, r31, 0x808
/* 80BBBD4C  4B 6A 8E 5D */	bl Set__4cCcSFP8cCcD_Obj
lbl_80BBBD50:
/* 80BBBD50  38 7F 08 08 */	addi r3, r31, 0x808
/* 80BBBD54  81 9F 08 44 */	lwz r12, 0x844(r31)
/* 80BBBD58  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80BBBD5C  7D 89 03 A6 */	mtctr r12
/* 80BBBD60  4E 80 04 21 */	bctrl 
/* 80BBBD64  38 60 00 01 */	li r3, 1
/* 80BBBD68  39 61 00 60 */	addi r11, r1, 0x60
/* 80BBBD6C  4B 7A 64 AD */	bl _restgpr_25
/* 80BBBD70  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80BBBD74  7C 08 03 A6 */	mtlr r0
/* 80BBBD78  38 21 00 60 */	addi r1, r1, 0x60
/* 80BBBD7C  4E 80 00 20 */	blr 
