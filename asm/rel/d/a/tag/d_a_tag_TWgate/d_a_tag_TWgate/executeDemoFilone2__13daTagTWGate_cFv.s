lbl_80D52BF0:
/* 80D52BF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D52BF4  7C 08 02 A6 */	mflr r0
/* 80D52BF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D52BFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80D52C00  4B 60 F5 D5 */	bl _savegpr_27
/* 80D52C04  7C 7C 1B 78 */	mr r28, r3
/* 80D52C08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D52C0C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D52C10  3B DF 4F F8 */	addi r30, r31, 0x4ff8
/* 80D52C14  7F C3 F3 78 */	mr r3, r30
/* 80D52C18  3C 80 80 D5 */	lis r4, l_myName@ha /* 0x80D55994@ha */
/* 80D52C1C  38 84 59 94 */	addi r4, r4, l_myName@l /* 0x80D55994@l */
/* 80D52C20  80 84 00 00 */	lwz r4, 0(r4)
/* 80D52C24  38 A0 00 00 */	li r5, 0
/* 80D52C28  38 C0 00 00 */	li r6, 0
/* 80D52C2C  4B 2F 4E F1 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D52C30  7C 7D 1B 78 */	mr r29, r3
/* 80D52C34  2C 1D FF FF */	cmpwi r29, -1
/* 80D52C38  41 82 01 64 */	beq lbl_80D52D9C
/* 80D52C3C  7F C3 F3 78 */	mr r3, r30
/* 80D52C40  7F A4 EB 78 */	mr r4, r29
/* 80D52C44  4B 2F 53 19 */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80D52C48  7C 7B 1B 78 */	mr r27, r3
/* 80D52C4C  7F C3 F3 78 */	mr r3, r30
/* 80D52C50  7F A4 EB 78 */	mr r4, r29
/* 80D52C54  4B 2F 50 F9 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80D52C58  2C 03 00 00 */	cmpwi r3, 0
/* 80D52C5C  41 82 00 34 */	beq lbl_80D52C90
/* 80D52C60  80 9B 00 00 */	lwz r4, 0(r27)
/* 80D52C64  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80D52C68  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80D52C6C  7C 04 00 00 */	cmpw r4, r0
/* 80D52C70  41 82 00 10 */	beq lbl_80D52C80
/* 80D52C74  40 80 00 1C */	bge lbl_80D52C90
/* 80D52C78  48 00 00 18 */	b lbl_80D52C90
/* 80D52C7C  48 00 00 14 */	b lbl_80D52C90
lbl_80D52C80:
/* 80D52C80  7F 83 E3 78 */	mr r3, r28
/* 80D52C84  38 80 0B C1 */	li r4, 0xbc1
/* 80D52C88  38 A0 00 00 */	li r5, 0
/* 80D52C8C  48 00 23 A1 */	bl initTalk__13daTagTWGate_cFiPP10fopAc_ac_c
lbl_80D52C90:
/* 80D52C90  80 9B 00 00 */	lwz r4, 0(r27)
/* 80D52C94  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80D52C98  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80D52C9C  7C 04 00 00 */	cmpw r4, r0
/* 80D52CA0  41 82 00 34 */	beq lbl_80D52CD4
/* 80D52CA4  40 80 00 14 */	bge lbl_80D52CB8
/* 80D52CA8  38 03 30 31 */	addi r0, r3, 0x3031
/* 80D52CAC  7C 04 00 00 */	cmpw r4, r0
/* 80D52CB0  40 80 00 14 */	bge lbl_80D52CC4
/* 80D52CB4  48 00 00 84 */	b lbl_80D52D38
lbl_80D52CB8:
/* 80D52CB8  38 03 30 34 */	addi r0, r3, 0x3034
/* 80D52CBC  7C 04 00 00 */	cmpw r4, r0
/* 80D52CC0  40 80 00 78 */	bge lbl_80D52D38
lbl_80D52CC4:
/* 80D52CC4  7F C3 F3 78 */	mr r3, r30
/* 80D52CC8  7F A4 EB 78 */	mr r4, r29
/* 80D52CCC  4B 2F 54 B1 */	bl cutEnd__16dEvent_manager_cFi
/* 80D52CD0  48 00 00 68 */	b lbl_80D52D38
lbl_80D52CD4:
/* 80D52CD4  7F 83 E3 78 */	mr r3, r28
/* 80D52CD8  38 80 00 00 */	li r4, 0
/* 80D52CDC  38 A0 00 01 */	li r5, 1
/* 80D52CE0  38 C0 00 00 */	li r6, 0
/* 80D52CE4  48 00 23 85 */	bl talkProc__13daTagTWGate_cFPiiPP10fopAc_ac_c
/* 80D52CE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D52CEC  41 82 00 4C */	beq lbl_80D52D38
/* 80D52CF0  A0 1C 05 C6 */	lhz r0, 0x5c6(r28)
/* 80D52CF4  7C 00 07 35 */	extsh. r0, r0
/* 80D52CF8  40 82 00 34 */	bne lbl_80D52D2C
/* 80D52CFC  38 00 00 03 */	li r0, 3
/* 80D52D00  90 1C 05 88 */	stw r0, 0x588(r28)
/* 80D52D04  80 1C 05 88 */	lwz r0, 0x588(r28)
/* 80D52D08  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80D52D0C  3C 60 80 D5 */	lis r3, ActionTable__13daTagTWGate_c@ha /* 0x80D55AD0@ha */
/* 80D52D10  38 03 5A D0 */	addi r0, r3, ActionTable__13daTagTWGate_c@l /* 0x80D55AD0@l */
/* 80D52D14  7C 00 22 14 */	add r0, r0, r4
/* 80D52D18  90 1C 05 84 */	stw r0, 0x584(r28)
/* 80D52D1C  7F 83 E3 78 */	mr r3, r28
/* 80D52D20  81 9C 05 84 */	lwz r12, 0x584(r28)
/* 80D52D24  4B 60 F3 61 */	bl __ptmf_scall
/* 80D52D28  60 00 00 00 */	nop 
lbl_80D52D2C:
/* 80D52D2C  7F C3 F3 78 */	mr r3, r30
/* 80D52D30  7F A4 EB 78 */	mr r4, r29
/* 80D52D34  4B 2F 54 49 */	bl cutEnd__16dEvent_manager_cFi
lbl_80D52D38:
/* 80D52D38  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 80D52D3C  28 00 00 02 */	cmplwi r0, 2
/* 80D52D40  40 82 00 5C */	bne lbl_80D52D9C
/* 80D52D44  A8 9C 05 DC */	lha r4, 0x5dc(r28)
/* 80D52D48  2C 04 FF FF */	cmpwi r4, -1
/* 80D52D4C  41 82 00 50 */	beq lbl_80D52D9C
/* 80D52D50  7F C3 F3 78 */	mr r3, r30
/* 80D52D54  4B 2F 4D 25 */	bl endCheck__16dEvent_manager_cFs
/* 80D52D58  2C 03 00 00 */	cmpwi r3, 0
/* 80D52D5C  41 82 00 40 */	beq lbl_80D52D9C
/* 80D52D60  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D52D64  4B 2E F7 05 */	bl reset__14dEvt_control_cFv
/* 80D52D68  38 00 00 00 */	li r0, 0
/* 80D52D6C  98 1C 05 E0 */	stb r0, 0x5e0(r28)
/* 80D52D70  90 1C 05 88 */	stw r0, 0x588(r28)
/* 80D52D74  80 1C 05 88 */	lwz r0, 0x588(r28)
/* 80D52D78  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80D52D7C  3C 60 80 D5 */	lis r3, ActionTable__13daTagTWGate_c@ha /* 0x80D55AD0@ha */
/* 80D52D80  38 03 5A D0 */	addi r0, r3, ActionTable__13daTagTWGate_c@l /* 0x80D55AD0@l */
/* 80D52D84  7C 00 22 14 */	add r0, r0, r4
/* 80D52D88  90 1C 05 84 */	stw r0, 0x584(r28)
/* 80D52D8C  7F 83 E3 78 */	mr r3, r28
/* 80D52D90  81 9C 05 84 */	lwz r12, 0x584(r28)
/* 80D52D94  4B 60 F2 F1 */	bl __ptmf_scall
/* 80D52D98  60 00 00 00 */	nop 
lbl_80D52D9C:
/* 80D52D9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80D52DA0  4B 60 F4 81 */	bl _restgpr_27
/* 80D52DA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D52DA8  7C 08 03 A6 */	mtlr r0
/* 80D52DAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80D52DB0  4E 80 00 20 */	blr 
