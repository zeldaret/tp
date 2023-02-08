lbl_8048F9E8:
/* 8048F9E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048F9EC  7C 08 02 A6 */	mflr r0
/* 8048F9F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048F9F4  39 61 00 20 */	addi r11, r1, 0x20
/* 8048F9F8  4B ED 27 D9 */	bl _savegpr_26
/* 8048F9FC  7C 7D 1B 78 */	mr r29, r3
/* 8048FA00  3B C0 00 01 */	li r30, 1
/* 8048FA04  3C 80 80 45 */	lis r4, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 8048FA08  88 04 0D 64 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0@l(r4)  /* 0x80450D64@l */
/* 8048FA0C  98 03 04 E2 */	stb r0, 0x4e2(r3)
/* 8048FA10  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 8048FA14  3C 80 80 49 */	lis r4, lit_3757@ha /* 0x8049017C@ha */
/* 8048FA18  C0 24 01 7C */	lfs f1, lit_3757@l(r4)  /* 0x8049017C@l */
/* 8048FA1C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8048FA20  EC 21 00 2A */	fadds f1, f1, f0
/* 8048FA24  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8048FA28  D0 03 05 38 */	stfs f0, 0x538(r3)
/* 8048FA2C  D0 23 05 3C */	stfs f1, 0x53c(r3)
/* 8048FA30  D0 43 05 40 */	stfs f2, 0x540(r3)
/* 8048FA34  C0 03 05 38 */	lfs f0, 0x538(r3)
/* 8048FA38  D0 03 05 50 */	stfs f0, 0x550(r3)
/* 8048FA3C  C0 03 05 3C */	lfs f0, 0x53c(r3)
/* 8048FA40  D0 03 05 54 */	stfs f0, 0x554(r3)
/* 8048FA44  C0 03 05 40 */	lfs f0, 0x540(r3)
/* 8048FA48  D0 03 05 58 */	stfs f0, 0x558(r3)
/* 8048FA4C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048FA50  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048FA54  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 8048FA58  28 00 00 00 */	cmplwi r0, 0
/* 8048FA5C  41 82 01 54 */	beq lbl_8048FBB0
/* 8048FA60  3B C0 00 00 */	li r30, 0
/* 8048FA64  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 8048FA68  28 00 00 01 */	cmplwi r0, 1
/* 8048FA6C  40 82 00 5C */	bne lbl_8048FAC8
/* 8048FA70  38 80 FF FF */	li r4, -1
/* 8048FA74  88 BD 05 E4 */	lbz r5, 0x5e4(r29)
/* 8048FA78  48 00 05 D5 */	bl cut_speak__11daTag_Msg_cFii
/* 8048FA7C  2C 03 00 00 */	cmpwi r3, 0
/* 8048FA80  41 82 00 3C */	beq lbl_8048FABC
/* 8048FA84  88 1D 05 DC */	lbz r0, 0x5dc(r29)
/* 8048FA88  28 00 00 01 */	cmplwi r0, 1
/* 8048FA8C  40 82 00 24 */	bne lbl_8048FAB0
/* 8048FA90  88 9D 05 DF */	lbz r4, 0x5df(r29)
/* 8048FA94  28 04 00 FF */	cmplwi r4, 0xff
/* 8048FA98  41 82 00 18 */	beq lbl_8048FAB0
/* 8048FA9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048FAA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048FAA4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8048FAA8  7C 05 07 74 */	extsb r5, r0
/* 8048FAAC  4B BA 57 55 */	bl onSwitch__10dSv_info_cFii
lbl_8048FAB0:
/* 8048FAB0  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 8048FAB4  4B BB 29 B5 */	bl reset__14dEvt_control_cFv
/* 8048FAB8  3B C0 00 01 */	li r30, 1
lbl_8048FABC:
/* 8048FABC  38 00 00 00 */	li r0, 0
/* 8048FAC0  98 1D 05 E4 */	stb r0, 0x5e4(r29)
/* 8048FAC4  48 00 00 EC */	b lbl_8048FBB0
lbl_8048FAC8:
/* 8048FAC8  A8 9D 05 D0 */	lha r4, 0x5d0(r29)
/* 8048FACC  2C 04 FF FF */	cmpwi r4, -1
/* 8048FAD0  41 82 00 E0 */	beq lbl_8048FBB0
/* 8048FAD4  3B 5F 4F F8 */	addi r26, r31, 0x4ff8
/* 8048FAD8  7F 43 D3 78 */	mr r3, r26
/* 8048FADC  4B BB 7F 9D */	bl endCheck__16dEvent_manager_cFs
/* 8048FAE0  2C 03 00 00 */	cmpwi r3, 0
/* 8048FAE4  41 82 00 50 */	beq lbl_8048FB34
/* 8048FAE8  38 00 00 00 */	li r0, 0
/* 8048FAEC  90 1D 05 CC */	stw r0, 0x5cc(r29)
/* 8048FAF0  38 00 FF FF */	li r0, -1
/* 8048FAF4  B0 1D 05 D0 */	sth r0, 0x5d0(r29)
/* 8048FAF8  88 1D 05 DC */	lbz r0, 0x5dc(r29)
/* 8048FAFC  28 00 00 00 */	cmplwi r0, 0
/* 8048FB00  40 82 00 24 */	bne lbl_8048FB24
/* 8048FB04  88 9D 05 DF */	lbz r4, 0x5df(r29)
/* 8048FB08  28 04 00 FF */	cmplwi r4, 0xff
/* 8048FB0C  41 82 00 18 */	beq lbl_8048FB24
/* 8048FB10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048FB14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048FB18  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8048FB1C  7C 05 07 74 */	extsb r5, r0
/* 8048FB20  4B BA 56 E1 */	bl onSwitch__10dSv_info_cFii
lbl_8048FB24:
/* 8048FB24  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 8048FB28  4B BB 29 41 */	bl reset__14dEvt_control_cFv
/* 8048FB2C  3B C0 00 01 */	li r30, 1
/* 8048FB30  48 00 00 80 */	b lbl_8048FBB0
lbl_8048FB34:
/* 8048FB34  7F 43 D3 78 */	mr r3, r26
/* 8048FB38  38 9D 05 6C */	addi r4, r29, 0x56c
/* 8048FB3C  38 A0 00 00 */	li r5, 0
/* 8048FB40  38 C0 00 00 */	li r6, 0
/* 8048FB44  4B BB 7F D9 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 8048FB48  7C 7B 1B 78 */	mr r27, r3
/* 8048FB4C  7F 43 D3 78 */	mr r3, r26
/* 8048FB50  7F 64 DB 78 */	mr r4, r27
/* 8048FB54  3C A0 80 49 */	lis r5, mEvtCutTBL__11daTag_Msg_c@ha /* 0x804901D0@ha */
/* 8048FB58  38 A5 01 D0 */	addi r5, r5, mEvtCutTBL__11daTag_Msg_c@l /* 0x804901D0@l */
/* 8048FB5C  38 C0 00 02 */	li r6, 2
/* 8048FB60  38 E0 00 00 */	li r7, 0
/* 8048FB64  39 00 00 00 */	li r8, 0
/* 8048FB68  4B BB 82 A9 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 8048FB6C  7C 7C 1B 78 */	mr r28, r3
/* 8048FB70  7F 43 D3 78 */	mr r3, r26
/* 8048FB74  7F 64 DB 78 */	mr r4, r27
/* 8048FB78  4B BB 81 D5 */	bl getIsAddvance__16dEvent_manager_cFi
/* 8048FB7C  7C 65 1B 78 */	mr r5, r3
/* 8048FB80  38 60 00 00 */	li r3, 0
/* 8048FB84  2C 1C 00 00 */	cmpwi r28, 0
/* 8048FB88  41 82 00 08 */	beq lbl_8048FB90
/* 8048FB8C  48 00 00 10 */	b lbl_8048FB9C
lbl_8048FB90:
/* 8048FB90  7F A3 EB 78 */	mr r3, r29
/* 8048FB94  7F 64 DB 78 */	mr r4, r27
/* 8048FB98  48 00 04 B5 */	bl cut_speak__11daTag_Msg_cFii
lbl_8048FB9C:
/* 8048FB9C  2C 03 00 00 */	cmpwi r3, 0
/* 8048FBA0  41 82 00 10 */	beq lbl_8048FBB0
/* 8048FBA4  7F 43 D3 78 */	mr r3, r26
/* 8048FBA8  7F 64 DB 78 */	mr r4, r27
/* 8048FBAC  4B BB 85 D1 */	bl cutEnd__16dEvent_manager_cFi
lbl_8048FBB0:
/* 8048FBB0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8048FBB4  41 82 00 98 */	beq lbl_8048FC4C
/* 8048FBB8  7F A3 EB 78 */	mr r3, r29
/* 8048FBBC  48 00 00 B5 */	bl rangeCheck__11daTag_Msg_cFv
/* 8048FBC0  2C 03 00 00 */	cmpwi r3, 0
/* 8048FBC4  41 82 00 88 */	beq lbl_8048FC4C
/* 8048FBC8  7F A3 EB 78 */	mr r3, r29
/* 8048FBCC  48 00 02 4D */	bl otherCheck__11daTag_Msg_cFv
/* 8048FBD0  2C 03 00 00 */	cmpwi r3, 0
/* 8048FBD4  41 82 00 78 */	beq lbl_8048FC4C
/* 8048FBD8  88 1D 05 DD */	lbz r0, 0x5dd(r29)
/* 8048FBDC  28 00 00 00 */	cmplwi r0, 0
/* 8048FBE0  41 82 00 58 */	beq lbl_8048FC38
/* 8048FBE4  38 00 00 01 */	li r0, 1
/* 8048FBE8  90 1D 05 CC */	stw r0, 0x5cc(r29)
/* 8048FBEC  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 8048FBF0  7F A4 EB 78 */	mr r4, r29
/* 8048FBF4  80 1D 05 CC */	lwz r0, 0x5cc(r29)
/* 8048FBF8  54 00 10 3A */	slwi r0, r0, 2
/* 8048FBFC  3C A0 80 49 */	lis r5, l_evtNameTBL@ha /* 0x804901C8@ha */
/* 8048FC00  38 A5 01 C8 */	addi r5, r5, l_evtNameTBL@l /* 0x804901C8@l */
/* 8048FC04  7C A5 00 2E */	lwzx r5, r5, r0
/* 8048FC08  38 C0 00 FF */	li r6, 0xff
/* 8048FC0C  4B BB 7B 4D */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 8048FC10  B0 7D 05 D0 */	sth r3, 0x5d0(r29)
/* 8048FC14  7F A3 EB 78 */	mr r3, r29
/* 8048FC18  A8 9D 05 D0 */	lha r4, 0x5d0(r29)
/* 8048FC1C  38 A0 00 FF */	li r5, 0xff
/* 8048FC20  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8048FC24  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8048FC28  38 E0 00 00 */	li r7, 0
/* 8048FC2C  39 00 00 01 */	li r8, 1
/* 8048FC30  4B B8 BA 4D */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 8048FC34  48 00 00 18 */	b lbl_8048FC4C
lbl_8048FC38:
/* 8048FC38  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 8048FC3C  60 00 00 01 */	ori r0, r0, 1
/* 8048FC40  B0 1D 00 FA */	sth r0, 0xfa(r29)
/* 8048FC44  38 00 00 01 */	li r0, 1
/* 8048FC48  98 1D 05 E4 */	stb r0, 0x5e4(r29)
lbl_8048FC4C:
/* 8048FC4C  38 60 00 01 */	li r3, 1
/* 8048FC50  39 61 00 20 */	addi r11, r1, 0x20
/* 8048FC54  4B ED 25 C9 */	bl _restgpr_26
/* 8048FC58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048FC5C  7C 08 03 A6 */	mtlr r0
/* 8048FC60  38 21 00 20 */	addi r1, r1, 0x20
/* 8048FC64  4E 80 00 20 */	blr 
