lbl_80D5486C:
/* 80D5486C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D54870  7C 08 02 A6 */	mflr r0
/* 80D54874  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D54878  39 61 00 20 */	addi r11, r1, 0x20
/* 80D5487C  4B 60 D9 58 */	b _savegpr_27
/* 80D54880  7C 7C 1B 78 */	mr r28, r3
/* 80D54884  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D54888  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80D5488C  3B DF 4F F8 */	addi r30, r31, 0x4ff8
/* 80D54890  7F C3 F3 78 */	mr r3, r30
/* 80D54894  3C 80 80 D5 */	lis r4, l_myName@ha
/* 80D54898  38 84 59 94 */	addi r4, r4, l_myName@l
/* 80D5489C  80 84 00 00 */	lwz r4, 0(r4)
/* 80D548A0  38 A0 00 00 */	li r5, 0
/* 80D548A4  38 C0 00 00 */	li r6, 0
/* 80D548A8  4B 2F 32 74 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D548AC  7C 7D 1B 78 */	mr r29, r3
/* 80D548B0  2C 1D FF FF */	cmpwi r29, -1
/* 80D548B4  41 82 01 64 */	beq lbl_80D54A18
/* 80D548B8  7F C3 F3 78 */	mr r3, r30
/* 80D548BC  7F A4 EB 78 */	mr r4, r29
/* 80D548C0  4B 2F 36 9C */	b getMyNowCutName__16dEvent_manager_cFi
/* 80D548C4  7C 7B 1B 78 */	mr r27, r3
/* 80D548C8  7F C3 F3 78 */	mr r3, r30
/* 80D548CC  7F A4 EB 78 */	mr r4, r29
/* 80D548D0  4B 2F 34 7C */	b getIsAddvance__16dEvent_manager_cFi
/* 80D548D4  2C 03 00 00 */	cmpwi r3, 0
/* 80D548D8  41 82 00 34 */	beq lbl_80D5490C
/* 80D548DC  80 9B 00 00 */	lwz r4, 0(r27)
/* 80D548E0  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80D548E4  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80D548E8  7C 04 00 00 */	cmpw r4, r0
/* 80D548EC  41 82 00 10 */	beq lbl_80D548FC
/* 80D548F0  40 80 00 1C */	bge lbl_80D5490C
/* 80D548F4  48 00 00 18 */	b lbl_80D5490C
/* 80D548F8  48 00 00 14 */	b lbl_80D5490C
lbl_80D548FC:
/* 80D548FC  7F 83 E3 78 */	mr r3, r28
/* 80D54900  38 80 0B C1 */	li r4, 0xbc1
/* 80D54904  38 A0 00 00 */	li r5, 0
/* 80D54908  48 00 07 25 */	bl initTalk__13daTagTWGate_cFiPP10fopAc_ac_c
lbl_80D5490C:
/* 80D5490C  80 9B 00 00 */	lwz r4, 0(r27)
/* 80D54910  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80D54914  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80D54918  7C 04 00 00 */	cmpw r4, r0
/* 80D5491C  41 82 00 34 */	beq lbl_80D54950
/* 80D54920  40 80 00 14 */	bge lbl_80D54934
/* 80D54924  38 03 30 31 */	addi r0, r3, 0x3031
/* 80D54928  7C 04 00 00 */	cmpw r4, r0
/* 80D5492C  40 80 00 14 */	bge lbl_80D54940
/* 80D54930  48 00 00 84 */	b lbl_80D549B4
lbl_80D54934:
/* 80D54934  38 03 30 34 */	addi r0, r3, 0x3034
/* 80D54938  7C 04 00 00 */	cmpw r4, r0
/* 80D5493C  40 80 00 78 */	bge lbl_80D549B4
lbl_80D54940:
/* 80D54940  7F C3 F3 78 */	mr r3, r30
/* 80D54944  7F A4 EB 78 */	mr r4, r29
/* 80D54948  4B 2F 38 34 */	b cutEnd__16dEvent_manager_cFi
/* 80D5494C  48 00 00 68 */	b lbl_80D549B4
lbl_80D54950:
/* 80D54950  7F 83 E3 78 */	mr r3, r28
/* 80D54954  38 80 00 00 */	li r4, 0
/* 80D54958  38 A0 00 01 */	li r5, 1
/* 80D5495C  38 C0 00 00 */	li r6, 0
/* 80D54960  48 00 07 09 */	bl talkProc__13daTagTWGate_cFPiiPP10fopAc_ac_c
/* 80D54964  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D54968  41 82 00 4C */	beq lbl_80D549B4
/* 80D5496C  A0 1C 05 C6 */	lhz r0, 0x5c6(r28)
/* 80D54970  7C 00 07 35 */	extsh. r0, r0
/* 80D54974  40 82 00 34 */	bne lbl_80D549A8
/* 80D54978  38 00 00 0C */	li r0, 0xc
/* 80D5497C  90 1C 05 88 */	stw r0, 0x588(r28)
/* 80D54980  80 1C 05 88 */	lwz r0, 0x588(r28)
/* 80D54984  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80D54988  3C 60 80 D5 */	lis r3, ActionTable__13daTagTWGate_c@ha
/* 80D5498C  38 03 5A D0 */	addi r0, r3, ActionTable__13daTagTWGate_c@l
/* 80D54990  7C 00 22 14 */	add r0, r0, r4
/* 80D54994  90 1C 05 84 */	stw r0, 0x584(r28)
/* 80D54998  7F 83 E3 78 */	mr r3, r28
/* 80D5499C  81 9C 05 84 */	lwz r12, 0x584(r28)
/* 80D549A0  4B 60 D6 E4 */	b __ptmf_scall
/* 80D549A4  60 00 00 00 */	nop 
lbl_80D549A8:
/* 80D549A8  7F C3 F3 78 */	mr r3, r30
/* 80D549AC  7F A4 EB 78 */	mr r4, r29
/* 80D549B0  4B 2F 37 CC */	b cutEnd__16dEvent_manager_cFi
lbl_80D549B4:
/* 80D549B4  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 80D549B8  28 00 00 02 */	cmplwi r0, 2
/* 80D549BC  40 82 00 5C */	bne lbl_80D54A18
/* 80D549C0  A8 9C 05 DC */	lha r4, 0x5dc(r28)
/* 80D549C4  2C 04 FF FF */	cmpwi r4, -1
/* 80D549C8  41 82 00 50 */	beq lbl_80D54A18
/* 80D549CC  7F C3 F3 78 */	mr r3, r30
/* 80D549D0  4B 2F 30 A8 */	b endCheck__16dEvent_manager_cFs
/* 80D549D4  2C 03 00 00 */	cmpwi r3, 0
/* 80D549D8  41 82 00 40 */	beq lbl_80D54A18
/* 80D549DC  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D549E0  4B 2E DA 88 */	b reset__14dEvt_control_cFv
/* 80D549E4  38 00 00 00 */	li r0, 0
/* 80D549E8  98 1C 05 E0 */	stb r0, 0x5e0(r28)
/* 80D549EC  90 1C 05 88 */	stw r0, 0x588(r28)
/* 80D549F0  80 1C 05 88 */	lwz r0, 0x588(r28)
/* 80D549F4  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80D549F8  3C 60 80 D5 */	lis r3, ActionTable__13daTagTWGate_c@ha
/* 80D549FC  38 03 5A D0 */	addi r0, r3, ActionTable__13daTagTWGate_c@l
/* 80D54A00  7C 00 22 14 */	add r0, r0, r4
/* 80D54A04  90 1C 05 84 */	stw r0, 0x584(r28)
/* 80D54A08  7F 83 E3 78 */	mr r3, r28
/* 80D54A0C  81 9C 05 84 */	lwz r12, 0x584(r28)
/* 80D54A10  4B 60 D6 74 */	b __ptmf_scall
/* 80D54A14  60 00 00 00 */	nop 
lbl_80D54A18:
/* 80D54A18  39 61 00 20 */	addi r11, r1, 0x20
/* 80D54A1C  4B 60 D8 04 */	b _restgpr_27
/* 80D54A20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D54A24  7C 08 03 A6 */	mtlr r0
/* 80D54A28  38 21 00 20 */	addi r1, r1, 0x20
/* 80D54A2C  4E 80 00 20 */	blr 
