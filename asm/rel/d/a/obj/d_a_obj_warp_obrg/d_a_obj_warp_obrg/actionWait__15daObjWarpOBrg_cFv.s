lbl_80D2A194:
/* 80D2A194  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D2A198  7C 08 02 A6 */	mflr r0
/* 80D2A19C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D2A1A0  39 61 00 20 */	addi r11, r1, 0x20
/* 80D2A1A4  4B 63 80 35 */	bl _savegpr_28
/* 80D2A1A8  7C 7C 1B 78 */	mr r28, r3
/* 80D2A1AC  3C 60 80 D3 */	lis r3, l_bmd_idx@ha /* 0x80D2B7F8@ha */
/* 80D2A1B0  3B C3 B7 F8 */	addi r30, r3, l_bmd_idx@l /* 0x80D2B7F8@l */
/* 80D2A1B4  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 80D2A1B8  83 A3 10 18 */	lwz r29, m_midnaActor__9daPy_py_c@l(r3)  /* 0x80451018@l */
/* 80D2A1BC  28 1D 00 00 */	cmplwi r29, 0
/* 80D2A1C0  41 82 02 F4 */	beq lbl_80D2A4B4
/* 80D2A1C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2A1C8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2A1CC  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 80D2A1D0  28 00 00 00 */	cmplwi r0, 0
/* 80D2A1D4  41 82 01 64 */	beq lbl_80D2A338
/* 80D2A1D8  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 80D2A1DC  28 00 00 01 */	cmplwi r0, 1
/* 80D2A1E0  40 82 01 58 */	bne lbl_80D2A338
/* 80D2A1E4  C0 1C 06 20 */	lfs f0, 0x620(r28)
/* 80D2A1E8  D0 1D 09 AC */	stfs f0, 0x9ac(r29)
/* 80D2A1EC  C0 1C 06 24 */	lfs f0, 0x624(r28)
/* 80D2A1F0  D0 1D 09 B0 */	stfs f0, 0x9b0(r29)
/* 80D2A1F4  C0 1C 06 28 */	lfs f0, 0x628(r28)
/* 80D2A1F8  D0 1D 09 B4 */	stfs f0, 0x9b4(r29)
/* 80D2A1FC  80 1D 08 90 */	lwz r0, 0x890(r29)
/* 80D2A200  64 00 08 00 */	oris r0, r0, 0x800
/* 80D2A204  60 00 04 00 */	ori r0, r0, 0x400
/* 80D2A208  90 1D 08 90 */	stw r0, 0x890(r29)
/* 80D2A20C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80D2A210  38 9C 06 20 */	addi r4, r28, 0x620
/* 80D2A214  4B 61 D1 89 */	bl PSVECSquareDistance
/* 80D2A218  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80D2A21C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D2A220  40 81 00 58 */	ble lbl_80D2A278
/* 80D2A224  FC 00 08 34 */	frsqrte f0, f1
/* 80D2A228  C8 9E 00 68 */	lfd f4, 0x68(r30)
/* 80D2A22C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D2A230  C8 7E 00 70 */	lfd f3, 0x70(r30)
/* 80D2A234  FC 00 00 32 */	fmul f0, f0, f0
/* 80D2A238  FC 01 00 32 */	fmul f0, f1, f0
/* 80D2A23C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D2A240  FC 02 00 32 */	fmul f0, f2, f0
/* 80D2A244  FC 44 00 32 */	fmul f2, f4, f0
/* 80D2A248  FC 00 00 32 */	fmul f0, f0, f0
/* 80D2A24C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D2A250  FC 03 00 28 */	fsub f0, f3, f0
/* 80D2A254  FC 02 00 32 */	fmul f0, f2, f0
/* 80D2A258  FC 44 00 32 */	fmul f2, f4, f0
/* 80D2A25C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D2A260  FC 01 00 32 */	fmul f0, f1, f0
/* 80D2A264  FC 03 00 28 */	fsub f0, f3, f0
/* 80D2A268  FC 02 00 32 */	fmul f0, f2, f0
/* 80D2A26C  FC 21 00 32 */	fmul f1, f1, f0
/* 80D2A270  FC 20 08 18 */	frsp f1, f1
/* 80D2A274  48 00 00 88 */	b lbl_80D2A2FC
lbl_80D2A278:
/* 80D2A278  C8 1E 00 78 */	lfd f0, 0x78(r30)
/* 80D2A27C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D2A280  40 80 00 10 */	bge lbl_80D2A290
/* 80D2A284  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D2A288  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D2A28C  48 00 00 70 */	b lbl_80D2A2FC
lbl_80D2A290:
/* 80D2A290  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D2A294  80 81 00 08 */	lwz r4, 8(r1)
/* 80D2A298  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D2A29C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D2A2A0  7C 03 00 00 */	cmpw r3, r0
/* 80D2A2A4  41 82 00 14 */	beq lbl_80D2A2B8
/* 80D2A2A8  40 80 00 40 */	bge lbl_80D2A2E8
/* 80D2A2AC  2C 03 00 00 */	cmpwi r3, 0
/* 80D2A2B0  41 82 00 20 */	beq lbl_80D2A2D0
/* 80D2A2B4  48 00 00 34 */	b lbl_80D2A2E8
lbl_80D2A2B8:
/* 80D2A2B8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D2A2BC  41 82 00 0C */	beq lbl_80D2A2C8
/* 80D2A2C0  38 00 00 01 */	li r0, 1
/* 80D2A2C4  48 00 00 28 */	b lbl_80D2A2EC
lbl_80D2A2C8:
/* 80D2A2C8  38 00 00 02 */	li r0, 2
/* 80D2A2CC  48 00 00 20 */	b lbl_80D2A2EC
lbl_80D2A2D0:
/* 80D2A2D0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D2A2D4  41 82 00 0C */	beq lbl_80D2A2E0
/* 80D2A2D8  38 00 00 05 */	li r0, 5
/* 80D2A2DC  48 00 00 10 */	b lbl_80D2A2EC
lbl_80D2A2E0:
/* 80D2A2E0  38 00 00 03 */	li r0, 3
/* 80D2A2E4  48 00 00 08 */	b lbl_80D2A2EC
lbl_80D2A2E8:
/* 80D2A2E8  38 00 00 04 */	li r0, 4
lbl_80D2A2EC:
/* 80D2A2EC  2C 00 00 01 */	cmpwi r0, 1
/* 80D2A2F0  40 82 00 0C */	bne lbl_80D2A2FC
/* 80D2A2F4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D2A2F8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80D2A2FC:
/* 80D2A2FC  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80D2A300  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D2A304  40 80 01 0C */	bge lbl_80D2A410
/* 80D2A308  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80D2A30C  54 03 46 7E */	rlwinm r3, r0, 8, 0x19, 0x1f
/* 80D2A310  4B 30 57 89 */	bl dComIfGp_TargetWarpPt_set__FUc
/* 80D2A314  38 7C 05 B4 */	addi r3, r28, 0x5b4
/* 80D2A318  7F 84 E3 78 */	mr r4, r28
/* 80D2A31C  A0 BC 06 36 */	lhz r5, 0x636(r28)
/* 80D2A320  38 C0 00 00 */	li r6, 0
/* 80D2A324  38 E0 00 00 */	li r7, 0
/* 80D2A328  4B 51 FC 69 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80D2A32C  38 00 00 02 */	li r0, 2
/* 80D2A330  98 1C 06 3B */	stb r0, 0x63b(r28)
/* 80D2A334  48 00 00 DC */	b lbl_80D2A410
lbl_80D2A338:
/* 80D2A338  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2A33C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2A340  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80D2A344  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D2A348  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 80D2A34C  7C 05 07 74 */	extsb r5, r0
/* 80D2A350  4B 30 B0 11 */	bl isSwitch__10dSv_info_cCFii
/* 80D2A354  2C 03 00 00 */	cmpwi r3, 0
/* 80D2A358  41 82 00 B8 */	beq lbl_80D2A410
/* 80D2A35C  7F 83 E3 78 */	mr r3, r28
/* 80D2A360  48 00 10 5D */	bl checkTalkDistance__15daObjWarpOBrg_cFv
/* 80D2A364  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D2A368  41 82 00 A8 */	beq lbl_80D2A410
/* 80D2A36C  A0 1C 00 FA */	lhz r0, 0xfa(r28)
/* 80D2A370  60 00 00 01 */	ori r0, r0, 1
/* 80D2A374  B0 1C 00 FA */	sth r0, 0xfa(r28)
/* 80D2A378  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2A37C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2A380  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80D2A384  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80D2A388  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80D2A38C  7D 89 03 A6 */	mtctr r12
/* 80D2A390  4E 80 04 21 */	bctrl 
/* 80D2A394  28 03 00 00 */	cmplwi r3, 0
/* 80D2A398  40 82 00 78 */	bne lbl_80D2A410
/* 80D2A39C  38 7F 5B 48 */	addi r3, r31, 0x5b48
/* 80D2A3A0  7F 84 E3 78 */	mr r4, r28
/* 80D2A3A4  38 A0 01 FF */	li r5, 0x1ff
/* 80D2A3A8  4B 34 95 55 */	bl request__10dAttHint_cFP10fopAc_ac_ci
/* 80D2A3AC  88 1C 06 39 */	lbz r0, 0x639(r28)
/* 80D2A3B0  28 00 00 00 */	cmplwi r0, 0
/* 80D2A3B4  40 82 00 54 */	bne lbl_80D2A408
/* 80D2A3B8  38 00 00 01 */	li r0, 1
/* 80D2A3BC  98 1C 06 39 */	stb r0, 0x639(r28)
/* 80D2A3C0  88 1C 06 3A */	lbz r0, 0x63a(r28)
/* 80D2A3C4  28 00 00 00 */	cmplwi r0, 0
/* 80D2A3C8  40 82 00 40 */	bne lbl_80D2A408
/* 80D2A3CC  38 00 00 0E */	li r0, 0xe
/* 80D2A3D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D2A3D4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D2A3D8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D2A3DC  80 63 00 00 */	lwz r3, 0(r3)
/* 80D2A3E0  38 81 00 0C */	addi r4, r1, 0xc
/* 80D2A3E4  38 A0 00 00 */	li r5, 0
/* 80D2A3E8  38 C0 00 00 */	li r6, 0
/* 80D2A3EC  38 E0 00 00 */	li r7, 0
/* 80D2A3F0  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80D2A3F4  FC 40 08 90 */	fmr f2, f1
/* 80D2A3F8  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 80D2A3FC  FC 80 18 90 */	fmr f4, f3
/* 80D2A400  39 00 00 00 */	li r8, 0
/* 80D2A404  4B 58 15 81 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D2A408:
/* 80D2A408  38 00 00 3C */	li r0, 0x3c
/* 80D2A40C  98 1C 06 3A */	stb r0, 0x63a(r28)
lbl_80D2A410:
/* 80D2A410  3B DF 4F F8 */	addi r30, r31, 0x4ff8
/* 80D2A414  7F C3 F3 78 */	mr r3, r30
/* 80D2A418  A8 9C 06 34 */	lha r4, 0x634(r28)
/* 80D2A41C  4B 31 D5 DD */	bl startCheck__16dEvent_manager_cFs
/* 80D2A420  2C 03 00 00 */	cmpwi r3, 0
/* 80D2A424  41 82 00 90 */	beq lbl_80D2A4B4
/* 80D2A428  7F C3 F3 78 */	mr r3, r30
/* 80D2A42C  4B 31 DF BD */	bl getRunEventName__16dEvent_manager_cFv
/* 80D2A430  3C 80 80 D3 */	lis r4, d_a_obj_warp_obrg__stringBase0@ha /* 0x80D2B8AC@ha */
/* 80D2A434  38 84 B8 AC */	addi r4, r4, d_a_obj_warp_obrg__stringBase0@l /* 0x80D2B8AC@l */
/* 80D2A438  38 84 00 09 */	addi r4, r4, 9
/* 80D2A43C  4B 63 E5 59 */	bl strcmp
/* 80D2A440  2C 03 00 00 */	cmpwi r3, 0
/* 80D2A444  40 82 00 70 */	bne lbl_80D2A4B4
/* 80D2A448  7F C3 F3 78 */	mr r3, r30
/* 80D2A44C  88 1C 04 99 */	lbz r0, 0x499(r28)
/* 80D2A450  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80D2A454  3C 80 80 D3 */	lis r4, l_staff_name@ha /* 0x80D2B940@ha */
/* 80D2A458  38 84 B9 40 */	addi r4, r4, l_staff_name@l /* 0x80D2B940@l */
/* 80D2A45C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D2A460  38 A0 00 00 */	li r5, 0
/* 80D2A464  38 C0 00 00 */	li r6, 0
/* 80D2A468  4B 31 D6 B5 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D2A46C  90 7C 06 30 */	stw r3, 0x630(r28)
/* 80D2A470  38 00 00 03 */	li r0, 3
/* 80D2A474  98 1C 06 3B */	stb r0, 0x63b(r28)
/* 80D2A478  3B DF 4E C8 */	addi r30, r31, 0x4ec8
/* 80D2A47C  7F C3 F3 78 */	mr r3, r30
/* 80D2A480  7F 84 E3 78 */	mr r4, r28
/* 80D2A484  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha /* 0x800428DC@ha */
/* 80D2A488  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l /* 0x800428DC@l */
/* 80D2A48C  38 C0 00 00 */	li r6, 0
/* 80D2A490  4B 31 84 85 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80D2A494  80 9D 08 90 */	lwz r4, 0x890(r29)
/* 80D2A498  3C 60 78 00 */	lis r3, 0x7800 /* 0x77FFFBFF@ha */
/* 80D2A49C  38 03 FB FF */	addi r0, r3, 0xFBFF /* 0x77FFFBFF@l */
/* 80D2A4A0  7C 80 00 38 */	and r0, r4, r0
/* 80D2A4A4  90 1D 08 90 */	stw r0, 0x890(r29)
/* 80D2A4A8  7F C3 F3 78 */	mr r3, r30
/* 80D2A4AC  7F 84 E3 78 */	mr r4, r28
/* 80D2A4B0  4B 31 91 AD */	bl setPt2__14dEvt_control_cFPv
lbl_80D2A4B4:
/* 80D2A4B4  39 61 00 20 */	addi r11, r1, 0x20
/* 80D2A4B8  4B 63 7D 6D */	bl _restgpr_28
/* 80D2A4BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D2A4C0  7C 08 03 A6 */	mtlr r0
/* 80D2A4C4  38 21 00 20 */	addi r1, r1, 0x20
/* 80D2A4C8  4E 80 00 20 */	blr 
