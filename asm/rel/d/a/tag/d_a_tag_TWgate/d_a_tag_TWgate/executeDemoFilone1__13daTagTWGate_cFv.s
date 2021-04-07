lbl_80D5297C:
/* 80D5297C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D52980  7C 08 02 A6 */	mflr r0
/* 80D52984  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D52988  39 61 00 20 */	addi r11, r1, 0x20
/* 80D5298C  4B 60 F8 49 */	bl _savegpr_27
/* 80D52990  7C 7D 1B 78 */	mr r29, r3
/* 80D52994  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D52998  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D5299C  3B FB 4F F8 */	addi r31, r27, 0x4ff8
/* 80D529A0  7F E3 FB 78 */	mr r3, r31
/* 80D529A4  3C 80 80 D5 */	lis r4, l_myName@ha /* 0x80D55994@ha */
/* 80D529A8  38 84 59 94 */	addi r4, r4, l_myName@l /* 0x80D55994@l */
/* 80D529AC  80 84 00 00 */	lwz r4, 0(r4)
/* 80D529B0  38 A0 00 00 */	li r5, 0
/* 80D529B4  38 C0 00 00 */	li r6, 0
/* 80D529B8  4B 2F 51 65 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D529BC  7C 7E 1B 78 */	mr r30, r3
/* 80D529C0  2C 1E FF FF */	cmpwi r30, -1
/* 80D529C4  41 82 01 18 */	beq lbl_80D52ADC
/* 80D529C8  7F E3 FB 78 */	mr r3, r31
/* 80D529CC  7F C4 F3 78 */	mr r4, r30
/* 80D529D0  4B 2F 55 8D */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80D529D4  7C 7C 1B 78 */	mr r28, r3
/* 80D529D8  7F E3 FB 78 */	mr r3, r31
/* 80D529DC  7F C4 F3 78 */	mr r4, r30
/* 80D529E0  4B 2F 53 6D */	bl getIsAddvance__16dEvent_manager_cFi
/* 80D529E4  2C 03 00 00 */	cmpwi r3, 0
/* 80D529E8  41 82 00 34 */	beq lbl_80D52A1C
/* 80D529EC  80 9C 00 00 */	lwz r4, 0(r28)
/* 80D529F0  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303031@ha */
/* 80D529F4  38 03 30 31 */	addi r0, r3, 0x3031 /* 0x30303031@l */
/* 80D529F8  7C 04 00 00 */	cmpw r4, r0
/* 80D529FC  41 82 00 08 */	beq lbl_80D52A04
/* 80D52A00  48 00 00 1C */	b lbl_80D52A1C
lbl_80D52A04:
/* 80D52A04  38 7B 4E C8 */	addi r3, r27, 0x4ec8
/* 80D52A08  7F A4 EB 78 */	mr r4, r29
/* 80D52A0C  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha /* 0x800428DC@ha */
/* 80D52A10  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l /* 0x800428DC@l */
/* 80D52A14  38 C0 00 00 */	li r6, 0
/* 80D52A18  4B 2E FE FD */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
lbl_80D52A1C:
/* 80D52A1C  80 9C 00 00 */	lwz r4, 0(r28)
/* 80D52A20  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303031@ha */
/* 80D52A24  38 03 30 31 */	addi r0, r3, 0x3031 /* 0x30303031@l */
/* 80D52A28  7C 04 00 00 */	cmpw r4, r0
/* 80D52A2C  41 82 00 08 */	beq lbl_80D52A34
/* 80D52A30  48 00 00 54 */	b lbl_80D52A84
lbl_80D52A34:
/* 80D52A34  38 7B 4E C8 */	addi r3, r27, 0x4ec8
/* 80D52A38  A0 1B 4F A2 */	lhz r0, 0x4fa2(r27)
/* 80D52A3C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D52A40  41 82 00 38 */	beq lbl_80D52A78
/* 80D52A44  4B 2E FF 65 */	bl onSkipFade__14dEvt_control_cFv
/* 80D52A48  38 00 00 02 */	li r0, 2
/* 80D52A4C  90 1D 05 88 */	stw r0, 0x588(r29)
/* 80D52A50  80 1D 05 88 */	lwz r0, 0x588(r29)
/* 80D52A54  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80D52A58  3C 60 80 D5 */	lis r3, ActionTable__13daTagTWGate_c@ha /* 0x80D55AD0@ha */
/* 80D52A5C  38 03 5A D0 */	addi r0, r3, ActionTable__13daTagTWGate_c@l /* 0x80D55AD0@l */
/* 80D52A60  7C 00 22 14 */	add r0, r0, r4
/* 80D52A64  90 1D 05 84 */	stw r0, 0x584(r29)
/* 80D52A68  7F A3 EB 78 */	mr r3, r29
/* 80D52A6C  81 9D 05 84 */	lwz r12, 0x584(r29)
/* 80D52A70  4B 60 F6 15 */	bl __ptmf_scall
/* 80D52A74  60 00 00 00 */	nop 
lbl_80D52A78:
/* 80D52A78  7F E3 FB 78 */	mr r3, r31
/* 80D52A7C  7F C4 F3 78 */	mr r4, r30
/* 80D52A80  4B 2F 56 FD */	bl cutEnd__16dEvent_manager_cFi
lbl_80D52A84:
/* 80D52A84  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80D52A88  28 00 00 02 */	cmplwi r0, 2
/* 80D52A8C  40 82 00 50 */	bne lbl_80D52ADC
/* 80D52A90  A8 9D 05 DC */	lha r4, 0x5dc(r29)
/* 80D52A94  2C 04 FF FF */	cmpwi r4, -1
/* 80D52A98  41 82 00 44 */	beq lbl_80D52ADC
/* 80D52A9C  7F E3 FB 78 */	mr r3, r31
/* 80D52AA0  4B 2F 4F D9 */	bl endCheck__16dEvent_manager_cFs
/* 80D52AA4  2C 03 00 00 */	cmpwi r3, 0
/* 80D52AA8  41 82 00 34 */	beq lbl_80D52ADC
/* 80D52AAC  38 00 00 02 */	li r0, 2
/* 80D52AB0  90 1D 05 88 */	stw r0, 0x588(r29)
/* 80D52AB4  80 1D 05 88 */	lwz r0, 0x588(r29)
/* 80D52AB8  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80D52ABC  3C 60 80 D5 */	lis r3, ActionTable__13daTagTWGate_c@ha /* 0x80D55AD0@ha */
/* 80D52AC0  38 03 5A D0 */	addi r0, r3, ActionTable__13daTagTWGate_c@l /* 0x80D55AD0@l */
/* 80D52AC4  7C 00 22 14 */	add r0, r0, r4
/* 80D52AC8  90 1D 05 84 */	stw r0, 0x584(r29)
/* 80D52ACC  7F A3 EB 78 */	mr r3, r29
/* 80D52AD0  81 9D 05 84 */	lwz r12, 0x584(r29)
/* 80D52AD4  4B 60 F5 B1 */	bl __ptmf_scall
/* 80D52AD8  60 00 00 00 */	nop 
lbl_80D52ADC:
/* 80D52ADC  39 61 00 20 */	addi r11, r1, 0x20
/* 80D52AE0  4B 60 F7 41 */	bl _restgpr_27
/* 80D52AE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D52AE8  7C 08 03 A6 */	mtlr r0
/* 80D52AEC  38 21 00 20 */	addi r1, r1, 0x20
/* 80D52AF0  4E 80 00 20 */	blr 
