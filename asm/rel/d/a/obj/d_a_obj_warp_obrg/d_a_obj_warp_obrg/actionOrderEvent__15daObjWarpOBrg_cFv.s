lbl_80D2A4CC:
/* 80D2A4CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D2A4D0  7C 08 02 A6 */	mflr r0
/* 80D2A4D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D2A4D8  39 61 00 20 */	addi r11, r1, 0x20
/* 80D2A4DC  4B 63 7C FD */	bl _savegpr_28
/* 80D2A4E0  7C 7E 1B 78 */	mr r30, r3
/* 80D2A4E4  3C 60 80 D3 */	lis r3, l_bmd_idx@ha /* 0x80D2B7F8@ha */
/* 80D2A4E8  3B A3 B7 F8 */	addi r29, r3, l_bmd_idx@l /* 0x80D2B7F8@l */
/* 80D2A4EC  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 80D2A4F0  83 E3 10 18 */	lwz r31, m_midnaActor__9daPy_py_c@l(r3)  /* 0x80451018@l */
/* 80D2A4F4  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80D2A4F8  28 00 00 01 */	cmplwi r0, 1
/* 80D2A4FC  40 82 01 58 */	bne lbl_80D2A654
/* 80D2A500  C0 1E 06 20 */	lfs f0, 0x620(r30)
/* 80D2A504  D0 1F 09 AC */	stfs f0, 0x9ac(r31)
/* 80D2A508  C0 1E 06 24 */	lfs f0, 0x624(r30)
/* 80D2A50C  D0 1F 09 B0 */	stfs f0, 0x9b0(r31)
/* 80D2A510  C0 1E 06 28 */	lfs f0, 0x628(r30)
/* 80D2A514  D0 1F 09 B4 */	stfs f0, 0x9b4(r31)
/* 80D2A518  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 80D2A51C  64 00 08 00 */	oris r0, r0, 0x800
/* 80D2A520  60 00 04 00 */	ori r0, r0, 0x400
/* 80D2A524  90 1F 08 90 */	stw r0, 0x890(r31)
/* 80D2A528  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80D2A52C  38 9E 06 20 */	addi r4, r30, 0x620
/* 80D2A530  4B 61 CE 6D */	bl PSVECSquareDistance
/* 80D2A534  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 80D2A538  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D2A53C  40 81 00 58 */	ble lbl_80D2A594
/* 80D2A540  FC 00 08 34 */	frsqrte f0, f1
/* 80D2A544  C8 9D 00 68 */	lfd f4, 0x68(r29)
/* 80D2A548  FC 44 00 32 */	fmul f2, f4, f0
/* 80D2A54C  C8 7D 00 70 */	lfd f3, 0x70(r29)
/* 80D2A550  FC 00 00 32 */	fmul f0, f0, f0
/* 80D2A554  FC 01 00 32 */	fmul f0, f1, f0
/* 80D2A558  FC 03 00 28 */	fsub f0, f3, f0
/* 80D2A55C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D2A560  FC 44 00 32 */	fmul f2, f4, f0
/* 80D2A564  FC 00 00 32 */	fmul f0, f0, f0
/* 80D2A568  FC 01 00 32 */	fmul f0, f1, f0
/* 80D2A56C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D2A570  FC 02 00 32 */	fmul f0, f2, f0
/* 80D2A574  FC 44 00 32 */	fmul f2, f4, f0
/* 80D2A578  FC 00 00 32 */	fmul f0, f0, f0
/* 80D2A57C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D2A580  FC 03 00 28 */	fsub f0, f3, f0
/* 80D2A584  FC 02 00 32 */	fmul f0, f2, f0
/* 80D2A588  FC 21 00 32 */	fmul f1, f1, f0
/* 80D2A58C  FC 20 08 18 */	frsp f1, f1
/* 80D2A590  48 00 00 88 */	b lbl_80D2A618
lbl_80D2A594:
/* 80D2A594  C8 1D 00 78 */	lfd f0, 0x78(r29)
/* 80D2A598  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D2A59C  40 80 00 10 */	bge lbl_80D2A5AC
/* 80D2A5A0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D2A5A4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D2A5A8  48 00 00 70 */	b lbl_80D2A618
lbl_80D2A5AC:
/* 80D2A5AC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D2A5B0  80 81 00 08 */	lwz r4, 8(r1)
/* 80D2A5B4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D2A5B8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D2A5BC  7C 03 00 00 */	cmpw r3, r0
/* 80D2A5C0  41 82 00 14 */	beq lbl_80D2A5D4
/* 80D2A5C4  40 80 00 40 */	bge lbl_80D2A604
/* 80D2A5C8  2C 03 00 00 */	cmpwi r3, 0
/* 80D2A5CC  41 82 00 20 */	beq lbl_80D2A5EC
/* 80D2A5D0  48 00 00 34 */	b lbl_80D2A604
lbl_80D2A5D4:
/* 80D2A5D4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D2A5D8  41 82 00 0C */	beq lbl_80D2A5E4
/* 80D2A5DC  38 00 00 01 */	li r0, 1
/* 80D2A5E0  48 00 00 28 */	b lbl_80D2A608
lbl_80D2A5E4:
/* 80D2A5E4  38 00 00 02 */	li r0, 2
/* 80D2A5E8  48 00 00 20 */	b lbl_80D2A608
lbl_80D2A5EC:
/* 80D2A5EC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D2A5F0  41 82 00 0C */	beq lbl_80D2A5FC
/* 80D2A5F4  38 00 00 05 */	li r0, 5
/* 80D2A5F8  48 00 00 10 */	b lbl_80D2A608
lbl_80D2A5FC:
/* 80D2A5FC  38 00 00 03 */	li r0, 3
/* 80D2A600  48 00 00 08 */	b lbl_80D2A608
lbl_80D2A604:
/* 80D2A604  38 00 00 04 */	li r0, 4
lbl_80D2A608:
/* 80D2A608  2C 00 00 01 */	cmpwi r0, 1
/* 80D2A60C  40 82 00 0C */	bne lbl_80D2A618
/* 80D2A610  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D2A614  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80D2A618:
/* 80D2A618  C0 1D 00 80 */	lfs f0, 0x80(r29)
/* 80D2A61C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D2A620  40 80 01 08 */	bge lbl_80D2A728
/* 80D2A624  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D2A628  54 03 46 7E */	rlwinm r3, r0, 8, 0x19, 0x1f
/* 80D2A62C  4B 30 54 6D */	bl dComIfGp_TargetWarpPt_set__FUc
/* 80D2A630  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 80D2A634  7F C4 F3 78 */	mr r4, r30
/* 80D2A638  A0 BE 06 36 */	lhz r5, 0x636(r30)
/* 80D2A63C  38 C0 00 00 */	li r6, 0
/* 80D2A640  38 E0 00 00 */	li r7, 0
/* 80D2A644  4B 51 F9 4D */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80D2A648  38 00 00 02 */	li r0, 2
/* 80D2A64C  98 1E 06 3B */	stb r0, 0x63b(r30)
/* 80D2A650  48 00 00 D8 */	b lbl_80D2A728
lbl_80D2A654:
/* 80D2A654  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2A658  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2A65C  3B 9D 4F F8 */	addi r28, r29, 0x4ff8
/* 80D2A660  7F 83 E3 78 */	mr r3, r28
/* 80D2A664  A8 9E 06 34 */	lha r4, 0x634(r30)
/* 80D2A668  4B 31 D3 91 */	bl startCheck__16dEvent_manager_cFs
/* 80D2A66C  2C 03 00 00 */	cmpwi r3, 0
/* 80D2A670  41 82 00 74 */	beq lbl_80D2A6E4
/* 80D2A674  7F 83 E3 78 */	mr r3, r28
/* 80D2A678  88 1E 04 99 */	lbz r0, 0x499(r30)
/* 80D2A67C  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80D2A680  3C 80 80 D3 */	lis r4, l_staff_name@ha /* 0x80D2B940@ha */
/* 80D2A684  38 84 B9 40 */	addi r4, r4, l_staff_name@l /* 0x80D2B940@l */
/* 80D2A688  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D2A68C  38 A0 00 00 */	li r5, 0
/* 80D2A690  38 C0 00 00 */	li r6, 0
/* 80D2A694  4B 31 D4 89 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D2A698  90 7E 06 30 */	stw r3, 0x630(r30)
/* 80D2A69C  38 00 00 03 */	li r0, 3
/* 80D2A6A0  98 1E 06 3B */	stb r0, 0x63b(r30)
/* 80D2A6A4  3B 9D 4E C8 */	addi r28, r29, 0x4ec8
/* 80D2A6A8  7F 83 E3 78 */	mr r3, r28
/* 80D2A6AC  7F C4 F3 78 */	mr r4, r30
/* 80D2A6B0  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha /* 0x800428DC@ha */
/* 80D2A6B4  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l /* 0x800428DC@l */
/* 80D2A6B8  38 C0 00 00 */	li r6, 0
/* 80D2A6BC  4B 31 82 59 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80D2A6C0  80 9F 08 90 */	lwz r4, 0x890(r31)
/* 80D2A6C4  3C 60 78 00 */	lis r3, 0x7800 /* 0x77FFFBFF@ha */
/* 80D2A6C8  38 03 FB FF */	addi r0, r3, 0xFBFF /* 0x77FFFBFF@l */
/* 80D2A6CC  7C 80 00 38 */	and r0, r4, r0
/* 80D2A6D0  90 1F 08 90 */	stw r0, 0x890(r31)
/* 80D2A6D4  7F 83 E3 78 */	mr r3, r28
/* 80D2A6D8  7F C4 F3 78 */	mr r4, r30
/* 80D2A6DC  4B 31 8F 81 */	bl setPt2__14dEvt_control_cFPv
/* 80D2A6E0  48 00 00 48 */	b lbl_80D2A728
lbl_80D2A6E4:
/* 80D2A6E4  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 80D2A6E8  60 00 00 01 */	ori r0, r0, 1
/* 80D2A6EC  B0 1E 00 FA */	sth r0, 0xfa(r30)
/* 80D2A6F0  7F C3 F3 78 */	mr r3, r30
/* 80D2A6F4  48 00 0C C9 */	bl checkTalkDistance__15daObjWarpOBrg_cFv
/* 80D2A6F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D2A6FC  41 82 00 10 */	beq lbl_80D2A70C
/* 80D2A700  38 00 00 0A */	li r0, 0xa
/* 80D2A704  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80D2A708  48 00 00 20 */	b lbl_80D2A728
lbl_80D2A70C:
/* 80D2A70C  80 9F 08 90 */	lwz r4, 0x890(r31)
/* 80D2A710  3C 60 78 00 */	lis r3, 0x7800 /* 0x77FFFBFF@ha */
/* 80D2A714  38 03 FB FF */	addi r0, r3, 0xFBFF /* 0x77FFFBFF@l */
/* 80D2A718  7C 80 00 38 */	and r0, r4, r0
/* 80D2A71C  90 1F 08 90 */	stw r0, 0x890(r31)
/* 80D2A720  38 00 00 00 */	li r0, 0
/* 80D2A724  98 1E 06 3B */	stb r0, 0x63b(r30)
lbl_80D2A728:
/* 80D2A728  39 61 00 20 */	addi r11, r1, 0x20
/* 80D2A72C  4B 63 7A F9 */	bl _restgpr_28
/* 80D2A730  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D2A734  7C 08 03 A6 */	mtlr r0
/* 80D2A738  38 21 00 20 */	addi r1, r1, 0x20
/* 80D2A73C  4E 80 00 20 */	blr 
