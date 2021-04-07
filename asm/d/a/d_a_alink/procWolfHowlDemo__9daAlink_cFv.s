lbl_80130BC4:
/* 80130BC4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80130BC8  7C 08 02 A6 */	mflr r0
/* 80130BCC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80130BD0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80130BD4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80130BD8  39 61 00 40 */	addi r11, r1, 0x40
/* 80130BDC  48 23 15 F1 */	bl _savegpr_25
/* 80130BE0  7C 7F 1B 78 */	mr r31, r3
/* 80130BE4  3B BF 1F D0 */	addi r29, r31, 0x1fd0
/* 80130BE8  83 83 28 10 */	lwz r28, 0x2810(r3)
/* 80130BEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80130BF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80130BF4  3B C3 4E C8 */	addi r30, r3, 0x4ec8
/* 80130BF8  A0 03 4F A2 */	lhz r0, 0x4fa2(r3)
/* 80130BFC  54 03 07 38 */	rlwinm r3, r0, 0, 0x1c, 0x1c
/* 80130C00  30 03 FF FF */	addic r0, r3, -1
/* 80130C04  7C 00 19 10 */	subfe r0, r0, r3
/* 80130C08  54 1B 06 3F */	clrlwi. r27, r0, 0x18
/* 80130C0C  41 82 00 0C */	beq lbl_80130C18
/* 80130C10  38 7F 2D 84 */	addi r3, r31, 0x2d84
/* 80130C14  48 19 AF 45 */	bl skipCorrectDemo__13Z2WolfHowlMgrFv
lbl_80130C18:
/* 80130C18  7F E3 FB 78 */	mr r3, r31
/* 80130C1C  80 9F 32 CC */	lwz r4, 0x32cc(r31)
/* 80130C20  4B FE 7B 95 */	bl checkEndMessage__9daAlink_cFUl
/* 80130C24  2C 03 00 00 */	cmpwi r3, 0
/* 80130C28  40 82 00 20 */	bne lbl_80130C48
/* 80130C2C  2C 1B 00 00 */	cmpwi r27, 0
/* 80130C30  41 82 00 4C */	beq lbl_80130C7C
/* 80130C34  80 1F 32 CC */	lwz r0, 0x32cc(r31)
/* 80130C38  28 00 05 35 */	cmplwi r0, 0x535
/* 80130C3C  41 82 00 0C */	beq lbl_80130C48
/* 80130C40  28 00 05 32 */	cmplwi r0, 0x532
/* 80130C44  40 82 00 38 */	bne lbl_80130C7C
lbl_80130C48:
/* 80130C48  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 80130C4C  2C 00 00 00 */	cmpwi r0, 0
/* 80130C50  40 82 00 78 */	bne lbl_80130CC8
/* 80130C54  7F E3 FB 78 */	mr r3, r31
/* 80130C58  4B FE 70 39 */	bl resetSpecialEvent__9daAlink_cFv
/* 80130C5C  38 00 00 00 */	li r0, 0
/* 80130C60  B0 1F 30 B2 */	sth r0, 0x30b2(r31)
/* 80130C64  B0 1F 30 B0 */	sth r0, 0x30b0(r31)
/* 80130C68  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80130C6C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80130C70  48 18 52 65 */	bl taktModeMuteOff__8Z2SeqMgrFv
/* 80130C74  38 60 00 01 */	li r3, 1
/* 80130C78  48 00 06 30 */	b lbl_801312A8
lbl_80130C7C:
/* 80130C7C  80 1F 32 CC */	lwz r0, 0x32cc(r31)
/* 80130C80  28 00 05 35 */	cmplwi r0, 0x535
/* 80130C84  41 82 00 0C */	beq lbl_80130C90
/* 80130C88  28 00 05 32 */	cmplwi r0, 0x532
/* 80130C8C  40 82 00 3C */	bne lbl_80130CC8
lbl_80130C90:
/* 80130C90  7F E3 FB 78 */	mr r3, r31
/* 80130C94  38 80 00 5F */	li r4, 0x5f
/* 80130C98  4B FF 7B 75 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 80130C9C  2C 03 00 00 */	cmpwi r3, 0
/* 80130CA0  41 82 00 20 */	beq lbl_80130CC0
/* 80130CA4  7F A3 EB 78 */	mr r3, r29
/* 80130CA8  48 02 D8 25 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80130CAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80130CB0  41 82 00 10 */	beq lbl_80130CC0
/* 80130CB4  7F E3 FB 78 */	mr r3, r31
/* 80130CB8  38 80 00 80 */	li r4, 0x80
/* 80130CBC  4B FF 89 BD */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
lbl_80130CC0:
/* 80130CC0  38 60 00 01 */	li r3, 1
/* 80130CC4  48 00 05 E4 */	b lbl_801312A8
lbl_80130CC8:
/* 80130CC8  C0 3F 34 7C */	lfs f1, 0x347c(r31)
/* 80130CCC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80130CD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80130CD4  40 80 00 64 */	bge lbl_80130D38
/* 80130CD8  7F A3 EB 78 */	mr r3, r29
/* 80130CDC  48 02 D7 F1 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80130CE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80130CE4  41 82 05 C0 */	beq lbl_801312A4
/* 80130CE8  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 80130CEC  2C 00 00 00 */	cmpwi r0, 0
/* 80130CF0  41 82 00 20 */	beq lbl_80130D10
/* 80130CF4  7F E3 FB 78 */	mr r3, r31
/* 80130CF8  38 80 00 8C */	li r4, 0x8c
/* 80130CFC  4B FF 89 7D */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 80130D00  7F E3 FB 78 */	mr r3, r31
/* 80130D04  38 80 00 A2 */	li r4, 0xa2
/* 80130D08  4B F7 EB 99 */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 80130D0C  48 00 00 20 */	b lbl_80130D2C
lbl_80130D10:
/* 80130D10  7F E3 FB 78 */	mr r3, r31
/* 80130D14  38 80 00 0E */	li r4, 0xe
/* 80130D18  3C A0 80 39 */	lis r5, m__19daAlinkHIO_wlLie_c0@ha /* 0x8038F138@ha */
/* 80130D1C  38 A5 F1 38 */	addi r5, r5, m__19daAlinkHIO_wlLie_c0@l /* 0x8038F138@l */
/* 80130D20  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80130D24  C0 45 00 48 */	lfs f2, 0x48(r5)
/* 80130D28  4B FF 89 B1 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
lbl_80130D2C:
/* 80130D2C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80130D30  D0 1F 34 7C */	stfs f0, 0x347c(r31)
/* 80130D34  48 00 05 70 */	b lbl_801312A4
lbl_80130D38:
/* 80130D38  C0 02 93 2C */	lfs f0, lit_7624(r2)
/* 80130D3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80130D40  40 81 00 14 */	ble lbl_80130D54
/* 80130D44  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80130D48  EC 01 00 28 */	fsubs f0, f1, f0
/* 80130D4C  D0 1F 34 7C */	stfs f0, 0x347c(r31)
/* 80130D50  48 00 05 54 */	b lbl_801312A4
lbl_80130D54:
/* 80130D54  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 80130D58  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 80130D5C  80 03 00 30 */	lwz r0, 0x30(r3)
/* 80130D60  54 1A C7 FE */	rlwinm r26, r0, 0x18, 0x1f, 0x1f
/* 80130D64  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 80130D68  2C 00 00 00 */	cmpwi r0, 0
/* 80130D6C  41 82 00 14 */	beq lbl_80130D80
/* 80130D70  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 80130D74  2C 00 00 00 */	cmpwi r0, 0
/* 80130D78  41 82 00 08 */	beq lbl_80130D80
/* 80130D7C  3B 40 00 00 */	li r26, 0
lbl_80130D80:
/* 80130D80  7F E3 FB 78 */	mr r3, r31
/* 80130D84  38 80 00 5E */	li r4, 0x5e
/* 80130D88  4B FF 7A 85 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 80130D8C  2C 03 00 00 */	cmpwi r3, 0
/* 80130D90  41 82 00 28 */	beq lbl_80130DB8
/* 80130D94  28 1C 00 00 */	cmplwi r28, 0
/* 80130D98  40 82 01 B8 */	bne lbl_80130F50
/* 80130D9C  7F C3 F3 78 */	mr r3, r30
/* 80130DA0  7F E4 FB 78 */	mr r4, r31
/* 80130DA4  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha /* 0x800428DC@ha */
/* 80130DA8  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l /* 0x800428DC@l */
/* 80130DAC  38 C0 00 00 */	li r6, 0
/* 80130DB0  4B F1 1B 65 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80130DB4  48 00 01 9C */	b lbl_80130F50
lbl_80130DB8:
/* 80130DB8  7F E3 FB 78 */	mr r3, r31
/* 80130DBC  38 80 00 5F */	li r4, 0x5f
/* 80130DC0  4B FF 7A 4D */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 80130DC4  2C 03 00 00 */	cmpwi r3, 0
/* 80130DC8  41 82 00 28 */	beq lbl_80130DF0
/* 80130DCC  28 1C 00 00 */	cmplwi r28, 0
/* 80130DD0  40 82 01 80 */	bne lbl_80130F50
/* 80130DD4  7F C3 F3 78 */	mr r3, r30
/* 80130DD8  7F E4 FB 78 */	mr r4, r31
/* 80130DDC  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha /* 0x800428DC@ha */
/* 80130DE0  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l /* 0x800428DC@l */
/* 80130DE4  38 C0 00 00 */	li r6, 0
/* 80130DE8  4B F1 1B 2D */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80130DEC  48 00 01 64 */	b lbl_80130F50
lbl_80130DF0:
/* 80130DF0  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80130DF4  40 82 00 10 */	bne lbl_80130E04
/* 80130DF8  80 1F 2E 0C */	lwz r0, 0x2e0c(r31)
/* 80130DFC  28 00 00 00 */	cmplwi r0, 0
/* 80130E00  41 82 00 A8 */	beq lbl_80130EA8
lbl_80130E04:
/* 80130E04  88 1F 2E 10 */	lbz r0, 0x2e10(r31)
/* 80130E08  28 00 00 1E */	cmplwi r0, 0x1e
/* 80130E0C  41 82 00 9C */	beq lbl_80130EA8
/* 80130E10  7F E3 FB 78 */	mr r3, r31
/* 80130E14  38 80 00 5D */	li r4, 0x5d
/* 80130E18  4B FF 79 F5 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 80130E1C  2C 03 00 00 */	cmpwi r3, 0
/* 80130E20  41 82 00 10 */	beq lbl_80130E30
/* 80130E24  A8 1F 30 0A */	lha r0, 0x300a(r31)
/* 80130E28  2C 00 00 00 */	cmpwi r0, 0
/* 80130E2C  40 82 00 28 */	bne lbl_80130E54
lbl_80130E30:
/* 80130E30  38 00 00 01 */	li r0, 1
/* 80130E34  B0 1F 30 0A */	sth r0, 0x300a(r31)
/* 80130E38  7F E3 FB 78 */	mr r3, r31
/* 80130E3C  38 80 00 5D */	li r4, 0x5d
/* 80130E40  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlHowl_c0@ha /* 0x8038F048@ha */
/* 80130E44  38 A5 F0 48 */	addi r5, r5, m__20daAlinkHIO_wlHowl_c0@l /* 0x8038F048@l */
/* 80130E48  38 A5 00 14 */	addi r5, r5, 0x14
/* 80130E4C  4B FF 89 FD */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 80130E50  48 00 01 00 */	b lbl_80130F50
lbl_80130E54:
/* 80130E54  C0 5D 00 10 */	lfs f2, 0x10(r29)
/* 80130E58  C0 02 97 64 */	lfs f0, lit_46462(r2)
/* 80130E5C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80130E60  40 81 00 14 */	ble lbl_80130E74
/* 80130E64  C0 22 93 94 */	lfs f1, lit_8785(r2)
/* 80130E68  EC 02 00 28 */	fsubs f0, f2, f0
/* 80130E6C  EC 01 00 2A */	fadds f0, f1, f0
/* 80130E70  D0 1D 00 10 */	stfs f0, 0x10(r29)
lbl_80130E74:
/* 80130E74  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 80130E78  C0 02 93 94 */	lfs f0, lit_8785(r2)
/* 80130E7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80130E80  4C 41 13 82 */	cror 2, 1, 2
/* 80130E84  40 82 00 CC */	bne lbl_80130F50
/* 80130E88  C0 02 97 64 */	lfs f0, lit_46462(r2)
/* 80130E8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80130E90  4C 40 13 82 */	cror 2, 0, 2
/* 80130E94  40 82 00 BC */	bne lbl_80130F50
/* 80130E98  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 80130E9C  64 00 40 00 */	oris r0, r0, 0x4000
/* 80130EA0  90 1F 05 80 */	stw r0, 0x580(r31)
/* 80130EA4  48 00 00 AC */	b lbl_80130F50
lbl_80130EA8:
/* 80130EA8  88 1F 2E 10 */	lbz r0, 0x2e10(r31)
/* 80130EAC  28 00 00 1E */	cmplwi r0, 0x1e
/* 80130EB0  40 82 00 20 */	bne lbl_80130ED0
/* 80130EB4  C0 02 97 64 */	lfs f0, lit_46462(r2)
/* 80130EB8  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 80130EBC  80 7F 20 60 */	lwz r3, 0x2060(r31)
/* 80130EC0  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 80130EC4  38 80 00 00 */	li r4, 0
/* 80130EC8  38 A0 00 28 */	li r5, 0x28
/* 80130ECC  4B ED E9 7D */	bl initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs
lbl_80130ED0:
/* 80130ED0  38 00 00 00 */	li r0, 0
/* 80130ED4  B0 1F 30 0A */	sth r0, 0x300a(r31)
/* 80130ED8  48 10 76 B1 */	bl isHowlHearingMode__12dMsgObject_cFv
/* 80130EDC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80130EE0  41 82 00 44 */	beq lbl_80130F24
/* 80130EE4  7F A3 EB 78 */	mr r3, r29
/* 80130EE8  48 02 D5 E5 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80130EEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80130EF0  40 82 00 18 */	bne lbl_80130F08
/* 80130EF4  7F E3 FB 78 */	mr r3, r31
/* 80130EF8  38 80 00 0E */	li r4, 0xe
/* 80130EFC  4B FF 79 11 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 80130F00  2C 03 00 00 */	cmpwi r3, 0
/* 80130F04  41 82 00 20 */	beq lbl_80130F24
lbl_80130F08:
/* 80130F08  7F E3 FB 78 */	mr r3, r31
/* 80130F0C  38 80 00 8C */	li r4, 0x8c
/* 80130F10  4B FF 87 69 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 80130F14  7F E3 FB 78 */	mr r3, r31
/* 80130F18  38 80 00 A2 */	li r4, 0xa2
/* 80130F1C  4B F7 E9 85 */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 80130F20  48 00 00 30 */	b lbl_80130F50
lbl_80130F24:
/* 80130F24  7F A3 EB 78 */	mr r3, r29
/* 80130F28  48 02 D5 A5 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80130F2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80130F30  41 82 00 20 */	beq lbl_80130F50
/* 80130F34  7F E3 FB 78 */	mr r3, r31
/* 80130F38  38 80 00 0E */	li r4, 0xe
/* 80130F3C  3C A0 80 39 */	lis r5, m__19daAlinkHIO_wlLie_c0@ha /* 0x8038F138@ha */
/* 80130F40  38 A5 F1 38 */	addi r5, r5, m__19daAlinkHIO_wlLie_c0@l /* 0x8038F138@l */
/* 80130F44  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80130F48  C0 45 00 48 */	lfs f2, 0x48(r5)
/* 80130F4C  4B FF 87 8D */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
lbl_80130F50:
/* 80130F50  AB 3F 30 0E */	lha r25, 0x300e(r31)
/* 80130F54  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 80130F58  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 80130F5C  C3 E3 00 04 */	lfs f31, 4(r3)
/* 80130F60  38 7F 2D 84 */	addi r3, r31, 0x2d84
/* 80130F64  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80130F68  FC 40 F8 90 */	fmr f2, f31
/* 80130F6C  7F 44 D3 78 */	mr r4, r26
/* 80130F70  FC 60 08 90 */	fmr f3, f1
/* 80130F74  48 19 9F 61 */	bl startWolfHowlSound__13Z2WolfHowlMgrFffbf
/* 80130F78  7C 60 07 74 */	extsb r0, r3
/* 80130F7C  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 80130F80  3B 40 00 00 */	li r26, 0
/* 80130F84  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 80130F88  2C 00 FF FF */	cmpwi r0, -1
/* 80130F8C  41 82 00 0C */	beq lbl_80130F98
/* 80130F90  2C 1B 00 00 */	cmpwi r27, 0
/* 80130F94  41 82 02 58 */	beq lbl_801311EC
lbl_80130F98:
/* 80130F98  7F E3 FB 78 */	mr r3, r31
/* 80130F9C  38 80 00 5F */	li r4, 0x5f
/* 80130FA0  4B FF 78 6D */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 80130FA4  2C 03 00 00 */	cmpwi r3, 0
/* 80130FA8  40 82 00 0C */	bne lbl_80130FB4
/* 80130FAC  2C 1B 00 00 */	cmpwi r27, 0
/* 80130FB0  41 82 01 FC */	beq lbl_801311AC
lbl_80130FB4:
/* 80130FB4  7F A3 EB 78 */	mr r3, r29
/* 80130FB8  48 02 D5 15 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80130FBC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80130FC0  40 82 00 0C */	bne lbl_80130FCC
/* 80130FC4  2C 1B 00 00 */	cmpwi r27, 0
/* 80130FC8  41 82 02 C4 */	beq lbl_8013128C
lbl_80130FCC:
/* 80130FCC  A8 7F 30 08 */	lha r3, 0x3008(r31)
/* 80130FD0  7C 60 07 35 */	extsh. r0, r3
/* 80130FD4  41 80 00 24 */	blt lbl_80130FF8
/* 80130FD8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80130FDC  38 80 00 00 */	li r4, 0
/* 80130FE0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80130FE4  7C 05 07 74 */	extsb r5, r0
/* 80130FE8  A8 DF 04 E6 */	lha r6, 0x4e6(r31)
/* 80130FEC  38 E0 FF FF */	li r7, -1
/* 80130FF0  4B EF 61 81 */	bl dStage_changeScene__FifUlScsi
/* 80130FF4  48 00 01 A4 */	b lbl_80131198
lbl_80130FF8:
/* 80130FF8  38 00 00 00 */	li r0, 0
/* 80130FFC  90 01 00 08 */	stw r0, 8(r1)
/* 80131000  28 1C 00 00 */	cmplwi r28, 0
/* 80131004  40 82 00 18 */	bne lbl_8013101C
/* 80131008  3C 60 80 13 */	lis r3, daAlink_searchWolfHowl__FP10fopAc_ac_cPv@ha /* 0x80130580@ha */
/* 8013100C  38 63 05 80 */	addi r3, r3, daAlink_searchWolfHowl__FP10fopAc_ac_cPv@l /* 0x80130580@l */
/* 80131010  38 81 00 08 */	addi r4, r1, 8
/* 80131014  4B EE 87 A9 */	bl fopAcIt_Executor__FPFPvPv_iPv
/* 80131018  48 00 00 08 */	b lbl_80131020
lbl_8013101C:
/* 8013101C  93 81 00 08 */	stw r28, 8(r1)
lbl_80131020:
/* 80131020  38 80 00 00 */	li r4, 0
/* 80131024  B0 9F 30 B2 */	sth r4, 0x30b2(r31)
/* 80131028  B0 9F 30 B0 */	sth r4, 0x30b0(r31)
/* 8013102C  80 61 00 08 */	lwz r3, 8(r1)
/* 80131030  28 03 00 00 */	cmplwi r3, 0
/* 80131034  41 82 01 1C */	beq lbl_80131150
/* 80131038  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 8013103C  60 00 08 00 */	ori r0, r0, 0x800
/* 80131040  90 03 04 9C */	stw r0, 0x49c(r3)
/* 80131044  80 61 00 08 */	lwz r3, 8(r1)
/* 80131048  A8 03 00 08 */	lha r0, 8(r3)
/* 8013104C  2C 00 00 F4 */	cmpwi r0, 0xf4
/* 80131050  40 82 00 3C */	bne lbl_8013108C
/* 80131054  98 83 06 E1 */	stb r4, 0x6e1(r3)
/* 80131058  38 00 00 02 */	li r0, 2
/* 8013105C  90 03 07 40 */	stw r0, 0x740(r3)
/* 80131060  90 83 07 44 */	stw r4, 0x744(r3)
/* 80131064  A8 1F 30 12 */	lha r0, 0x3012(r31)
/* 80131068  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8013106C  83 41 00 08 */	lwz r26, 8(r1)
/* 80131070  28 03 00 FF */	cmplwi r3, 0xff
/* 80131074  41 82 00 FC */	beq lbl_80131170
/* 80131078  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 8013107C  7C 04 07 74 */	extsb r4, r0
/* 80131080  4B F2 07 6D */	bl dPath_GetRoomPath__Fii
/* 80131084  90 7A 07 6C */	stw r3, 0x76c(r26)
/* 80131088  48 00 00 E8 */	b lbl_80131170
lbl_8013108C:
/* 8013108C  2C 00 00 20 */	cmpwi r0, 0x20
/* 80131090  40 82 00 0C */	bne lbl_8013109C
/* 80131094  48 00 02 35 */	bl setWolfHowling__15daObj_Sekizoa_cFv
/* 80131098  48 00 00 D8 */	b lbl_80131170
lbl_8013109C:
/* 8013109C  2C 00 01 D9 */	cmpwi r0, 0x1d9
/* 801310A0  40 82 00 10 */	bne lbl_801310B0
/* 801310A4  38 00 00 01 */	li r0, 1
/* 801310A8  98 03 06 19 */	stb r0, 0x619(r3)
/* 801310AC  48 00 00 C4 */	b lbl_80131170
lbl_801310B0:
/* 801310B0  2C 00 00 EE */	cmpwi r0, 0xee
/* 801310B4  40 82 00 60 */	bne lbl_80131114
/* 801310B8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 801310BC  39 83 18 D4 */	addi r12, r3, 0x18d4
/* 801310C0  48 23 0F C5 */	bl __ptmf_scall
/* 801310C4  60 00 00 00 */	nop 
/* 801310C8  7C 7A 1B 78 */	mr r26, r3
/* 801310CC  2C 1A 00 01 */	cmpwi r26, 1
/* 801310D0  41 82 00 0C */	beq lbl_801310DC
/* 801310D4  2C 1A 00 02 */	cmpwi r26, 2
/* 801310D8  40 82 00 20 */	bne lbl_801310F8
lbl_801310DC:
/* 801310DC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801310E0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 801310E4  48 18 4D F1 */	bl taktModeMuteOff__8Z2SeqMgrFv
/* 801310E8  7F E3 FB 78 */	mr r3, r31
/* 801310EC  7F 44 D3 78 */	mr r4, r26
/* 801310F0  4B FE 0F 01 */	bl procCoHorseCallWaitInit__9daAlink_cFi
/* 801310F4  48 00 01 B4 */	b lbl_801312A8
lbl_801310F8:
/* 801310F8  2C 1A 00 03 */	cmpwi r26, 3
/* 801310FC  41 82 00 74 */	beq lbl_80131170
/* 80131100  7F E3 FB 78 */	mr r3, r31
/* 80131104  7F 64 DB 78 */	mr r4, r27
/* 80131108  4B FF F5 4D */	bl setWolfHowlNotHappen__9daAlink_cFi
/* 8013110C  38 60 00 01 */	li r3, 1
/* 80131110  48 00 01 98 */	b lbl_801312A8
lbl_80131114:
/* 80131114  2C 00 01 00 */	cmpwi r0, 0x100
/* 80131118  40 82 00 58 */	bne lbl_80131170
/* 8013111C  A0 03 06 BE */	lhz r0, 0x6be(r3)
/* 80131120  60 00 00 80 */	ori r0, r0, 0x80
/* 80131124  B0 03 06 BE */	sth r0, 0x6be(r3)
/* 80131128  A8 1F 30 12 */	lha r0, 0x3012(r31)
/* 8013112C  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80131130  83 41 00 08 */	lwz r26, 8(r1)
/* 80131134  28 03 00 FF */	cmplwi r3, 0xff
/* 80131138  41 82 00 38 */	beq lbl_80131170
/* 8013113C  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 80131140  7C 04 07 74 */	extsb r4, r0
/* 80131144  4B F2 06 A9 */	bl dPath_GetRoomPath__Fii
/* 80131148  90 7A 06 C8 */	stw r3, 0x6c8(r26)
/* 8013114C  48 00 00 24 */	b lbl_80131170
lbl_80131150:
/* 80131150  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 80131154  2C 00 00 00 */	cmpwi r0, 0
/* 80131158  40 82 00 18 */	bne lbl_80131170
/* 8013115C  7F E3 FB 78 */	mr r3, r31
/* 80131160  7F 64 DB 78 */	mr r4, r27
/* 80131164  4B FF F4 F1 */	bl setWolfHowlNotHappen__9daAlink_cFi
/* 80131168  38 60 00 01 */	li r3, 1
/* 8013116C  48 00 01 3C */	b lbl_801312A8
lbl_80131170:
/* 80131170  28 1C 00 00 */	cmplwi r28, 0
/* 80131174  40 82 00 10 */	bne lbl_80131184
/* 80131178  7F E3 FB 78 */	mr r3, r31
/* 8013117C  4B FE 6B 15 */	bl resetSpecialEvent__9daAlink_cFv
/* 80131180  48 00 00 0C */	b lbl_8013118C
lbl_80131184:
/* 80131184  7F E3 FB 78 */	mr r3, r31
/* 80131188  4B FE 6B 71 */	bl endDemoMode__9daAlink_cFv
lbl_8013118C:
/* 8013118C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80131190  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80131194  48 18 4D 41 */	bl taktModeMuteOff__8Z2SeqMgrFv
lbl_80131198:
/* 80131198  7F E3 FB 78 */	mr r3, r31
/* 8013119C  38 80 00 02 */	li r4, 2
/* 801311A0  4B FF BA 45 */	bl procWolfServiceWaitInit__9daAlink_cFi
/* 801311A4  38 60 00 01 */	li r3, 1
/* 801311A8  48 00 01 00 */	b lbl_801312A8
lbl_801311AC:
/* 801311AC  2C 19 FF FF */	cmpwi r25, -1
/* 801311B0  41 82 00 24 */	beq lbl_801311D4
/* 801311B4  7F E3 FB 78 */	mr r3, r31
/* 801311B8  38 80 00 5F */	li r4, 0x5f
/* 801311BC  4B FF 84 BD */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 801311C0  28 1C 00 00 */	cmplwi r28, 0
/* 801311C4  41 82 00 C8 */	beq lbl_8013128C
/* 801311C8  38 00 00 02 */	li r0, 2
/* 801311CC  98 1C 0E 1C */	stb r0, 0xe1c(r28)
/* 801311D0  48 00 00 BC */	b lbl_8013128C
lbl_801311D4:
/* 801311D4  C0 02 97 6C */	lfs f0, lit_47417(r2)
/* 801311D8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801311DC  FC 00 00 1E */	fctiwz f0, f0
/* 801311E0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 801311E4  83 41 00 14 */	lwz r26, 0x14(r1)
/* 801311E8  48 00 00 A4 */	b lbl_8013128C
lbl_801311EC:
/* 801311EC  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 801311F0  2C 00 00 00 */	cmpwi r0, 0
/* 801311F4  40 82 00 98 */	bne lbl_8013128C
/* 801311F8  38 00 00 01 */	li r0, 1
/* 801311FC  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 80131200  48 10 71 21 */	bl onMsgSend__12dMsgObject_cFv
/* 80131204  7F E3 FB 78 */	mr r3, r31
/* 80131208  38 80 00 5E */	li r4, 0x5e
/* 8013120C  4B FF 84 6D */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 80131210  38 00 00 1B */	li r0, 0x1b
/* 80131214  B0 1F 1F DA */	sth r0, 0x1fda(r31)
/* 80131218  38 00 00 02 */	li r0, 2
/* 8013121C  98 1F 1F D4 */	stb r0, 0x1fd4(r31)
/* 80131220  7F E3 FB 78 */	mr r3, r31
/* 80131224  38 80 00 A1 */	li r4, 0xa1
/* 80131228  4B F7 E6 79 */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 8013122C  28 1C 00 00 */	cmplwi r28, 0
/* 80131230  41 82 00 44 */	beq lbl_80131274
/* 80131234  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 80131238  60 00 08 00 */	ori r0, r0, 0x800
/* 8013123C  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 80131240  38 00 00 01 */	li r0, 1
/* 80131244  98 1C 0E 1C */	stb r0, 0xe1c(r28)
/* 80131248  7F C3 F3 78 */	mr r3, r30
/* 8013124C  4B F1 12 1D */	bl reset__14dEvt_control_cFv
/* 80131250  28 1F 00 00 */	cmplwi r31, 0
/* 80131254  41 82 00 0C */	beq lbl_80131260
/* 80131258  83 7F 00 04 */	lwz r27, 4(r31)
/* 8013125C  48 00 00 08 */	b lbl_80131264
lbl_80131260:
/* 80131260  3B 60 FF FF */	li r27, -1
lbl_80131264:
/* 80131264  48 05 03 DD */	bl dCam_getBody__Fv
/* 80131268  7F 64 DB 78 */	mr r4, r27
/* 8013126C  4B F5 79 51 */	bl EndEventCamera__9dCamera_cFi
/* 80131270  48 00 00 1C */	b lbl_8013128C
lbl_80131274:
/* 80131274  7F C3 F3 78 */	mr r3, r30
/* 80131278  7F E4 FB 78 */	mr r4, r31
/* 8013127C  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha /* 0x800428DC@ha */
/* 80131280  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l /* 0x800428DC@l */
/* 80131284  38 C0 00 00 */	li r6, 0
/* 80131288  4B F1 16 8D */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
lbl_8013128C:
/* 8013128C  38 7F 30 B2 */	addi r3, r31, 0x30b2
/* 80131290  7F 44 D3 78 */	mr r4, r26
/* 80131294  38 A0 00 05 */	li r5, 5
/* 80131298  38 C0 08 00 */	li r6, 0x800
/* 8013129C  38 E0 01 00 */	li r7, 0x100
/* 801312A0  48 13 F2 A1 */	bl cLib_addCalcAngleS__FPsssss
lbl_801312A4:
/* 801312A4  38 60 00 01 */	li r3, 1
lbl_801312A8:
/* 801312A8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 801312AC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 801312B0  39 61 00 40 */	addi r11, r1, 0x40
/* 801312B4  48 23 0F 65 */	bl _restgpr_25
/* 801312B8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801312BC  7C 08 03 A6 */	mtlr r0
/* 801312C0  38 21 00 50 */	addi r1, r1, 0x50
/* 801312C4  4E 80 00 20 */	blr 
