lbl_804F4740:
/* 804F4740  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 804F4744  7C 08 02 A6 */	mflr r0
/* 804F4748  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 804F474C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 804F4750  4B E6 DA 81 */	bl _savegpr_26
/* 804F4754  7C 7B 1B 78 */	mr r27, r3
/* 804F4758  3C 60 80 50 */	lis r3, lit_3777@ha /* 0x804FA6BC@ha */
/* 804F475C  3B E3 A6 BC */	addi r31, r3, lit_3777@l /* 0x804FA6BC@l */
/* 804F4760  3B C0 00 00 */	li r30, 0
/* 804F4764  80 7B 05 D0 */	lwz r3, 0x5d0(r27)
/* 804F4768  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 804F476C  FC 00 00 1E */	fctiwz f0, f0
/* 804F4770  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 804F4774  83 A1 00 7C */	lwz r29, 0x7c(r1)
/* 804F4778  38 00 00 05 */	li r0, 5
/* 804F477C  B0 1B 07 B4 */	sth r0, 0x7b4(r27)
/* 804F4780  3B 80 00 00 */	li r28, 0
/* 804F4784  3C BB 00 02 */	addis r5, r27, 2
/* 804F4788  A8 05 AF F2 */	lha r0, -0x500e(r5)
/* 804F478C  2C 00 00 0B */	cmpwi r0, 0xb
/* 804F4790  41 80 00 68 */	blt lbl_804F47F8
/* 804F4794  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F4798  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F479C  38 7A 4E C8 */	addi r3, r26, 0x4ec8
/* 804F47A0  A0 1A 4F A2 */	lhz r0, 0x4fa2(r26)
/* 804F47A4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804F47A8  41 82 00 50 */	beq lbl_804F47F8
/* 804F47AC  38 00 00 01 */	li r0, 1
/* 804F47B0  3C 80 80 45 */	lis r4, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 804F47B4  98 04 0C 98 */	stb r0, struct_80450C98+0x0@l(r4)  /* 0x80450C98@l */
/* 804F47B8  38 00 03 E8 */	li r0, 0x3e8
/* 804F47BC  B0 05 AF F2 */	sth r0, -0x500e(r5)
/* 804F47C0  4B B4 DC A9 */	bl reset__14dEvt_control_cFv
/* 804F47C4  38 7A 5B D4 */	addi r3, r26, 0x5bd4
/* 804F47C8  38 80 00 1F */	li r4, 0x1f
/* 804F47CC  4B B7 B5 C9 */	bl StopQuake__12dVibration_cFi
/* 804F47D0  38 60 00 01 */	li r3, 1
/* 804F47D4  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804F47D8  38 80 00 00 */	li r4, 0
/* 804F47DC  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 804F47E0  7C 05 07 74 */	extsb r5, r0
/* 804F47E4  38 C0 00 00 */	li r6, 0
/* 804F47E8  38 E0 FF FF */	li r7, -1
/* 804F47EC  4B B3 29 85 */	bl dStage_changeScene__FifUlScsi
/* 804F47F0  38 60 00 00 */	li r3, 0
/* 804F47F4  48 00 03 D0 */	b lbl_804F4BC4
lbl_804F47F8:
/* 804F47F8  A8 1B 07 A4 */	lha r0, 0x7a4(r27)
/* 804F47FC  2C 00 00 01 */	cmpwi r0, 1
/* 804F4800  41 82 00 6C */	beq lbl_804F486C
/* 804F4804  40 80 00 10 */	bge lbl_804F4814
/* 804F4808  2C 00 00 00 */	cmpwi r0, 0
/* 804F480C  40 80 00 14 */	bge lbl_804F4820
/* 804F4810  48 00 03 38 */	b lbl_804F4B48
lbl_804F4814:
/* 804F4814  2C 00 00 03 */	cmpwi r0, 3
/* 804F4818  40 80 03 30 */	bge lbl_804F4B48
/* 804F481C  48 00 01 24 */	b lbl_804F4940
lbl_804F4820:
/* 804F4820  7F 63 DB 78 */	mr r3, r27
/* 804F4824  38 80 00 1D */	li r4, 0x1d
/* 804F4828  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804F482C  38 A0 00 02 */	li r5, 2
/* 804F4830  C0 5F 00 00 */	lfs f2, 0(r31)
/* 804F4834  4B FF AF D5 */	bl anm_init__FP10e_fm_classifUcf
/* 804F4838  38 00 00 06 */	li r0, 6
/* 804F483C  90 1B 06 1C */	stw r0, 0x61c(r27)
/* 804F4840  38 00 00 01 */	li r0, 1
/* 804F4844  B0 1B 07 A4 */	sth r0, 0x7a4(r27)
/* 804F4848  3C 9B 00 02 */	addis r4, r27, 2
/* 804F484C  98 04 AA B6 */	stb r0, -0x554a(r4)
/* 804F4850  3C 7B 00 01 */	addis r3, r27, 1
/* 804F4854  98 03 48 E2 */	stb r0, 0x48e2(r3)
/* 804F4858  98 03 E7 0E */	stb r0, -0x18f2(r3)
/* 804F485C  98 03 85 3A */	stb r0, -0x7ac6(r3)
/* 804F4860  38 00 00 0A */	li r0, 0xa
/* 804F4864  B0 04 AF F2 */	sth r0, -0x500e(r4)
/* 804F4868  48 00 02 E0 */	b lbl_804F4B48
lbl_804F486C:
/* 804F486C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804F4870  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804F4874  80 63 00 00 */	lwz r3, 0(r3)
/* 804F4878  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 804F487C  4B B1 7B 61 */	bl mDoMtx_YrotS__FPA4_fs
/* 804F4880  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 804F4884  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 804F4888  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 804F488C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 804F4890  C0 1F 01 C8 */	lfs f0, 0x1c8(r31)
/* 804F4894  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 804F4898  38 61 00 68 */	addi r3, r1, 0x68
/* 804F489C  38 81 00 5C */	addi r4, r1, 0x5c
/* 804F48A0  4B D7 C6 4D */	bl MtxPosition__FP4cXyzP4cXyz
/* 804F48A4  38 61 00 44 */	addi r3, r1, 0x44
/* 804F48A8  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 804F48AC  38 A1 00 5C */	addi r5, r1, 0x5c
/* 804F48B0  4B D7 22 35 */	bl __pl__4cXyzCFRC3Vec
/* 804F48B4  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 804F48B8  3C 7B 00 01 */	addis r3, r27, 1
/* 804F48BC  D0 03 85 3C */	stfs f0, -0x7ac4(r3)
/* 804F48C0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 804F48C4  D0 03 85 40 */	stfs f0, -0x7ac0(r3)
/* 804F48C8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 804F48CC  D0 03 85 44 */	stfs f0, -0x7abc(r3)
/* 804F48D0  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 804F48D4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 804F48D8  38 61 00 68 */	addi r3, r1, 0x68
/* 804F48DC  38 81 00 5C */	addi r4, r1, 0x5c
/* 804F48E0  4B D7 C6 0D */	bl MtxPosition__FP4cXyzP4cXyz
/* 804F48E4  38 61 00 38 */	addi r3, r1, 0x38
/* 804F48E8  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 804F48EC  38 A1 00 5C */	addi r5, r1, 0x5c
/* 804F48F0  4B D7 21 F5 */	bl __pl__4cXyzCFRC3Vec
/* 804F48F4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 804F48F8  3C 7B 00 01 */	addis r3, r27, 1
/* 804F48FC  D0 03 E7 10 */	stfs f0, -0x18f0(r3)
/* 804F4900  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 804F4904  D0 03 E7 14 */	stfs f0, -0x18ec(r3)
/* 804F4908  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 804F490C  D0 03 E7 18 */	stfs f0, -0x18e8(r3)
/* 804F4910  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 804F4914  D0 03 48 E4 */	stfs f0, 0x48e4(r3)
/* 804F4918  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804F491C  D0 43 48 E8 */	stfs f2, 0x48e8(r3)
/* 804F4920  C0 3F 01 D4 */	lfs f1, 0x1d4(r31)
/* 804F4924  D0 23 48 EC */	stfs f1, 0x48ec(r3)
/* 804F4928  C0 1F 01 D8 */	lfs f0, 0x1d8(r31)
/* 804F492C  3C 7B 00 02 */	addis r3, r27, 2
/* 804F4930  D0 03 AA B8 */	stfs f0, -0x5548(r3)
/* 804F4934  D0 43 AA BC */	stfs f2, -0x5544(r3)
/* 804F4938  D0 23 AA C0 */	stfs f1, -0x5540(r3)
/* 804F493C  48 00 02 0C */	b lbl_804F4B48
lbl_804F4940:
/* 804F4940  2C 1D 01 53 */	cmpwi r29, 0x153
/* 804F4944  40 82 00 34 */	bne lbl_804F4978
/* 804F4948  38 00 00 01 */	li r0, 1
/* 804F494C  98 1B 07 92 */	stb r0, 0x792(r27)
/* 804F4950  38 00 00 03 */	li r0, 3
/* 804F4954  98 1B 18 2C */	stb r0, 0x182c(r27)
/* 804F4958  7F 63 DB 78 */	mr r3, r27
/* 804F495C  38 80 00 02 */	li r4, 2
/* 804F4960  4B FF AD B1 */	bl carry_off__FP10e_fm_classi
/* 804F4964  7F 63 DB 78 */	mr r3, r27
/* 804F4968  38 80 00 03 */	li r4, 3
/* 804F496C  4B FF AD A5 */	bl carry_off__FP10e_fm_classi
/* 804F4970  38 00 00 01 */	li r0, 1
/* 804F4974  90 1B 05 C8 */	stw r0, 0x5c8(r27)
lbl_804F4978:
/* 804F4978  2C 1D 00 21 */	cmpwi r29, 0x21
/* 804F497C  41 80 00 08 */	blt lbl_804F4984
/* 804F4980  3B C0 00 01 */	li r30, 1
lbl_804F4984:
/* 804F4984  2C 1D 02 40 */	cmpwi r29, 0x240
/* 804F4988  41 80 00 60 */	blt lbl_804F49E8
/* 804F498C  2C 1D 02 54 */	cmpwi r29, 0x254
/* 804F4990  41 81 00 58 */	bgt lbl_804F49E8
/* 804F4994  38 00 00 01 */	li r0, 1
/* 804F4998  98 1B 18 29 */	stb r0, 0x1829(r27)
/* 804F499C  98 1B 18 28 */	stb r0, 0x1828(r27)
/* 804F49A0  2C 1D 02 40 */	cmpwi r29, 0x240
/* 804F49A4  40 82 00 44 */	bne lbl_804F49E8
/* 804F49A8  7F 63 DB 78 */	mr r3, r27
/* 804F49AC  38 80 00 01 */	li r4, 1
/* 804F49B0  4B FF AD 61 */	bl carry_off__FP10e_fm_classi
/* 804F49B4  3B 80 00 02 */	li r28, 2
/* 804F49B8  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804F49BC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 804F49C0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804F49C4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804F49C8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 804F49CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F49D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F49D4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804F49D8  38 80 00 03 */	li r4, 3
/* 804F49DC  38 A0 00 01 */	li r5, 1
/* 804F49E0  38 C1 00 2C */	addi r6, r1, 0x2c
/* 804F49E4  4B B7 B0 41 */	bl StartShock__12dVibration_cFii4cXyz
lbl_804F49E8:
/* 804F49E8  2C 1D 02 8B */	cmpwi r29, 0x28b
/* 804F49EC  41 80 00 64 */	blt lbl_804F4A50
/* 804F49F0  2C 1D 02 9F */	cmpwi r29, 0x29f
/* 804F49F4  41 81 00 5C */	bgt lbl_804F4A50
/* 804F49F8  38 00 00 01 */	li r0, 1
/* 804F49FC  98 1B 18 29 */	stb r0, 0x1829(r27)
/* 804F4A00  38 00 00 00 */	li r0, 0
/* 804F4A04  98 1B 18 28 */	stb r0, 0x1828(r27)
/* 804F4A08  2C 1D 02 8B */	cmpwi r29, 0x28b
/* 804F4A0C  40 82 00 44 */	bne lbl_804F4A50
/* 804F4A10  7F 63 DB 78 */	mr r3, r27
/* 804F4A14  38 80 00 00 */	li r4, 0
/* 804F4A18  4B FF AC F9 */	bl carry_off__FP10e_fm_classi
/* 804F4A1C  3B 80 00 01 */	li r28, 1
/* 804F4A20  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804F4A24  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804F4A28  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804F4A2C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804F4A30  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 804F4A34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F4A38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F4A3C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804F4A40  38 80 00 03 */	li r4, 3
/* 804F4A44  38 A0 00 01 */	li r5, 1
/* 804F4A48  38 C1 00 20 */	addi r6, r1, 0x20
/* 804F4A4C  4B B7 AF D9 */	bl StartShock__12dVibration_cFii4cXyz
lbl_804F4A50:
/* 804F4A50  2C 1D 02 DA */	cmpwi r29, 0x2da
/* 804F4A54  40 82 00 20 */	bne lbl_804F4A74
/* 804F4A58  38 00 00 01 */	li r0, 1
/* 804F4A5C  3C 7B 00 02 */	addis r3, r27, 2
/* 804F4A60  98 03 B0 80 */	stb r0, -0x4f80(r3)
/* 804F4A64  3C 60 80 4F */	lis r3, s_fmobj_del__FPvPv@ha /* 0x804EF250@ha */
/* 804F4A68  38 63 F2 50 */	addi r3, r3, s_fmobj_del__FPvPv@l /* 0x804EF250@l */
/* 804F4A6C  38 80 00 00 */	li r4, 0
/* 804F4A70  4B B2 C8 C9 */	bl fpcEx_Search__FPFPvPv_PvPv
lbl_804F4A74:
/* 804F4A74  80 7B 05 D0 */	lwz r3, 0x5d0(r27)
/* 804F4A78  A8 03 00 14 */	lha r0, 0x14(r3)
/* 804F4A7C  C8 3F 00 A0 */	lfd f1, 0xa0(r31)
/* 804F4A80  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804F4A84  90 01 00 7C */	stw r0, 0x7c(r1)
/* 804F4A88  3C 00 43 30 */	lis r0, 0x4330
/* 804F4A8C  90 01 00 78 */	stw r0, 0x78(r1)
/* 804F4A90  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 804F4A94  EC 20 08 28 */	fsubs f1, f0, f1
/* 804F4A98  C0 1F 01 DC */	lfs f0, 0x1dc(r31)
/* 804F4A9C  EC 21 00 28 */	fsubs f1, f1, f0
/* 804F4AA0  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 804F4AA4  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F4AA8  FC 00 00 1E */	fctiwz f0, f0
/* 804F4AAC  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 804F4AB0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804F4AB4  7C 1D 00 00 */	cmpw r29, r0
/* 804F4AB8  40 82 00 0C */	bne lbl_804F4AC4
/* 804F4ABC  38 60 04 80 */	li r3, 0x480
/* 804F4AC0  4B B2 B5 05 */	bl fopMsgM_messageSetDemo__FUl
lbl_804F4AC4:
/* 804F4AC4  80 7B 05 D0 */	lwz r3, 0x5d0(r27)
/* 804F4AC8  38 80 00 01 */	li r4, 1
/* 804F4ACC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804F4AD0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804F4AD4  40 82 00 18 */	bne lbl_804F4AEC
/* 804F4AD8  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804F4ADC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804F4AE0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804F4AE4  41 82 00 08 */	beq lbl_804F4AEC
/* 804F4AE8  38 80 00 00 */	li r4, 0
lbl_804F4AEC:
/* 804F4AEC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804F4AF0  41 82 00 58 */	beq lbl_804F4B48
/* 804F4AF4  38 00 00 00 */	li r0, 0
/* 804F4AF8  B0 1B 07 A2 */	sth r0, 0x7a2(r27)
/* 804F4AFC  B0 1B 07 A4 */	sth r0, 0x7a4(r27)
/* 804F4B00  90 1B 06 1C */	stw r0, 0x61c(r27)
/* 804F4B04  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F4B08  80 7B 05 F8 */	lwz r3, 0x5f8(r27)
/* 804F4B0C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804F4B10  80 7B 05 D4 */	lwz r3, 0x5d4(r27)
/* 804F4B14  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804F4B18  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804F4B1C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804F4B20  80 63 00 00 */	lwz r3, 0(r3)
/* 804F4B24  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804F4B28  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000025@ha */
/* 804F4B2C  38 84 00 25 */	addi r4, r4, 0x0025 /* 0x01000025@l */
/* 804F4B30  38 A0 00 00 */	li r5, 0
/* 804F4B34  38 C0 00 00 */	li r6, 0
/* 804F4B38  4B DB A4 D9 */	bl bgmStart__8Z2SeqMgrFUlUll
/* 804F4B3C  38 00 00 64 */	li r0, 0x64
/* 804F4B40  3C 7B 00 02 */	addis r3, r27, 2
/* 804F4B44  B0 03 AF F2 */	sth r0, -0x500e(r3)
lbl_804F4B48:
/* 804F4B48  2C 1C 00 00 */	cmpwi r28, 0
/* 804F4B4C  41 82 00 74 */	beq lbl_804F4BC0
/* 804F4B50  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 804F4B54  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 804F4B58  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 804F4B5C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 804F4B60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F4B64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F4B68  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804F4B6C  38 80 00 00 */	li r4, 0
/* 804F4B70  90 81 00 08 */	stw r4, 8(r1)
/* 804F4B74  38 00 FF FF */	li r0, -1
/* 804F4B78  90 01 00 0C */	stw r0, 0xc(r1)
/* 804F4B7C  90 81 00 10 */	stw r4, 0x10(r1)
/* 804F4B80  90 81 00 14 */	stw r4, 0x14(r1)
/* 804F4B84  90 81 00 18 */	stw r4, 0x18(r1)
/* 804F4B88  38 80 00 00 */	li r4, 0
/* 804F4B8C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008455@ha */
/* 804F4B90  38 A5 84 55 */	addi r5, r5, 0x8455 /* 0x00008455@l */
/* 804F4B94  38 1C FF FF */	addi r0, r28, -1
/* 804F4B98  1C C0 61 D4 */	mulli r6, r0, 0x61d4
/* 804F4B9C  3C C6 00 01 */	addis r6, r6, 1
/* 804F4BA0  38 C6 85 3C */	addi r6, r6, -31428
/* 804F4BA4  7C DB 32 14 */	add r6, r27, r6
/* 804F4BA8  38 E0 00 00 */	li r7, 0
/* 804F4BAC  39 00 00 00 */	li r8, 0
/* 804F4BB0  39 21 00 50 */	addi r9, r1, 0x50
/* 804F4BB4  39 40 00 FF */	li r10, 0xff
/* 804F4BB8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804F4BBC  4B B5 7E D5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_804F4BC0:
/* 804F4BC0  7F C3 F3 78 */	mr r3, r30
lbl_804F4BC4:
/* 804F4BC4  39 61 00 A0 */	addi r11, r1, 0xa0
/* 804F4BC8  4B E6 D6 55 */	bl _restgpr_26
/* 804F4BCC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 804F4BD0  7C 08 03 A6 */	mtlr r0
/* 804F4BD4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 804F4BD8  4E 80 00 20 */	blr 
