lbl_80C139E4:
/* 80C139E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C139E8  7C 08 02 A6 */	mflr r0
/* 80C139EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C139F0  39 61 00 30 */	addi r11, r1, 0x30
/* 80C139F4  4B 74 E7 E5 */	bl _savegpr_28
/* 80C139F8  7C 7C 1B 78 */	mr r28, r3
/* 80C139FC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C13A00  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C13A04  40 82 00 1C */	bne lbl_80C13A20
/* 80C13A08  28 1C 00 00 */	cmplwi r28, 0
/* 80C13A0C  41 82 00 08 */	beq lbl_80C13A14
/* 80C13A10  48 00 03 A1 */	bl __ct__12daGrdWater_cFv
lbl_80C13A14:
/* 80C13A14  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 80C13A18  60 00 00 08 */	ori r0, r0, 8
/* 80C13A1C  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_80C13A20:
/* 80C13A20  38 7C 05 A0 */	addi r3, r28, 0x5a0
/* 80C13A24  3C 80 80 C1 */	lis r4, d_a_obj_groundwater__stringBase0@ha /* 0x80C149F4@ha */
/* 80C13A28  38 84 49 F4 */	addi r4, r4, d_a_obj_groundwater__stringBase0@l /* 0x80C149F4@l */
/* 80C13A2C  4B 41 94 91 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C13A30  7C 7D 1B 78 */	mr r29, r3
/* 80C13A34  2C 1D 00 04 */	cmpwi r29, 4
/* 80C13A38  40 82 03 5C */	bne lbl_80C13D94
/* 80C13A3C  7F 83 E3 78 */	mr r3, r28
/* 80C13A40  3C 80 80 C1 */	lis r4, d_a_obj_groundwater__stringBase0@ha /* 0x80C149F4@ha */
/* 80C13A44  38 84 49 F4 */	addi r4, r4, d_a_obj_groundwater__stringBase0@l /* 0x80C149F4@l */
/* 80C13A48  38 A0 00 1D */	li r5, 0x1d
/* 80C13A4C  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075A24@ha */
/* 80C13A50  38 C6 5A 24 */	addi r6, r6, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075A24@l */
/* 80C13A54  38 E0 40 30 */	li r7, 0x4030
/* 80C13A58  39 00 00 00 */	li r8, 0
/* 80C13A5C  4B 46 4D 61 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C13A60  2C 03 00 05 */	cmpwi r3, 5
/* 80C13A64  40 82 00 0C */	bne lbl_80C13A70
/* 80C13A68  38 60 00 05 */	li r3, 5
/* 80C13A6C  48 00 03 2C */	b lbl_80C13D98
lbl_80C13A70:
/* 80C13A70  80 7C 05 AC */	lwz r3, 0x5ac(r28)
/* 80C13A74  38 03 00 24 */	addi r0, r3, 0x24
/* 80C13A78  90 1C 05 04 */	stw r0, 0x504(r28)
/* 80C13A7C  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80C13A80  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80C13A84  98 1C 06 F3 */	stb r0, 0x6f3(r28)
/* 80C13A88  88 9C 06 F3 */	lbz r4, 0x6f3(r28)
/* 80C13A8C  28 04 00 FF */	cmplwi r4, 0xff
/* 80C13A90  41 82 02 F4 */	beq lbl_80C13D84
/* 80C13A94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C13A98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C13A9C  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 80C13AA0  7C 05 07 74 */	extsb r5, r0
/* 80C13AA4  4B 42 18 BD */	bl isSwitch__10dSv_info_cCFii
/* 80C13AA8  98 7C 06 F0 */	stb r3, 0x6f0(r28)
/* 80C13AAC  80 7C 05 AC */	lwz r3, 0x5ac(r28)
/* 80C13AB0  83 E3 00 04 */	lwz r31, 4(r3)
/* 80C13AB4  80 7C 05 A8 */	lwz r3, 0x5a8(r28)
/* 80C13AB8  83 C3 00 04 */	lwz r30, 4(r3)
/* 80C13ABC  88 1C 06 F0 */	lbz r0, 0x6f0(r28)
/* 80C13AC0  28 00 00 00 */	cmplwi r0, 0
/* 80C13AC4  41 82 01 5C */	beq lbl_80C13C20
/* 80C13AC8  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80C13ACC  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80C13AD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C13AD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C13AD8  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 80C13ADC  7C 05 07 74 */	extsb r5, r0
/* 80C13AE0  4B 42 18 81 */	bl isSwitch__10dSv_info_cCFii
/* 80C13AE4  2C 03 00 00 */	cmpwi r3, 0
/* 80C13AE8  41 82 00 A4 */	beq lbl_80C13B8C
/* 80C13AEC  A8 1C 06 6C */	lha r0, 0x66c(r28)
/* 80C13AF0  3C 60 80 C1 */	lis r3, lit_3891@ha /* 0x80C149E8@ha */
/* 80C13AF4  C8 23 49 E8 */	lfd f1, lit_3891@l(r3)  /* 0x80C149E8@l */
/* 80C13AF8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C13AFC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C13B00  3C 60 43 30 */	lis r3, 0x4330
/* 80C13B04  90 61 00 08 */	stw r3, 8(r1)
/* 80C13B08  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C13B0C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C13B10  D0 1C 06 74 */	stfs f0, 0x674(r28)
/* 80C13B14  A8 1C 06 DC */	lha r0, 0x6dc(r28)
/* 80C13B18  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C13B1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C13B20  90 61 00 10 */	stw r3, 0x10(r1)
/* 80C13B24  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80C13B28  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C13B2C  D0 1C 06 E4 */	stfs f0, 0x6e4(r28)
/* 80C13B30  38 7C 06 64 */	addi r3, r28, 0x664
/* 80C13B34  7F C4 F3 78 */	mr r4, r30
/* 80C13B38  C0 3C 06 74 */	lfs f1, 0x674(r28)
/* 80C13B3C  4B 3F 9E 91 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80C13B40  38 7C 06 D4 */	addi r3, r28, 0x6d4
/* 80C13B44  7F E4 FB 78 */	mr r4, r31
/* 80C13B48  C0 3C 06 E4 */	lfs f1, 0x6e4(r28)
/* 80C13B4C  4B 3F 9E 81 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80C13B50  A8 1C 06 00 */	lha r0, 0x600(r28)
/* 80C13B54  3C 60 80 C1 */	lis r3, lit_3891@ha /* 0x80C149E8@ha */
/* 80C13B58  C8 23 49 E8 */	lfd f1, lit_3891@l(r3)  /* 0x80C149E8@l */
/* 80C13B5C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C13B60  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C13B64  3C 00 43 30 */	lis r0, 0x4330
/* 80C13B68  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C13B6C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80C13B70  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C13B74  D0 1C 06 08 */	stfs f0, 0x608(r28)
/* 80C13B78  C0 3C 06 08 */	lfs f1, 0x608(r28)
/* 80C13B7C  38 7C 05 F8 */	addi r3, r28, 0x5f8
/* 80C13B80  38 9E 00 58 */	addi r4, r30, 0x58
/* 80C13B84  4B 3F 9C 25 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80C13B88  48 00 01 EC */	b lbl_80C13D74
lbl_80C13B8C:
/* 80C13B8C  A8 1C 06 18 */	lha r0, 0x618(r28)
/* 80C13B90  3C 60 80 C1 */	lis r3, lit_3891@ha /* 0x80C149E8@ha */
/* 80C13B94  C8 23 49 E8 */	lfd f1, lit_3891@l(r3)  /* 0x80C149E8@l */
/* 80C13B98  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C13B9C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C13BA0  3C 60 43 30 */	lis r3, 0x4330
/* 80C13BA4  90 61 00 18 */	stw r3, 0x18(r1)
/* 80C13BA8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80C13BAC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C13BB0  D0 1C 06 20 */	stfs f0, 0x620(r28)
/* 80C13BB4  A8 1C 06 88 */	lha r0, 0x688(r28)
/* 80C13BB8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C13BBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C13BC0  90 61 00 10 */	stw r3, 0x10(r1)
/* 80C13BC4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80C13BC8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C13BCC  D0 1C 06 90 */	stfs f0, 0x690(r28)
/* 80C13BD0  A8 1C 05 E8 */	lha r0, 0x5e8(r28)
/* 80C13BD4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C13BD8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C13BDC  90 61 00 08 */	stw r3, 8(r1)
/* 80C13BE0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C13BE4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C13BE8  D0 1C 05 F0 */	stfs f0, 0x5f0(r28)
/* 80C13BEC  38 7C 06 10 */	addi r3, r28, 0x610
/* 80C13BF0  7F C4 F3 78 */	mr r4, r30
/* 80C13BF4  C0 3C 06 20 */	lfs f1, 0x620(r28)
/* 80C13BF8  4B 3F 9D D5 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80C13BFC  C0 3C 05 F0 */	lfs f1, 0x5f0(r28)
/* 80C13C00  38 7C 05 E0 */	addi r3, r28, 0x5e0
/* 80C13C04  38 9E 00 58 */	addi r4, r30, 0x58
/* 80C13C08  4B 3F 9B A1 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80C13C0C  38 7C 06 80 */	addi r3, r28, 0x680
/* 80C13C10  7F E4 FB 78 */	mr r4, r31
/* 80C13C14  C0 3C 06 90 */	lfs f1, 0x690(r28)
/* 80C13C18  4B 3F 9D B5 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80C13C1C  48 00 01 58 */	b lbl_80C13D74
lbl_80C13C20:
/* 80C13C20  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80C13C24  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80C13C28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C13C2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C13C30  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 80C13C34  7C 05 07 74 */	extsb r5, r0
/* 80C13C38  4B 42 17 29 */	bl isSwitch__10dSv_info_cCFii
/* 80C13C3C  2C 03 00 00 */	cmpwi r3, 0
/* 80C13C40  41 82 00 98 */	beq lbl_80C13CD8
/* 80C13C44  A8 1C 06 50 */	lha r0, 0x650(r28)
/* 80C13C48  3C 60 80 C1 */	lis r3, lit_3891@ha /* 0x80C149E8@ha */
/* 80C13C4C  C8 23 49 E8 */	lfd f1, lit_3891@l(r3)  /* 0x80C149E8@l */
/* 80C13C50  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C13C54  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C13C58  3C 60 43 30 */	lis r3, 0x4330
/* 80C13C5C  90 61 00 18 */	stw r3, 0x18(r1)
/* 80C13C60  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80C13C64  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C13C68  D0 1C 06 58 */	stfs f0, 0x658(r28)
/* 80C13C6C  A8 1C 06 C0 */	lha r0, 0x6c0(r28)
/* 80C13C70  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C13C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C13C78  90 61 00 10 */	stw r3, 0x10(r1)
/* 80C13C7C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80C13C80  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C13C84  D0 1C 06 C8 */	stfs f0, 0x6c8(r28)
/* 80C13C88  A8 1C 06 00 */	lha r0, 0x600(r28)
/* 80C13C8C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C13C90  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C13C94  90 61 00 08 */	stw r3, 8(r1)
/* 80C13C98  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C13C9C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C13CA0  D0 1C 06 08 */	stfs f0, 0x608(r28)
/* 80C13CA4  38 7C 06 48 */	addi r3, r28, 0x648
/* 80C13CA8  7F C4 F3 78 */	mr r4, r30
/* 80C13CAC  C0 3C 06 58 */	lfs f1, 0x658(r28)
/* 80C13CB0  4B 3F 9D 1D */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80C13CB4  C0 3C 06 08 */	lfs f1, 0x608(r28)
/* 80C13CB8  38 7C 05 F8 */	addi r3, r28, 0x5f8
/* 80C13CBC  38 9E 00 58 */	addi r4, r30, 0x58
/* 80C13CC0  4B 3F 9A E9 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80C13CC4  38 7C 06 B8 */	addi r3, r28, 0x6b8
/* 80C13CC8  7F E4 FB 78 */	mr r4, r31
/* 80C13CCC  C0 3C 06 C8 */	lfs f1, 0x6c8(r28)
/* 80C13CD0  4B 3F 9C FD */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80C13CD4  48 00 00 A0 */	b lbl_80C13D74
lbl_80C13CD8:
/* 80C13CD8  A8 1C 06 34 */	lha r0, 0x634(r28)
/* 80C13CDC  3C 60 80 C1 */	lis r3, lit_3891@ha /* 0x80C149E8@ha */
/* 80C13CE0  C8 23 49 E8 */	lfd f1, lit_3891@l(r3)  /* 0x80C149E8@l */
/* 80C13CE4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C13CE8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C13CEC  3C 60 43 30 */	lis r3, 0x4330
/* 80C13CF0  90 61 00 18 */	stw r3, 0x18(r1)
/* 80C13CF4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80C13CF8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C13CFC  D0 1C 06 3C */	stfs f0, 0x63c(r28)
/* 80C13D00  A8 1C 06 A4 */	lha r0, 0x6a4(r28)
/* 80C13D04  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C13D08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C13D0C  90 61 00 10 */	stw r3, 0x10(r1)
/* 80C13D10  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80C13D14  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C13D18  D0 1C 06 AC */	stfs f0, 0x6ac(r28)
/* 80C13D1C  38 7C 06 2C */	addi r3, r28, 0x62c
/* 80C13D20  7F C4 F3 78 */	mr r4, r30
/* 80C13D24  C0 3C 06 3C */	lfs f1, 0x63c(r28)
/* 80C13D28  4B 3F 9C A5 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80C13D2C  38 7C 06 9C */	addi r3, r28, 0x69c
/* 80C13D30  7F E4 FB 78 */	mr r4, r31
/* 80C13D34  C0 3C 06 AC */	lfs f1, 0x6ac(r28)
/* 80C13D38  4B 3F 9C 95 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80C13D3C  A8 1C 05 E8 */	lha r0, 0x5e8(r28)
/* 80C13D40  3C 60 80 C1 */	lis r3, lit_3891@ha /* 0x80C149E8@ha */
/* 80C13D44  C8 23 49 E8 */	lfd f1, lit_3891@l(r3)  /* 0x80C149E8@l */
/* 80C13D48  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C13D4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C13D50  3C 00 43 30 */	lis r0, 0x4330
/* 80C13D54  90 01 00 08 */	stw r0, 8(r1)
/* 80C13D58  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C13D5C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C13D60  D0 1C 05 F0 */	stfs f0, 0x5f0(r28)
/* 80C13D64  C0 3C 05 F0 */	lfs f1, 0x5f0(r28)
/* 80C13D68  38 7C 05 E0 */	addi r3, r28, 0x5e0
/* 80C13D6C  38 9E 00 58 */	addi r4, r30, 0x58
/* 80C13D70  4B 3F 9A 39 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
lbl_80C13D74:
/* 80C13D74  80 7C 05 AC */	lwz r3, 0x5ac(r28)
/* 80C13D78  4B 71 3E 5D */	bl calcAnmMtx__8J3DModelFv
/* 80C13D7C  80 7C 05 A8 */	lwz r3, 0x5a8(r28)
/* 80C13D80  4B 71 3E 55 */	bl calcAnmMtx__8J3DModelFv
lbl_80C13D84:
/* 80C13D84  7F 83 E3 78 */	mr r3, r28
/* 80C13D88  4B FF F7 B9 */	bl setBaseMtx__12daGrdWater_cFv
/* 80C13D8C  7F 83 E3 78 */	mr r3, r28
/* 80C13D90  48 00 04 05 */	bl init_modeWait__12daGrdWater_cFv
lbl_80C13D94:
/* 80C13D94  7F A3 EB 78 */	mr r3, r29
lbl_80C13D98:
/* 80C13D98  39 61 00 30 */	addi r11, r1, 0x30
/* 80C13D9C  4B 74 E4 89 */	bl _restgpr_28
/* 80C13DA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C13DA4  7C 08 03 A6 */	mtlr r0
/* 80C13DA8  38 21 00 30 */	addi r1, r1, 0x30
/* 80C13DAC  4E 80 00 20 */	blr 
