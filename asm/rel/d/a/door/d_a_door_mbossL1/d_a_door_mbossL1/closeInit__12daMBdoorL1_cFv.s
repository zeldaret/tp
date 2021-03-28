lbl_80675068:
/* 80675068  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8067506C  7C 08 02 A6 */	mflr r0
/* 80675070  90 01 00 44 */	stw r0, 0x44(r1)
/* 80675074  39 61 00 40 */	addi r11, r1, 0x40
/* 80675078  4B CE D1 64 */	b _savegpr_29
/* 8067507C  7C 7E 1B 78 */	mr r30, r3
/* 80675080  3C 80 80 67 */	lis r4, l_staff_name@ha
/* 80675084  3B E4 75 58 */	addi r31, r4, l_staff_name@l
/* 80675088  4B FF DE FD */	bl getDoorType__12daMBdoorL1_cFv
/* 8067508C  2C 03 00 00 */	cmpwi r3, 0
/* 80675090  40 82 00 54 */	bne lbl_806750E4
/* 80675094  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80675098  7C 03 07 74 */	extsb r3, r0
/* 8067509C  4B 9B 7F D0 */	b dComIfGp_getReverb__Fi
/* 806750A0  7C 67 1B 78 */	mr r7, r3
/* 806750A4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800B3@ha */
/* 806750A8  38 03 00 B3 */	addi r0, r3, 0x00B3 /* 0x000800B3@l */
/* 806750AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806750B0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806750B4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806750B8  80 63 00 00 */	lwz r3, 0(r3)
/* 806750BC  38 81 00 14 */	addi r4, r1, 0x14
/* 806750C0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806750C4  38 C0 00 00 */	li r6, 0
/* 806750C8  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 806750CC  FC 40 08 90 */	fmr f2, f1
/* 806750D0  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 806750D4  FC 80 18 90 */	fmr f4, f3
/* 806750D8  39 00 00 00 */	li r8, 0
/* 806750DC  4B C3 68 A8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806750E0  48 00 01 6C */	b lbl_8067524C
lbl_806750E4:
/* 806750E4  7F C3 F3 78 */	mr r3, r30
/* 806750E8  4B FF DE 9D */	bl getDoorType__12daMBdoorL1_cFv
/* 806750EC  2C 03 00 01 */	cmpwi r3, 1
/* 806750F0  40 82 01 5C */	bne lbl_8067524C
/* 806750F4  C0 5E 04 B0 */	lfs f2, 0x4b0(r30)
/* 806750F8  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 806750FC  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80675100  EC 21 00 2A */	fadds f1, f1, f0
/* 80675104  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80675108  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8067510C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80675110  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80675114  38 61 00 18 */	addi r3, r1, 0x18
/* 80675118  4B 9A 8C 6C */	b waterCheck__11fopAcM_wt_cFPC4cXyz
/* 8067511C  7C 7D 1B 78 */	mr r29, r3
/* 80675120  38 61 00 18 */	addi r3, r1, 0x18
/* 80675124  4B 9A 8B 98 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80675128  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 8067512C  41 82 00 6C */	beq lbl_80675198
/* 80675130  3C 60 80 45 */	lis r3, mWaterY__11fopAcM_wt_c@ha
/* 80675134  C0 23 0C D8 */	lfs f1, mWaterY__11fopAcM_wt_c@l(r3)
/* 80675138  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 8067513C  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80675140  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80675144  40 81 00 54 */	ble lbl_80675198
/* 80675148  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8067514C  7C 03 07 74 */	extsb r3, r0
/* 80675150  4B 9B 7F 1C */	b dComIfGp_getReverb__Fi
/* 80675154  7C 67 1B 78 */	mr r7, r3
/* 80675158  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080196@ha */
/* 8067515C  38 03 01 96 */	addi r0, r3, 0x0196 /* 0x00080196@l */
/* 80675160  90 01 00 10 */	stw r0, 0x10(r1)
/* 80675164  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80675168  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8067516C  80 63 00 00 */	lwz r3, 0(r3)
/* 80675170  38 81 00 10 */	addi r4, r1, 0x10
/* 80675174  38 BE 05 38 */	addi r5, r30, 0x538
/* 80675178  38 C0 00 00 */	li r6, 0
/* 8067517C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80675180  FC 40 08 90 */	fmr f2, f1
/* 80675184  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 80675188  FC 80 18 90 */	fmr f4, f3
/* 8067518C  39 00 00 00 */	li r8, 0
/* 80675190  4B C3 67 F4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80675194  48 00 00 B0 */	b lbl_80675244
lbl_80675198:
/* 80675198  7F C3 F3 78 */	mr r3, r30
/* 8067519C  4B FF D6 9D */	bl getNowLevel__FP10fopAc_ac_c
/* 806751A0  2C 03 00 08 */	cmpwi r3, 8
/* 806751A4  40 82 00 54 */	bne lbl_806751F8
/* 806751A8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806751AC  7C 03 07 74 */	extsb r3, r0
/* 806751B0  4B 9B 7E BC */	b dComIfGp_getReverb__Fi
/* 806751B4  7C 67 1B 78 */	mr r7, r3
/* 806751B8  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008021A@ha */
/* 806751BC  38 03 02 1A */	addi r0, r3, 0x021A /* 0x0008021A@l */
/* 806751C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 806751C4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806751C8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806751CC  80 63 00 00 */	lwz r3, 0(r3)
/* 806751D0  38 81 00 0C */	addi r4, r1, 0xc
/* 806751D4  38 BE 05 38 */	addi r5, r30, 0x538
/* 806751D8  38 C0 00 00 */	li r6, 0
/* 806751DC  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 806751E0  FC 40 08 90 */	fmr f2, f1
/* 806751E4  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 806751E8  FC 80 18 90 */	fmr f4, f3
/* 806751EC  39 00 00 00 */	li r8, 0
/* 806751F0  4B C3 67 94 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806751F4  48 00 00 50 */	b lbl_80675244
lbl_806751F8:
/* 806751F8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806751FC  7C 03 07 74 */	extsb r3, r0
/* 80675200  4B 9B 7E 6C */	b dComIfGp_getReverb__Fi
/* 80675204  7C 67 1B 78 */	mr r7, r3
/* 80675208  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080192@ha */
/* 8067520C  38 03 01 92 */	addi r0, r3, 0x0192 /* 0x00080192@l */
/* 80675210  90 01 00 08 */	stw r0, 8(r1)
/* 80675214  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80675218  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8067521C  80 63 00 00 */	lwz r3, 0(r3)
/* 80675220  38 81 00 08 */	addi r4, r1, 8
/* 80675224  38 BE 05 38 */	addi r5, r30, 0x538
/* 80675228  38 C0 00 00 */	li r6, 0
/* 8067522C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80675230  FC 40 08 90 */	fmr f2, f1
/* 80675234  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 80675238  FC 80 18 90 */	fmr f4, f3
/* 8067523C  39 00 00 00 */	li r8, 0
/* 80675240  4B C3 67 44 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80675244:
/* 80675244  7F C3 F3 78 */	mr r3, r30
/* 80675248  48 00 0D BD */	bl smokeInit2__12daMBdoorL1_cFv
lbl_8067524C:
/* 8067524C  7F C3 F3 78 */	mr r3, r30
/* 80675250  4B FF DD F9 */	bl getCloseAnm__12daMBdoorL1_cFv
/* 80675254  7C 7D 1B 78 */	mr r29, r3
/* 80675258  7F C3 F3 78 */	mr r3, r30
/* 8067525C  4B FF DC 15 */	bl getAnmArcName__12daMBdoorL1_cFv
/* 80675260  7F A4 EB 78 */	mr r4, r29
/* 80675264  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80675268  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8067526C  3C A5 00 02 */	addis r5, r5, 2
/* 80675270  38 C0 00 80 */	li r6, 0x80
/* 80675274  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80675278  4B 9C 71 04 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8067527C  7C 64 1B 78 */	mr r4, r3
/* 80675280  80 7E 05 88 */	lwz r3, 0x588(r30)
/* 80675284  38 A0 00 01 */	li r5, 1
/* 80675288  38 C0 00 00 */	li r6, 0
/* 8067528C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80675290  38 E0 00 00 */	li r7, 0
/* 80675294  39 00 FF FF */	li r8, -1
/* 80675298  39 20 00 01 */	li r9, 1
/* 8067529C  4B 99 85 40 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 806752A0  38 60 00 01 */	li r3, 1
/* 806752A4  39 61 00 40 */	addi r11, r1, 0x40
/* 806752A8  4B CE CF 80 */	b _restgpr_29
/* 806752AC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806752B0  7C 08 03 A6 */	mtlr r0
/* 806752B4  38 21 00 40 */	addi r1, r1, 0x40
/* 806752B8  4E 80 00 20 */	blr 
