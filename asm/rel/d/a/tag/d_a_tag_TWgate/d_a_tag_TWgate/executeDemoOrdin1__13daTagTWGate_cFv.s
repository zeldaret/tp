lbl_80D532DC:
/* 80D532DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D532E0  7C 08 02 A6 */	mflr r0
/* 80D532E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D532E8  39 61 00 20 */	addi r11, r1, 0x20
/* 80D532EC  4B 60 EE E9 */	bl _savegpr_27
/* 80D532F0  7C 7D 1B 78 */	mr r29, r3
/* 80D532F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D532F8  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D532FC  3B FB 4F F8 */	addi r31, r27, 0x4ff8
/* 80D53300  7F E3 FB 78 */	mr r3, r31
/* 80D53304  3C 80 80 D5 */	lis r4, l_myName@ha /* 0x80D55994@ha */
/* 80D53308  38 84 59 94 */	addi r4, r4, l_myName@l /* 0x80D55994@l */
/* 80D5330C  80 84 00 00 */	lwz r4, 0(r4)
/* 80D53310  38 A0 00 00 */	li r5, 0
/* 80D53314  38 C0 00 00 */	li r6, 0
/* 80D53318  4B 2F 48 05 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D5331C  7C 7E 1B 78 */	mr r30, r3
/* 80D53320  2C 1E FF FF */	cmpwi r30, -1
/* 80D53324  41 82 01 18 */	beq lbl_80D5343C
/* 80D53328  7F E3 FB 78 */	mr r3, r31
/* 80D5332C  7F C4 F3 78 */	mr r4, r30
/* 80D53330  4B 2F 4C 2D */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80D53334  7C 7C 1B 78 */	mr r28, r3
/* 80D53338  7F E3 FB 78 */	mr r3, r31
/* 80D5333C  7F C4 F3 78 */	mr r4, r30
/* 80D53340  4B 2F 4A 0D */	bl getIsAddvance__16dEvent_manager_cFi
/* 80D53344  2C 03 00 00 */	cmpwi r3, 0
/* 80D53348  41 82 00 34 */	beq lbl_80D5337C
/* 80D5334C  80 9C 00 00 */	lwz r4, 0(r28)
/* 80D53350  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303031@ha */
/* 80D53354  38 03 30 31 */	addi r0, r3, 0x3031 /* 0x30303031@l */
/* 80D53358  7C 04 00 00 */	cmpw r4, r0
/* 80D5335C  41 82 00 08 */	beq lbl_80D53364
/* 80D53360  48 00 00 1C */	b lbl_80D5337C
lbl_80D53364:
/* 80D53364  38 7B 4E C8 */	addi r3, r27, 0x4ec8
/* 80D53368  7F A4 EB 78 */	mr r4, r29
/* 80D5336C  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha /* 0x800428DC@ha */
/* 80D53370  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l /* 0x800428DC@l */
/* 80D53374  38 C0 00 00 */	li r6, 0
/* 80D53378  4B 2E F5 9D */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
lbl_80D5337C:
/* 80D5337C  80 9C 00 00 */	lwz r4, 0(r28)
/* 80D53380  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303031@ha */
/* 80D53384  38 03 30 31 */	addi r0, r3, 0x3031 /* 0x30303031@l */
/* 80D53388  7C 04 00 00 */	cmpw r4, r0
/* 80D5338C  41 82 00 08 */	beq lbl_80D53394
/* 80D53390  48 00 00 54 */	b lbl_80D533E4
lbl_80D53394:
/* 80D53394  38 7B 4E C8 */	addi r3, r27, 0x4ec8
/* 80D53398  A0 1B 4F A2 */	lhz r0, 0x4fa2(r27)
/* 80D5339C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D533A0  41 82 00 38 */	beq lbl_80D533D8
/* 80D533A4  4B 2E F6 05 */	bl onSkipFade__14dEvt_control_cFv
/* 80D533A8  38 00 00 05 */	li r0, 5
/* 80D533AC  90 1D 05 88 */	stw r0, 0x588(r29)
/* 80D533B0  80 1D 05 88 */	lwz r0, 0x588(r29)
/* 80D533B4  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80D533B8  3C 60 80 D5 */	lis r3, ActionTable__13daTagTWGate_c@ha /* 0x80D55AD0@ha */
/* 80D533BC  38 03 5A D0 */	addi r0, r3, ActionTable__13daTagTWGate_c@l /* 0x80D55AD0@l */
/* 80D533C0  7C 00 22 14 */	add r0, r0, r4
/* 80D533C4  90 1D 05 84 */	stw r0, 0x584(r29)
/* 80D533C8  7F A3 EB 78 */	mr r3, r29
/* 80D533CC  81 9D 05 84 */	lwz r12, 0x584(r29)
/* 80D533D0  4B 60 EC B5 */	bl __ptmf_scall
/* 80D533D4  60 00 00 00 */	nop 
lbl_80D533D8:
/* 80D533D8  7F E3 FB 78 */	mr r3, r31
/* 80D533DC  7F C4 F3 78 */	mr r4, r30
/* 80D533E0  4B 2F 4D 9D */	bl cutEnd__16dEvent_manager_cFi
lbl_80D533E4:
/* 80D533E4  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80D533E8  28 00 00 02 */	cmplwi r0, 2
/* 80D533EC  40 82 00 50 */	bne lbl_80D5343C
/* 80D533F0  A8 9D 05 DC */	lha r4, 0x5dc(r29)
/* 80D533F4  2C 04 FF FF */	cmpwi r4, -1
/* 80D533F8  41 82 00 44 */	beq lbl_80D5343C
/* 80D533FC  7F E3 FB 78 */	mr r3, r31
/* 80D53400  4B 2F 46 79 */	bl endCheck__16dEvent_manager_cFs
/* 80D53404  2C 03 00 00 */	cmpwi r3, 0
/* 80D53408  41 82 00 34 */	beq lbl_80D5343C
/* 80D5340C  38 00 00 05 */	li r0, 5
/* 80D53410  90 1D 05 88 */	stw r0, 0x588(r29)
/* 80D53414  80 1D 05 88 */	lwz r0, 0x588(r29)
/* 80D53418  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80D5341C  3C 60 80 D5 */	lis r3, ActionTable__13daTagTWGate_c@ha /* 0x80D55AD0@ha */
/* 80D53420  38 03 5A D0 */	addi r0, r3, ActionTable__13daTagTWGate_c@l /* 0x80D55AD0@l */
/* 80D53424  7C 00 22 14 */	add r0, r0, r4
/* 80D53428  90 1D 05 84 */	stw r0, 0x584(r29)
/* 80D5342C  7F A3 EB 78 */	mr r3, r29
/* 80D53430  81 9D 05 84 */	lwz r12, 0x584(r29)
/* 80D53434  4B 60 EC 51 */	bl __ptmf_scall
/* 80D53438  60 00 00 00 */	nop 
lbl_80D5343C:
/* 80D5343C  39 61 00 20 */	addi r11, r1, 0x20
/* 80D53440  4B 60 ED E1 */	bl _restgpr_27
/* 80D53444  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D53448  7C 08 03 A6 */	mtlr r0
/* 80D5344C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D53450  4E 80 00 20 */	blr 
