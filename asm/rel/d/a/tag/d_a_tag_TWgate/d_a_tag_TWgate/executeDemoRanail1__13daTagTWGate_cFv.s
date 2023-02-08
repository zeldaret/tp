lbl_80D53C5C:
/* 80D53C5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D53C60  7C 08 02 A6 */	mflr r0
/* 80D53C64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D53C68  39 61 00 20 */	addi r11, r1, 0x20
/* 80D53C6C  4B 60 E5 69 */	bl _savegpr_27
/* 80D53C70  7C 7D 1B 78 */	mr r29, r3
/* 80D53C74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D53C78  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D53C7C  3B FB 4F F8 */	addi r31, r27, 0x4ff8
/* 80D53C80  7F E3 FB 78 */	mr r3, r31
/* 80D53C84  3C 80 80 D5 */	lis r4, l_myName@ha /* 0x80D55994@ha */
/* 80D53C88  38 84 59 94 */	addi r4, r4, l_myName@l /* 0x80D55994@l */
/* 80D53C8C  80 84 00 00 */	lwz r4, 0(r4)
/* 80D53C90  38 A0 00 00 */	li r5, 0
/* 80D53C94  38 C0 00 00 */	li r6, 0
/* 80D53C98  4B 2F 3E 85 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D53C9C  7C 7E 1B 78 */	mr r30, r3
/* 80D53CA0  2C 1E FF FF */	cmpwi r30, -1
/* 80D53CA4  41 82 01 18 */	beq lbl_80D53DBC
/* 80D53CA8  7F E3 FB 78 */	mr r3, r31
/* 80D53CAC  7F C4 F3 78 */	mr r4, r30
/* 80D53CB0  4B 2F 42 AD */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80D53CB4  7C 7C 1B 78 */	mr r28, r3
/* 80D53CB8  7F E3 FB 78 */	mr r3, r31
/* 80D53CBC  7F C4 F3 78 */	mr r4, r30
/* 80D53CC0  4B 2F 40 8D */	bl getIsAddvance__16dEvent_manager_cFi
/* 80D53CC4  2C 03 00 00 */	cmpwi r3, 0
/* 80D53CC8  41 82 00 34 */	beq lbl_80D53CFC
/* 80D53CCC  80 9C 00 00 */	lwz r4, 0(r28)
/* 80D53CD0  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303031@ha */
/* 80D53CD4  38 03 30 31 */	addi r0, r3, 0x3031 /* 0x30303031@l */
/* 80D53CD8  7C 04 00 00 */	cmpw r4, r0
/* 80D53CDC  41 82 00 08 */	beq lbl_80D53CE4
/* 80D53CE0  48 00 00 1C */	b lbl_80D53CFC
lbl_80D53CE4:
/* 80D53CE4  38 7B 4E C8 */	addi r3, r27, 0x4ec8
/* 80D53CE8  7F A4 EB 78 */	mr r4, r29
/* 80D53CEC  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha /* 0x800428DC@ha */
/* 80D53CF0  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l /* 0x800428DC@l */
/* 80D53CF4  38 C0 00 00 */	li r6, 0
/* 80D53CF8  4B 2E EC 1D */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
lbl_80D53CFC:
/* 80D53CFC  80 9C 00 00 */	lwz r4, 0(r28)
/* 80D53D00  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303031@ha */
/* 80D53D04  38 03 30 31 */	addi r0, r3, 0x3031 /* 0x30303031@l */
/* 80D53D08  7C 04 00 00 */	cmpw r4, r0
/* 80D53D0C  41 82 00 08 */	beq lbl_80D53D14
/* 80D53D10  48 00 00 54 */	b lbl_80D53D64
lbl_80D53D14:
/* 80D53D14  38 7B 4E C8 */	addi r3, r27, 0x4ec8
/* 80D53D18  A0 1B 4F A2 */	lhz r0, 0x4fa2(r27)
/* 80D53D1C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D53D20  41 82 00 38 */	beq lbl_80D53D58
/* 80D53D24  4B 2E EC 85 */	bl onSkipFade__14dEvt_control_cFv
/* 80D53D28  38 00 00 08 */	li r0, 8
/* 80D53D2C  90 1D 05 88 */	stw r0, 0x588(r29)
/* 80D53D30  80 1D 05 88 */	lwz r0, 0x588(r29)
/* 80D53D34  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80D53D38  3C 60 80 D5 */	lis r3, ActionTable__13daTagTWGate_c@ha /* 0x80D55AD0@ha */
/* 80D53D3C  38 03 5A D0 */	addi r0, r3, ActionTable__13daTagTWGate_c@l /* 0x80D55AD0@l */
/* 80D53D40  7C 00 22 14 */	add r0, r0, r4
/* 80D53D44  90 1D 05 84 */	stw r0, 0x584(r29)
/* 80D53D48  7F A3 EB 78 */	mr r3, r29
/* 80D53D4C  81 9D 05 84 */	lwz r12, 0x584(r29)
/* 80D53D50  4B 60 E3 35 */	bl __ptmf_scall
/* 80D53D54  60 00 00 00 */	nop 
lbl_80D53D58:
/* 80D53D58  7F E3 FB 78 */	mr r3, r31
/* 80D53D5C  7F C4 F3 78 */	mr r4, r30
/* 80D53D60  4B 2F 44 1D */	bl cutEnd__16dEvent_manager_cFi
lbl_80D53D64:
/* 80D53D64  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80D53D68  28 00 00 02 */	cmplwi r0, 2
/* 80D53D6C  40 82 00 50 */	bne lbl_80D53DBC
/* 80D53D70  A8 9D 05 DC */	lha r4, 0x5dc(r29)
/* 80D53D74  2C 04 FF FF */	cmpwi r4, -1
/* 80D53D78  41 82 00 44 */	beq lbl_80D53DBC
/* 80D53D7C  7F E3 FB 78 */	mr r3, r31
/* 80D53D80  4B 2F 3C F9 */	bl endCheck__16dEvent_manager_cFs
/* 80D53D84  2C 03 00 00 */	cmpwi r3, 0
/* 80D53D88  41 82 00 34 */	beq lbl_80D53DBC
/* 80D53D8C  38 00 00 08 */	li r0, 8
/* 80D53D90  90 1D 05 88 */	stw r0, 0x588(r29)
/* 80D53D94  80 1D 05 88 */	lwz r0, 0x588(r29)
/* 80D53D98  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80D53D9C  3C 60 80 D5 */	lis r3, ActionTable__13daTagTWGate_c@ha /* 0x80D55AD0@ha */
/* 80D53DA0  38 03 5A D0 */	addi r0, r3, ActionTable__13daTagTWGate_c@l /* 0x80D55AD0@l */
/* 80D53DA4  7C 00 22 14 */	add r0, r0, r4
/* 80D53DA8  90 1D 05 84 */	stw r0, 0x584(r29)
/* 80D53DAC  7F A3 EB 78 */	mr r3, r29
/* 80D53DB0  81 9D 05 84 */	lwz r12, 0x584(r29)
/* 80D53DB4  4B 60 E2 D1 */	bl __ptmf_scall
/* 80D53DB8  60 00 00 00 */	nop 
lbl_80D53DBC:
/* 80D53DBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80D53DC0  4B 60 E4 61 */	bl _restgpr_27
/* 80D53DC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D53DC8  7C 08 03 A6 */	mtlr r0
/* 80D53DCC  38 21 00 20 */	addi r1, r1, 0x20
/* 80D53DD0  4E 80 00 20 */	blr 
