lbl_80D53550:
/* 80D53550  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D53554  7C 08 02 A6 */	mflr r0
/* 80D53558  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D5355C  39 61 00 20 */	addi r11, r1, 0x20
/* 80D53560  4B 60 EC 74 */	b _savegpr_27
/* 80D53564  7C 7C 1B 78 */	mr r28, r3
/* 80D53568  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5356C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80D53570  3B DF 4F F8 */	addi r30, r31, 0x4ff8
/* 80D53574  7F C3 F3 78 */	mr r3, r30
/* 80D53578  3C 80 80 D5 */	lis r4, l_myName@ha
/* 80D5357C  38 84 59 94 */	addi r4, r4, l_myName@l
/* 80D53580  80 84 00 00 */	lwz r4, 0(r4)
/* 80D53584  38 A0 00 00 */	li r5, 0
/* 80D53588  38 C0 00 00 */	li r6, 0
/* 80D5358C  4B 2F 45 90 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D53590  7C 7D 1B 78 */	mr r29, r3
/* 80D53594  2C 1D FF FF */	cmpwi r29, -1
/* 80D53598  41 82 01 64 */	beq lbl_80D536FC
/* 80D5359C  7F C3 F3 78 */	mr r3, r30
/* 80D535A0  7F A4 EB 78 */	mr r4, r29
/* 80D535A4  4B 2F 49 B8 */	b getMyNowCutName__16dEvent_manager_cFi
/* 80D535A8  7C 7B 1B 78 */	mr r27, r3
/* 80D535AC  7F C3 F3 78 */	mr r3, r30
/* 80D535B0  7F A4 EB 78 */	mr r4, r29
/* 80D535B4  4B 2F 47 98 */	b getIsAddvance__16dEvent_manager_cFi
/* 80D535B8  2C 03 00 00 */	cmpwi r3, 0
/* 80D535BC  41 82 00 34 */	beq lbl_80D535F0
/* 80D535C0  80 9B 00 00 */	lwz r4, 0(r27)
/* 80D535C4  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80D535C8  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80D535CC  7C 04 00 00 */	cmpw r4, r0
/* 80D535D0  41 82 00 10 */	beq lbl_80D535E0
/* 80D535D4  40 80 00 1C */	bge lbl_80D535F0
/* 80D535D8  48 00 00 18 */	b lbl_80D535F0
/* 80D535DC  48 00 00 14 */	b lbl_80D535F0
lbl_80D535E0:
/* 80D535E0  7F 83 E3 78 */	mr r3, r28
/* 80D535E4  38 80 0B C1 */	li r4, 0xbc1
/* 80D535E8  38 A0 00 00 */	li r5, 0
/* 80D535EC  48 00 1A 41 */	bl initTalk__13daTagTWGate_cFiPP10fopAc_ac_c
lbl_80D535F0:
/* 80D535F0  80 9B 00 00 */	lwz r4, 0(r27)
/* 80D535F4  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80D535F8  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80D535FC  7C 04 00 00 */	cmpw r4, r0
/* 80D53600  41 82 00 34 */	beq lbl_80D53634
/* 80D53604  40 80 00 14 */	bge lbl_80D53618
/* 80D53608  38 03 30 31 */	addi r0, r3, 0x3031
/* 80D5360C  7C 04 00 00 */	cmpw r4, r0
/* 80D53610  40 80 00 14 */	bge lbl_80D53624
/* 80D53614  48 00 00 84 */	b lbl_80D53698
lbl_80D53618:
/* 80D53618  38 03 30 34 */	addi r0, r3, 0x3034
/* 80D5361C  7C 04 00 00 */	cmpw r4, r0
/* 80D53620  40 80 00 78 */	bge lbl_80D53698
lbl_80D53624:
/* 80D53624  7F C3 F3 78 */	mr r3, r30
/* 80D53628  7F A4 EB 78 */	mr r4, r29
/* 80D5362C  4B 2F 4B 50 */	b cutEnd__16dEvent_manager_cFi
/* 80D53630  48 00 00 68 */	b lbl_80D53698
lbl_80D53634:
/* 80D53634  7F 83 E3 78 */	mr r3, r28
/* 80D53638  38 80 00 00 */	li r4, 0
/* 80D5363C  38 A0 00 01 */	li r5, 1
/* 80D53640  38 C0 00 00 */	li r6, 0
/* 80D53644  48 00 1A 25 */	bl talkProc__13daTagTWGate_cFPiiPP10fopAc_ac_c
/* 80D53648  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D5364C  41 82 00 4C */	beq lbl_80D53698
/* 80D53650  A0 1C 05 C6 */	lhz r0, 0x5c6(r28)
/* 80D53654  7C 00 07 35 */	extsh. r0, r0
/* 80D53658  40 82 00 34 */	bne lbl_80D5368C
/* 80D5365C  38 00 00 06 */	li r0, 6
/* 80D53660  90 1C 05 88 */	stw r0, 0x588(r28)
/* 80D53664  80 1C 05 88 */	lwz r0, 0x588(r28)
/* 80D53668  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80D5366C  3C 60 80 D5 */	lis r3, ActionTable__13daTagTWGate_c@ha
/* 80D53670  38 03 5A D0 */	addi r0, r3, ActionTable__13daTagTWGate_c@l
/* 80D53674  7C 00 22 14 */	add r0, r0, r4
/* 80D53678  90 1C 05 84 */	stw r0, 0x584(r28)
/* 80D5367C  7F 83 E3 78 */	mr r3, r28
/* 80D53680  81 9C 05 84 */	lwz r12, 0x584(r28)
/* 80D53684  4B 60 EA 00 */	b __ptmf_scall
/* 80D53688  60 00 00 00 */	nop 
lbl_80D5368C:
/* 80D5368C  7F C3 F3 78 */	mr r3, r30
/* 80D53690  7F A4 EB 78 */	mr r4, r29
/* 80D53694  4B 2F 4A E8 */	b cutEnd__16dEvent_manager_cFi
lbl_80D53698:
/* 80D53698  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 80D5369C  28 00 00 02 */	cmplwi r0, 2
/* 80D536A0  40 82 00 5C */	bne lbl_80D536FC
/* 80D536A4  A8 9C 05 DC */	lha r4, 0x5dc(r28)
/* 80D536A8  2C 04 FF FF */	cmpwi r4, -1
/* 80D536AC  41 82 00 50 */	beq lbl_80D536FC
/* 80D536B0  7F C3 F3 78 */	mr r3, r30
/* 80D536B4  4B 2F 43 C4 */	b endCheck__16dEvent_manager_cFs
/* 80D536B8  2C 03 00 00 */	cmpwi r3, 0
/* 80D536BC  41 82 00 40 */	beq lbl_80D536FC
/* 80D536C0  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D536C4  4B 2E ED A4 */	b reset__14dEvt_control_cFv
/* 80D536C8  38 00 00 00 */	li r0, 0
/* 80D536CC  98 1C 05 E0 */	stb r0, 0x5e0(r28)
/* 80D536D0  90 1C 05 88 */	stw r0, 0x588(r28)
/* 80D536D4  80 1C 05 88 */	lwz r0, 0x588(r28)
/* 80D536D8  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80D536DC  3C 60 80 D5 */	lis r3, ActionTable__13daTagTWGate_c@ha
/* 80D536E0  38 03 5A D0 */	addi r0, r3, ActionTable__13daTagTWGate_c@l
/* 80D536E4  7C 00 22 14 */	add r0, r0, r4
/* 80D536E8  90 1C 05 84 */	stw r0, 0x584(r28)
/* 80D536EC  7F 83 E3 78 */	mr r3, r28
/* 80D536F0  81 9C 05 84 */	lwz r12, 0x584(r28)
/* 80D536F4  4B 60 E9 90 */	b __ptmf_scall
/* 80D536F8  60 00 00 00 */	nop 
lbl_80D536FC:
/* 80D536FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80D53700  4B 60 EB 20 */	b _restgpr_27
/* 80D53704  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D53708  7C 08 03 A6 */	mtlr r0
/* 80D5370C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D53710  4E 80 00 20 */	blr 
