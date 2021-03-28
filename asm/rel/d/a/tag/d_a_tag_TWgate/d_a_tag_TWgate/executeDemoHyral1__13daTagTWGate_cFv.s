lbl_80D545F8:
/* 80D545F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D545FC  7C 08 02 A6 */	mflr r0
/* 80D54600  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D54604  39 61 00 20 */	addi r11, r1, 0x20
/* 80D54608  4B 60 DB CC */	b _savegpr_27
/* 80D5460C  7C 7D 1B 78 */	mr r29, r3
/* 80D54610  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D54614  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80D54618  3B FB 4F F8 */	addi r31, r27, 0x4ff8
/* 80D5461C  7F E3 FB 78 */	mr r3, r31
/* 80D54620  3C 80 80 D5 */	lis r4, l_myName@ha
/* 80D54624  38 84 59 94 */	addi r4, r4, l_myName@l
/* 80D54628  80 84 00 00 */	lwz r4, 0(r4)
/* 80D5462C  38 A0 00 00 */	li r5, 0
/* 80D54630  38 C0 00 00 */	li r6, 0
/* 80D54634  4B 2F 34 E8 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D54638  7C 7E 1B 78 */	mr r30, r3
/* 80D5463C  2C 1E FF FF */	cmpwi r30, -1
/* 80D54640  41 82 01 18 */	beq lbl_80D54758
/* 80D54644  7F E3 FB 78 */	mr r3, r31
/* 80D54648  7F C4 F3 78 */	mr r4, r30
/* 80D5464C  4B 2F 39 10 */	b getMyNowCutName__16dEvent_manager_cFi
/* 80D54650  7C 7C 1B 78 */	mr r28, r3
/* 80D54654  7F E3 FB 78 */	mr r3, r31
/* 80D54658  7F C4 F3 78 */	mr r4, r30
/* 80D5465C  4B 2F 36 F0 */	b getIsAddvance__16dEvent_manager_cFi
/* 80D54660  2C 03 00 00 */	cmpwi r3, 0
/* 80D54664  41 82 00 34 */	beq lbl_80D54698
/* 80D54668  80 9C 00 00 */	lwz r4, 0(r28)
/* 80D5466C  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303031@ha */
/* 80D54670  38 03 30 31 */	addi r0, r3, 0x3031 /* 0x30303031@l */
/* 80D54674  7C 04 00 00 */	cmpw r4, r0
/* 80D54678  41 82 00 08 */	beq lbl_80D54680
/* 80D5467C  48 00 00 1C */	b lbl_80D54698
lbl_80D54680:
/* 80D54680  38 7B 4E C8 */	addi r3, r27, 0x4ec8
/* 80D54684  7F A4 EB 78 */	mr r4, r29
/* 80D54688  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha
/* 80D5468C  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l
/* 80D54690  38 C0 00 00 */	li r6, 0
/* 80D54694  4B 2E E2 80 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
lbl_80D54698:
/* 80D54698  80 9C 00 00 */	lwz r4, 0(r28)
/* 80D5469C  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303031@ha */
/* 80D546A0  38 03 30 31 */	addi r0, r3, 0x3031 /* 0x30303031@l */
/* 80D546A4  7C 04 00 00 */	cmpw r4, r0
/* 80D546A8  41 82 00 08 */	beq lbl_80D546B0
/* 80D546AC  48 00 00 54 */	b lbl_80D54700
lbl_80D546B0:
/* 80D546B0  38 7B 4E C8 */	addi r3, r27, 0x4ec8
/* 80D546B4  A0 1B 4F A2 */	lhz r0, 0x4fa2(r27)
/* 80D546B8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D546BC  41 82 00 38 */	beq lbl_80D546F4
/* 80D546C0  4B 2E E2 E8 */	b onSkipFade__14dEvt_control_cFv
/* 80D546C4  38 00 00 0B */	li r0, 0xb
/* 80D546C8  90 1D 05 88 */	stw r0, 0x588(r29)
/* 80D546CC  80 1D 05 88 */	lwz r0, 0x588(r29)
/* 80D546D0  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80D546D4  3C 60 80 D5 */	lis r3, ActionTable__13daTagTWGate_c@ha
/* 80D546D8  38 03 5A D0 */	addi r0, r3, ActionTable__13daTagTWGate_c@l
/* 80D546DC  7C 00 22 14 */	add r0, r0, r4
/* 80D546E0  90 1D 05 84 */	stw r0, 0x584(r29)
/* 80D546E4  7F A3 EB 78 */	mr r3, r29
/* 80D546E8  81 9D 05 84 */	lwz r12, 0x584(r29)
/* 80D546EC  4B 60 D9 98 */	b __ptmf_scall
/* 80D546F0  60 00 00 00 */	nop 
lbl_80D546F4:
/* 80D546F4  7F E3 FB 78 */	mr r3, r31
/* 80D546F8  7F C4 F3 78 */	mr r4, r30
/* 80D546FC  4B 2F 3A 80 */	b cutEnd__16dEvent_manager_cFi
lbl_80D54700:
/* 80D54700  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80D54704  28 00 00 02 */	cmplwi r0, 2
/* 80D54708  40 82 00 50 */	bne lbl_80D54758
/* 80D5470C  A8 9D 05 DC */	lha r4, 0x5dc(r29)
/* 80D54710  2C 04 FF FF */	cmpwi r4, -1
/* 80D54714  41 82 00 44 */	beq lbl_80D54758
/* 80D54718  7F E3 FB 78 */	mr r3, r31
/* 80D5471C  4B 2F 33 5C */	b endCheck__16dEvent_manager_cFs
/* 80D54720  2C 03 00 00 */	cmpwi r3, 0
/* 80D54724  41 82 00 34 */	beq lbl_80D54758
/* 80D54728  38 00 00 0B */	li r0, 0xb
/* 80D5472C  90 1D 05 88 */	stw r0, 0x588(r29)
/* 80D54730  80 1D 05 88 */	lwz r0, 0x588(r29)
/* 80D54734  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80D54738  3C 60 80 D5 */	lis r3, ActionTable__13daTagTWGate_c@ha
/* 80D5473C  38 03 5A D0 */	addi r0, r3, ActionTable__13daTagTWGate_c@l
/* 80D54740  7C 00 22 14 */	add r0, r0, r4
/* 80D54744  90 1D 05 84 */	stw r0, 0x584(r29)
/* 80D54748  7F A3 EB 78 */	mr r3, r29
/* 80D5474C  81 9D 05 84 */	lwz r12, 0x584(r29)
/* 80D54750  4B 60 D9 34 */	b __ptmf_scall
/* 80D54754  60 00 00 00 */	nop 
lbl_80D54758:
/* 80D54758  39 61 00 20 */	addi r11, r1, 0x20
/* 80D5475C  4B 60 DA C4 */	b _restgpr_27
/* 80D54760  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D54764  7C 08 03 A6 */	mtlr r0
/* 80D54768  38 21 00 20 */	addi r1, r1, 0x20
/* 80D5476C  4E 80 00 20 */	blr 
