lbl_80D53ED0:
/* 80D53ED0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D53ED4  7C 08 02 A6 */	mflr r0
/* 80D53ED8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D53EDC  39 61 00 20 */	addi r11, r1, 0x20
/* 80D53EE0  4B 60 E2 F4 */	b _savegpr_27
/* 80D53EE4  7C 7C 1B 78 */	mr r28, r3
/* 80D53EE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D53EEC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80D53EF0  3B DF 4F F8 */	addi r30, r31, 0x4ff8
/* 80D53EF4  7F C3 F3 78 */	mr r3, r30
/* 80D53EF8  3C 80 80 D5 */	lis r4, l_myName@ha
/* 80D53EFC  38 84 59 94 */	addi r4, r4, l_myName@l
/* 80D53F00  80 84 00 00 */	lwz r4, 0(r4)
/* 80D53F04  38 A0 00 00 */	li r5, 0
/* 80D53F08  38 C0 00 00 */	li r6, 0
/* 80D53F0C  4B 2F 3C 10 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D53F10  7C 7D 1B 78 */	mr r29, r3
/* 80D53F14  2C 1D FF FF */	cmpwi r29, -1
/* 80D53F18  41 82 01 64 */	beq lbl_80D5407C
/* 80D53F1C  7F C3 F3 78 */	mr r3, r30
/* 80D53F20  7F A4 EB 78 */	mr r4, r29
/* 80D53F24  4B 2F 40 38 */	b getMyNowCutName__16dEvent_manager_cFi
/* 80D53F28  7C 7B 1B 78 */	mr r27, r3
/* 80D53F2C  7F C3 F3 78 */	mr r3, r30
/* 80D53F30  7F A4 EB 78 */	mr r4, r29
/* 80D53F34  4B 2F 3E 18 */	b getIsAddvance__16dEvent_manager_cFi
/* 80D53F38  2C 03 00 00 */	cmpwi r3, 0
/* 80D53F3C  41 82 00 34 */	beq lbl_80D53F70
/* 80D53F40  80 9B 00 00 */	lwz r4, 0(r27)
/* 80D53F44  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80D53F48  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80D53F4C  7C 04 00 00 */	cmpw r4, r0
/* 80D53F50  41 82 00 10 */	beq lbl_80D53F60
/* 80D53F54  40 80 00 1C */	bge lbl_80D53F70
/* 80D53F58  48 00 00 18 */	b lbl_80D53F70
/* 80D53F5C  48 00 00 14 */	b lbl_80D53F70
lbl_80D53F60:
/* 80D53F60  7F 83 E3 78 */	mr r3, r28
/* 80D53F64  38 80 0B C1 */	li r4, 0xbc1
/* 80D53F68  38 A0 00 00 */	li r5, 0
/* 80D53F6C  48 00 10 C1 */	bl initTalk__13daTagTWGate_cFiPP10fopAc_ac_c
lbl_80D53F70:
/* 80D53F70  80 9B 00 00 */	lwz r4, 0(r27)
/* 80D53F74  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80D53F78  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80D53F7C  7C 04 00 00 */	cmpw r4, r0
/* 80D53F80  41 82 00 34 */	beq lbl_80D53FB4
/* 80D53F84  40 80 00 14 */	bge lbl_80D53F98
/* 80D53F88  38 03 30 31 */	addi r0, r3, 0x3031
/* 80D53F8C  7C 04 00 00 */	cmpw r4, r0
/* 80D53F90  40 80 00 14 */	bge lbl_80D53FA4
/* 80D53F94  48 00 00 84 */	b lbl_80D54018
lbl_80D53F98:
/* 80D53F98  38 03 30 34 */	addi r0, r3, 0x3034
/* 80D53F9C  7C 04 00 00 */	cmpw r4, r0
/* 80D53FA0  40 80 00 78 */	bge lbl_80D54018
lbl_80D53FA4:
/* 80D53FA4  7F C3 F3 78 */	mr r3, r30
/* 80D53FA8  7F A4 EB 78 */	mr r4, r29
/* 80D53FAC  4B 2F 41 D0 */	b cutEnd__16dEvent_manager_cFi
/* 80D53FB0  48 00 00 68 */	b lbl_80D54018
lbl_80D53FB4:
/* 80D53FB4  7F 83 E3 78 */	mr r3, r28
/* 80D53FB8  38 80 00 00 */	li r4, 0
/* 80D53FBC  38 A0 00 01 */	li r5, 1
/* 80D53FC0  38 C0 00 00 */	li r6, 0
/* 80D53FC4  48 00 10 A5 */	bl talkProc__13daTagTWGate_cFPiiPP10fopAc_ac_c
/* 80D53FC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D53FCC  41 82 00 4C */	beq lbl_80D54018
/* 80D53FD0  A0 1C 05 C6 */	lhz r0, 0x5c6(r28)
/* 80D53FD4  7C 00 07 35 */	extsh. r0, r0
/* 80D53FD8  40 82 00 34 */	bne lbl_80D5400C
/* 80D53FDC  38 00 00 09 */	li r0, 9
/* 80D53FE0  90 1C 05 88 */	stw r0, 0x588(r28)
/* 80D53FE4  80 1C 05 88 */	lwz r0, 0x588(r28)
/* 80D53FE8  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80D53FEC  3C 60 80 D5 */	lis r3, ActionTable__13daTagTWGate_c@ha
/* 80D53FF0  38 03 5A D0 */	addi r0, r3, ActionTable__13daTagTWGate_c@l
/* 80D53FF4  7C 00 22 14 */	add r0, r0, r4
/* 80D53FF8  90 1C 05 84 */	stw r0, 0x584(r28)
/* 80D53FFC  7F 83 E3 78 */	mr r3, r28
/* 80D54000  81 9C 05 84 */	lwz r12, 0x584(r28)
/* 80D54004  4B 60 E0 80 */	b __ptmf_scall
/* 80D54008  60 00 00 00 */	nop 
lbl_80D5400C:
/* 80D5400C  7F C3 F3 78 */	mr r3, r30
/* 80D54010  7F A4 EB 78 */	mr r4, r29
/* 80D54014  4B 2F 41 68 */	b cutEnd__16dEvent_manager_cFi
lbl_80D54018:
/* 80D54018  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 80D5401C  28 00 00 02 */	cmplwi r0, 2
/* 80D54020  40 82 00 5C */	bne lbl_80D5407C
/* 80D54024  A8 9C 05 DC */	lha r4, 0x5dc(r28)
/* 80D54028  2C 04 FF FF */	cmpwi r4, -1
/* 80D5402C  41 82 00 50 */	beq lbl_80D5407C
/* 80D54030  7F C3 F3 78 */	mr r3, r30
/* 80D54034  4B 2F 3A 44 */	b endCheck__16dEvent_manager_cFs
/* 80D54038  2C 03 00 00 */	cmpwi r3, 0
/* 80D5403C  41 82 00 40 */	beq lbl_80D5407C
/* 80D54040  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D54044  4B 2E E4 24 */	b reset__14dEvt_control_cFv
/* 80D54048  38 00 00 00 */	li r0, 0
/* 80D5404C  98 1C 05 E0 */	stb r0, 0x5e0(r28)
/* 80D54050  90 1C 05 88 */	stw r0, 0x588(r28)
/* 80D54054  80 1C 05 88 */	lwz r0, 0x588(r28)
/* 80D54058  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80D5405C  3C 60 80 D5 */	lis r3, ActionTable__13daTagTWGate_c@ha
/* 80D54060  38 03 5A D0 */	addi r0, r3, ActionTable__13daTagTWGate_c@l
/* 80D54064  7C 00 22 14 */	add r0, r0, r4
/* 80D54068  90 1C 05 84 */	stw r0, 0x584(r28)
/* 80D5406C  7F 83 E3 78 */	mr r3, r28
/* 80D54070  81 9C 05 84 */	lwz r12, 0x584(r28)
/* 80D54074  4B 60 E0 10 */	b __ptmf_scall
/* 80D54078  60 00 00 00 */	nop 
lbl_80D5407C:
/* 80D5407C  39 61 00 20 */	addi r11, r1, 0x20
/* 80D54080  4B 60 E1 A0 */	b _restgpr_27
/* 80D54084  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D54088  7C 08 03 A6 */	mtlr r0
/* 80D5408C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D54090  4E 80 00 20 */	blr 
