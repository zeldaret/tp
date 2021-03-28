lbl_80BA674C:
/* 80BA674C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BA6750  7C 08 02 A6 */	mflr r0
/* 80BA6754  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BA6758  39 61 00 30 */	addi r11, r1, 0x30
/* 80BA675C  4B 7B BA 7C */	b _savegpr_28
/* 80BA6760  7C 7C 1B 78 */	mr r28, r3
/* 80BA6764  3C 60 80 BA */	lis r3, m__22daObj_AutoMata_Param_c@ha
/* 80BA6768  3B E3 6C 10 */	addi r31, r3, m__22daObj_AutoMata_Param_c@l
/* 80BA676C  80 7C 05 6C */	lwz r3, 0x56c(r28)
/* 80BA6770  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80BA6774  FC 00 02 10 */	fabs f0, f0
/* 80BA6778  FC 20 00 18 */	frsp f1, f0
/* 80BA677C  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 80BA6780  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 80BA6784  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA6788  7C 00 00 26 */	mfcr r0
/* 80BA678C  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80BA6790  40 82 02 68 */	bne lbl_80BA69F8
/* 80BA6794  3C 60 80 BA */	lis r3, l_bmdData@ha
/* 80BA6798  38 63 6C D0 */	addi r3, r3, l_bmdData@l
/* 80BA679C  88 1C 0B 30 */	lbz r0, 0xb30(r28)
/* 80BA67A0  54 00 18 38 */	slwi r0, r0, 3
/* 80BA67A4  7C 63 02 14 */	add r3, r3, r0
/* 80BA67A8  80 03 00 04 */	lwz r0, 4(r3)
/* 80BA67AC  54 00 10 3A */	slwi r0, r0, 2
/* 80BA67B0  3C 60 80 BA */	lis r3, l_resNameList@ha
/* 80BA67B4  38 63 6C D8 */	addi r3, r3, l_resNameList@l
/* 80BA67B8  7F A3 00 2E */	lwzx r29, r3, r0
/* 80BA67BC  7F A3 EB 78 */	mr r3, r29
/* 80BA67C0  38 80 00 05 */	li r4, 5
/* 80BA67C4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BA67C8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BA67CC  3F C5 00 02 */	addis r30, r5, 2
/* 80BA67D0  3B DE C2 F8 */	addi r30, r30, -15624
/* 80BA67D4  7F C5 F3 78 */	mr r5, r30
/* 80BA67D8  38 C0 00 80 */	li r6, 0x80
/* 80BA67DC  4B 49 5B 10 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BA67E0  80 9C 05 6C */	lwz r4, 0x56c(r28)
/* 80BA67E4  80 04 00 08 */	lwz r0, 8(r4)
/* 80BA67E8  7C 03 00 40 */	cmplw r3, r0
/* 80BA67EC  40 82 00 C0 */	bne lbl_80BA68AC
/* 80BA67F0  38 64 00 0C */	addi r3, r4, 0xc
/* 80BA67F4  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80BA67F8  4B 78 1C 34 */	b checkPass__12J3DFrameCtrlFf
/* 80BA67FC  2C 03 00 00 */	cmpwi r3, 0
/* 80BA6800  41 82 00 58 */	beq lbl_80BA6858
/* 80BA6804  80 7C 05 6C */	lwz r3, 0x56c(r28)
/* 80BA6808  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80BA680C  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008023E@ha */
/* 80BA6810  38 03 02 3E */	addi r0, r3, 0x023E /* 0x0008023E@l */
/* 80BA6814  90 01 00 18 */	stw r0, 0x18(r1)
/* 80BA6818  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80BA681C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80BA6820  4B 7B B8 8C */	b __cvt_fp2unsigned
/* 80BA6824  7C 66 1B 78 */	mr r6, r3
/* 80BA6828  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BA682C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BA6830  80 63 00 00 */	lwz r3, 0(r3)
/* 80BA6834  38 81 00 18 */	addi r4, r1, 0x18
/* 80BA6838  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80BA683C  38 E0 00 00 */	li r7, 0
/* 80BA6840  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80BA6844  FC 40 08 90 */	fmr f2, f1
/* 80BA6848  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 80BA684C  FC 80 18 90 */	fmr f4, f3
/* 80BA6850  39 00 00 00 */	li r8, 0
/* 80BA6854  4B 70 51 30 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BA6858:
/* 80BA6858  80 7C 05 6C */	lwz r3, 0x56c(r28)
/* 80BA685C  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80BA6860  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008023F@ha */
/* 80BA6864  38 03 02 3F */	addi r0, r3, 0x023F /* 0x0008023F@l */
/* 80BA6868  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA686C  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80BA6870  EC 20 00 72 */	fmuls f1, f0, f1
/* 80BA6874  4B 7B B8 38 */	b __cvt_fp2unsigned
/* 80BA6878  7C 66 1B 78 */	mr r6, r3
/* 80BA687C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BA6880  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BA6884  80 63 00 00 */	lwz r3, 0(r3)
/* 80BA6888  38 81 00 14 */	addi r4, r1, 0x14
/* 80BA688C  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80BA6890  38 E0 00 00 */	li r7, 0
/* 80BA6894  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80BA6898  FC 40 08 90 */	fmr f2, f1
/* 80BA689C  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 80BA68A0  FC 80 18 90 */	fmr f4, f3
/* 80BA68A4  39 00 00 00 */	li r8, 0
/* 80BA68A8  4B 70 5C 64 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BA68AC:
/* 80BA68AC  7F A3 EB 78 */	mr r3, r29
/* 80BA68B0  38 80 00 06 */	li r4, 6
/* 80BA68B4  7F C5 F3 78 */	mr r5, r30
/* 80BA68B8  38 C0 00 80 */	li r6, 0x80
/* 80BA68BC  4B 49 5A 30 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BA68C0  80 9C 05 6C */	lwz r4, 0x56c(r28)
/* 80BA68C4  80 04 00 08 */	lwz r0, 8(r4)
/* 80BA68C8  7C 03 00 40 */	cmplw r3, r0
/* 80BA68CC  40 82 01 2C */	bne lbl_80BA69F8
/* 80BA68D0  38 64 00 0C */	addi r3, r4, 0xc
/* 80BA68D4  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80BA68D8  4B 78 1B 54 */	b checkPass__12J3DFrameCtrlFf
/* 80BA68DC  2C 03 00 00 */	cmpwi r3, 0
/* 80BA68E0  41 82 00 58 */	beq lbl_80BA6938
/* 80BA68E4  80 7C 05 6C */	lwz r3, 0x56c(r28)
/* 80BA68E8  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80BA68EC  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008023E@ha */
/* 80BA68F0  38 03 02 3E */	addi r0, r3, 0x023E /* 0x0008023E@l */
/* 80BA68F4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BA68F8  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80BA68FC  EC 20 00 72 */	fmuls f1, f0, f1
/* 80BA6900  4B 7B B7 AC */	b __cvt_fp2unsigned
/* 80BA6904  7C 66 1B 78 */	mr r6, r3
/* 80BA6908  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BA690C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BA6910  80 63 00 00 */	lwz r3, 0(r3)
/* 80BA6914  38 81 00 10 */	addi r4, r1, 0x10
/* 80BA6918  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80BA691C  38 E0 00 00 */	li r7, 0
/* 80BA6920  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80BA6924  FC 40 08 90 */	fmr f2, f1
/* 80BA6928  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 80BA692C  FC 80 18 90 */	fmr f4, f3
/* 80BA6930  39 00 00 00 */	li r8, 0
/* 80BA6934  4B 70 50 50 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BA6938:
/* 80BA6938  80 7C 05 6C */	lwz r3, 0x56c(r28)
/* 80BA693C  38 63 00 0C */	addi r3, r3, 0xc
/* 80BA6940  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80BA6944  4B 78 1A E8 */	b checkPass__12J3DFrameCtrlFf
/* 80BA6948  2C 03 00 00 */	cmpwi r3, 0
/* 80BA694C  41 82 00 58 */	beq lbl_80BA69A4
/* 80BA6950  80 7C 05 6C */	lwz r3, 0x56c(r28)
/* 80BA6954  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80BA6958  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008023E@ha */
/* 80BA695C  38 03 02 3E */	addi r0, r3, 0x023E /* 0x0008023E@l */
/* 80BA6960  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BA6964  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80BA6968  EC 20 00 72 */	fmuls f1, f0, f1
/* 80BA696C  4B 7B B7 40 */	b __cvt_fp2unsigned
/* 80BA6970  7C 66 1B 78 */	mr r6, r3
/* 80BA6974  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BA6978  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BA697C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BA6980  38 81 00 0C */	addi r4, r1, 0xc
/* 80BA6984  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80BA6988  38 E0 00 00 */	li r7, 0
/* 80BA698C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80BA6990  FC 40 08 90 */	fmr f2, f1
/* 80BA6994  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 80BA6998  FC 80 18 90 */	fmr f4, f3
/* 80BA699C  39 00 00 00 */	li r8, 0
/* 80BA69A0  4B 70 4F E4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BA69A4:
/* 80BA69A4  80 7C 05 6C */	lwz r3, 0x56c(r28)
/* 80BA69A8  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80BA69AC  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008023F@ha */
/* 80BA69B0  38 03 02 3F */	addi r0, r3, 0x023F /* 0x0008023F@l */
/* 80BA69B4  90 01 00 08 */	stw r0, 8(r1)
/* 80BA69B8  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80BA69BC  EC 20 00 72 */	fmuls f1, f0, f1
/* 80BA69C0  4B 7B B6 EC */	b __cvt_fp2unsigned
/* 80BA69C4  7C 66 1B 78 */	mr r6, r3
/* 80BA69C8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BA69CC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BA69D0  80 63 00 00 */	lwz r3, 0(r3)
/* 80BA69D4  38 81 00 08 */	addi r4, r1, 8
/* 80BA69D8  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80BA69DC  38 E0 00 00 */	li r7, 0
/* 80BA69E0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80BA69E4  FC 40 08 90 */	fmr f2, f1
/* 80BA69E8  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 80BA69EC  FC 80 18 90 */	fmr f4, f3
/* 80BA69F0  39 00 00 00 */	li r8, 0
/* 80BA69F4  4B 70 5B 18 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BA69F8:
/* 80BA69F8  39 61 00 30 */	addi r11, r1, 0x30
/* 80BA69FC  4B 7B B8 28 */	b _restgpr_28
/* 80BA6A00  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BA6A04  7C 08 03 A6 */	mtlr r0
/* 80BA6A08  38 21 00 30 */	addi r1, r1, 0x30
/* 80BA6A0C  4E 80 00 20 */	blr 
