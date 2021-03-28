lbl_80B969F4:
/* 80B969F4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B969F8  7C 08 02 A6 */	mflr r0
/* 80B969FC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B96A00  39 61 00 40 */	addi r11, r1, 0x40
/* 80B96A04  4B 7C B7 CC */	b _savegpr_26
/* 80B96A08  7C 7B 1B 78 */	mr r27, r3
/* 80B96A0C  3C 60 80 BA */	lis r3, cNullVec__6Z2Calc@ha
/* 80B96A10  3B C3 B2 84 */	addi r30, r3, cNullVec__6Z2Calc@l
/* 80B96A14  3B 80 00 00 */	li r28, 0
/* 80B96A18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B96A1C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80B96A20  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 80B96A24  28 00 00 00 */	cmplwi r0, 0
/* 80B96A28  41 82 03 70 */	beq lbl_80B96D98
/* 80B96A2C  3B BF 4F F8 */	addi r29, r31, 0x4ff8
/* 80B96A30  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80B96A34  28 00 00 01 */	cmplwi r0, 1
/* 80B96A38  41 82 00 0C */	beq lbl_80B96A44
/* 80B96A3C  28 00 00 02 */	cmplwi r0, 2
/* 80B96A40  40 82 00 0C */	bne lbl_80B96A4C
lbl_80B96A44:
/* 80B96A44  38 00 00 00 */	li r0, 0
/* 80B96A48  98 1B 09 ED */	stb r0, 0x9ed(r27)
lbl_80B96A4C:
/* 80B96A4C  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80B96A50  28 00 00 01 */	cmplwi r0, 1
/* 80B96A54  40 82 00 B0 */	bne lbl_80B96B04
/* 80B96A58  80 7E 02 DC */	lwz r3, 0x2dc(r30)
/* 80B96A5C  80 1E 02 E0 */	lwz r0, 0x2e0(r30)
/* 80B96A60  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80B96A64  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B96A68  80 1E 02 E4 */	lwz r0, 0x2e4(r30)
/* 80B96A6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B96A70  7F 63 DB 78 */	mr r3, r27
/* 80B96A74  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B96A78  4B FF FC C9 */	bl chkAction__11daNpc_zrZ_cFM11daNpc_zrZ_cFPCvPvPv_i
/* 80B96A7C  2C 03 00 00 */	cmpwi r3, 0
/* 80B96A80  41 82 00 1C */	beq lbl_80B96A9C
/* 80B96A84  7F 63 DB 78 */	mr r3, r27
/* 80B96A88  38 80 00 00 */	li r4, 0
/* 80B96A8C  39 9B 14 0C */	addi r12, r27, 0x140c
/* 80B96A90  4B 7C B5 F4 */	b __ptmf_scall
/* 80B96A94  60 00 00 00 */	nop 
/* 80B96A98  48 00 00 64 */	b lbl_80B96AFC
lbl_80B96A9C:
/* 80B96A9C  38 00 00 00 */	li r0, 0
/* 80B96AA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B96AA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B96AA8  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 80B96AAC  28 03 00 01 */	cmplwi r3, 1
/* 80B96AB0  41 82 00 0C */	beq lbl_80B96ABC
/* 80B96AB4  28 03 00 02 */	cmplwi r3, 2
/* 80B96AB8  40 82 00 08 */	bne lbl_80B96AC0
lbl_80B96ABC:
/* 80B96ABC  38 00 00 01 */	li r0, 1
lbl_80B96AC0:
/* 80B96AC0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B96AC4  41 82 00 14 */	beq lbl_80B96AD8
/* 80B96AC8  7F A3 EB 78 */	mr r3, r29
/* 80B96ACC  4B 4B 1D 24 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80B96AD0  2C 03 00 00 */	cmpwi r3, 0
/* 80B96AD4  41 82 00 28 */	beq lbl_80B96AFC
lbl_80B96AD8:
/* 80B96AD8  80 7E 02 E8 */	lwz r3, 0x2e8(r30)
/* 80B96ADC  80 1E 02 EC */	lwz r0, 0x2ec(r30)
/* 80B96AE0  90 61 00 10 */	stw r3, 0x10(r1)
/* 80B96AE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B96AE8  80 1E 02 F0 */	lwz r0, 0x2f0(r30)
/* 80B96AEC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B96AF0  7F 63 DB 78 */	mr r3, r27
/* 80B96AF4  38 81 00 10 */	addi r4, r1, 0x10
/* 80B96AF8  4B FF FC 75 */	bl setAction__11daNpc_zrZ_cFM11daNpc_zrZ_cFPCvPvPv_i
lbl_80B96AFC:
/* 80B96AFC  3B 80 00 01 */	li r28, 1
/* 80B96B00  48 00 02 00 */	b lbl_80B96D00
lbl_80B96B04:
/* 80B96B04  80 9B 14 30 */	lwz r4, 0x1430(r27)
/* 80B96B08  3C 04 00 01 */	addis r0, r4, 1
/* 80B96B0C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B96B10  41 82 00 14 */	beq lbl_80B96B24
/* 80B96B14  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80B96B18  4B 4A CB D4 */	b setPtI_Id__14dEvt_control_cFUi
/* 80B96B1C  38 00 FF FF */	li r0, -1
/* 80B96B20  90 1B 14 30 */	stw r0, 0x1430(r27)
lbl_80B96B24:
/* 80B96B24  7F A3 EB 78 */	mr r3, r29
/* 80B96B28  80 9E 01 38 */	lwz r4, 0x138(r30)
/* 80B96B2C  38 A0 00 00 */	li r5, 0
/* 80B96B30  38 C0 00 00 */	li r6, 0
/* 80B96B34  4B 4B 0F E8 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B96B38  7C 7A 1B 78 */	mr r26, r3
/* 80B96B3C  2C 1A FF FF */	cmpwi r26, -1
/* 80B96B40  41 82 00 5C */	beq lbl_80B96B9C
/* 80B96B44  93 5B 09 2C */	stw r26, 0x92c(r27)
/* 80B96B48  7F A3 EB 78 */	mr r3, r29
/* 80B96B4C  7F 44 D3 78 */	mr r4, r26
/* 80B96B50  38 BE 01 3C */	addi r5, r30, 0x13c
/* 80B96B54  38 C0 00 08 */	li r6, 8
/* 80B96B58  38 E0 00 00 */	li r7, 0
/* 80B96B5C  39 00 00 00 */	li r8, 0
/* 80B96B60  4B 4B 12 B0 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80B96B64  7C 60 1B 78 */	mr r0, r3
/* 80B96B68  7F 63 DB 78 */	mr r3, r27
/* 80B96B6C  7F 44 D3 78 */	mr r4, r26
/* 80B96B70  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80B96B74  39 9E 01 B0 */	addi r12, r30, 0x1b0
/* 80B96B78  7D 8C 02 14 */	add r12, r12, r0
/* 80B96B7C  4B 7C B5 08 */	b __ptmf_scall
/* 80B96B80  60 00 00 00 */	nop 
/* 80B96B84  2C 03 00 00 */	cmpwi r3, 0
/* 80B96B88  41 82 00 10 */	beq lbl_80B96B98
/* 80B96B8C  7F A3 EB 78 */	mr r3, r29
/* 80B96B90  7F 44 D3 78 */	mr r4, r26
/* 80B96B94  4B 4B 15 E8 */	b cutEnd__16dEvent_manager_cFi
lbl_80B96B98:
/* 80B96B98  3B 80 00 01 */	li r28, 1
lbl_80B96B9C:
/* 80B96B9C  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80B96BA0  28 00 00 02 */	cmplwi r0, 2
/* 80B96BA4  40 82 01 5C */	bne lbl_80B96D00
/* 80B96BA8  A8 9B 09 D4 */	lha r4, 0x9d4(r27)
/* 80B96BAC  2C 04 FF FF */	cmpwi r4, -1
/* 80B96BB0  41 82 01 28 */	beq lbl_80B96CD8
/* 80B96BB4  7F A3 EB 78 */	mr r3, r29
/* 80B96BB8  4B 4B 0E C0 */	b endCheck__16dEvent_manager_cFs
/* 80B96BBC  2C 03 00 00 */	cmpwi r3, 0
/* 80B96BC0  41 82 01 18 */	beq lbl_80B96CD8
/* 80B96BC4  A0 1B 09 E6 */	lhz r0, 0x9e6(r27)
/* 80B96BC8  2C 00 00 04 */	cmpwi r0, 4
/* 80B96BCC  41 82 00 5C */	beq lbl_80B96C28
/* 80B96BD0  40 80 00 10 */	bge lbl_80B96BE0
/* 80B96BD4  2C 00 00 01 */	cmpwi r0, 1
/* 80B96BD8  41 82 00 94 */	beq lbl_80B96C6C
/* 80B96BDC  48 00 00 E0 */	b lbl_80B96CBC
lbl_80B96BE0:
/* 80B96BE0  2C 00 00 06 */	cmpwi r0, 6
/* 80B96BE4  41 82 00 AC */	beq lbl_80B96C90
/* 80B96BE8  40 80 00 D4 */	bge lbl_80B96CBC
/* 80B96BEC  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80B96BF0  4B 4A B8 78 */	b reset__14dEvt_control_cFv
/* 80B96BF4  38 00 00 00 */	li r0, 0
/* 80B96BF8  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80B96BFC  38 00 FF FF */	li r0, -1
/* 80B96C00  B0 1B 09 D4 */	sth r0, 0x9d4(r27)
/* 80B96C04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B96C08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B96C0C  88 9B 14 55 */	lbz r4, 0x1455(r27)
/* 80B96C10  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80B96C14  7C 05 07 74 */	extsb r5, r0
/* 80B96C18  4B 49 E5 E8 */	b onSwitch__10dSv_info_cFii
/* 80B96C1C  7F 63 DB 78 */	mr r3, r27
/* 80B96C20  4B 48 30 5C */	b fopAcM_delete__FP10fopAc_ac_c
/* 80B96C24  48 00 00 DC */	b lbl_80B96D00
lbl_80B96C28:
/* 80B96C28  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80B96C2C  4B 4A B8 3C */	b reset__14dEvt_control_cFv
/* 80B96C30  38 00 00 01 */	li r0, 1
/* 80B96C34  98 1B 14 91 */	stb r0, 0x1491(r27)
/* 80B96C38  38 00 00 04 */	li r0, 4
/* 80B96C3C  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80B96C40  38 00 FF FF */	li r0, -1
/* 80B96C44  B0 1B 09 D4 */	sth r0, 0x9d4(r27)
/* 80B96C48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B96C4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B96C50  88 9B 14 55 */	lbz r4, 0x1455(r27)
/* 80B96C54  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80B96C58  7C 05 07 74 */	extsb r5, r0
/* 80B96C5C  4B 49 E5 A4 */	b onSwitch__10dSv_info_cFii
/* 80B96C60  7F 63 DB 78 */	mr r3, r27
/* 80B96C64  4B 48 30 18 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80B96C68  48 00 00 98 */	b lbl_80B96D00
lbl_80B96C6C:
/* 80B96C6C  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80B96C70  4B 4A B7 F8 */	b reset__14dEvt_control_cFv
/* 80B96C74  38 00 00 00 */	li r0, 0
/* 80B96C78  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80B96C7C  38 00 FF FF */	li r0, -1
/* 80B96C80  B0 1B 09 D4 */	sth r0, 0x9d4(r27)
/* 80B96C84  7F 63 DB 78 */	mr r3, r27
/* 80B96C88  4B 48 2F F4 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80B96C8C  48 00 00 74 */	b lbl_80B96D00
lbl_80B96C90:
/* 80B96C90  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80B96C94  4B 4A B7 D4 */	b reset__14dEvt_control_cFv
/* 80B96C98  38 00 00 00 */	li r0, 0
/* 80B96C9C  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80B96CA0  38 00 FF FF */	li r0, -1
/* 80B96CA4  B0 1B 09 D4 */	sth r0, 0x9d4(r27)
/* 80B96CA8  80 7B 14 9C */	lwz r3, 0x149c(r27)
/* 80B96CAC  28 03 00 00 */	cmplwi r3, 0
/* 80B96CB0  41 82 00 50 */	beq lbl_80B96D00
/* 80B96CB4  4B 48 2F C8 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80B96CB8  48 00 00 48 */	b lbl_80B96D00
lbl_80B96CBC:
/* 80B96CBC  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80B96CC0  4B 4A B7 A8 */	b reset__14dEvt_control_cFv
/* 80B96CC4  38 00 00 00 */	li r0, 0
/* 80B96CC8  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80B96CCC  38 00 FF FF */	li r0, -1
/* 80B96CD0  B0 1B 09 D4 */	sth r0, 0x9d4(r27)
/* 80B96CD4  48 00 00 2C */	b lbl_80B96D00
lbl_80B96CD8:
/* 80B96CD8  A0 1B 09 E6 */	lhz r0, 0x9e6(r27)
/* 80B96CDC  2C 00 00 06 */	cmpwi r0, 6
/* 80B96CE0  41 82 00 08 */	beq lbl_80B96CE8
/* 80B96CE4  48 00 00 1C */	b lbl_80B96D00
lbl_80B96CE8:
/* 80B96CE8  7F 63 DB 78 */	mr r3, r27
/* 80B96CEC  38 80 00 06 */	li r4, 6
/* 80B96CF0  38 A0 00 07 */	li r5, 7
/* 80B96CF4  48 00 00 FD */	bl setSkipZev__11daNpc_zrZ_cFii
/* 80B96CF8  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80B96CFC  4B 4A BC AC */	b onSkipFade__14dEvt_control_cFv
lbl_80B96D00:
/* 80B96D00  83 5B 09 50 */	lwz r26, 0x950(r27)
/* 80B96D04  7F 63 DB 78 */	mr r3, r27
/* 80B96D08  38 81 00 0C */	addi r4, r1, 0xc
/* 80B96D0C  38 A1 00 08 */	addi r5, r1, 8
/* 80B96D10  7F 66 DB 78 */	mr r6, r27
/* 80B96D14  38 E0 00 00 */	li r7, 0
/* 80B96D18  4B 5B CA 00 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80B96D1C  2C 03 00 00 */	cmpwi r3, 0
/* 80B96D20  41 82 00 58 */	beq lbl_80B96D78
/* 80B96D24  88 1B 09 EB */	lbz r0, 0x9eb(r27)
/* 80B96D28  28 00 00 00 */	cmplwi r0, 0
/* 80B96D2C  40 82 00 A8 */	bne lbl_80B96DD4
/* 80B96D30  7F 63 DB 78 */	mr r3, r27
/* 80B96D34  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B96D38  3C A0 80 BA */	lis r5, lit_4991@ha
/* 80B96D3C  C0 25 B0 A4 */	lfs f1, lit_4991@l(r5)
/* 80B96D40  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B96D44  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B96D48  7D 89 03 A6 */	mtctr r12
/* 80B96D4C  4E 80 04 21 */	bctrl 
/* 80B96D50  7F 63 DB 78 */	mr r3, r27
/* 80B96D54  80 81 00 08 */	lwz r4, 8(r1)
/* 80B96D58  3C A0 80 BA */	lis r5, lit_4991@ha
/* 80B96D5C  C0 25 B0 A4 */	lfs f1, lit_4991@l(r5)
/* 80B96D60  38 A0 00 00 */	li r5, 0
/* 80B96D64  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B96D68  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B96D6C  7D 89 03 A6 */	mtctr r12
/* 80B96D70  4E 80 04 21 */	bctrl 
/* 80B96D74  48 00 00 60 */	b lbl_80B96DD4
lbl_80B96D78:
/* 80B96D78  2C 1A 00 00 */	cmpwi r26, 0
/* 80B96D7C  41 82 00 58 */	beq lbl_80B96DD4
/* 80B96D80  88 1B 09 EB */	lbz r0, 0x9eb(r27)
/* 80B96D84  28 00 00 00 */	cmplwi r0, 0
/* 80B96D88  40 82 00 4C */	bne lbl_80B96DD4
/* 80B96D8C  7F 63 DB 78 */	mr r3, r27
/* 80B96D90  48 00 03 99 */	bl setExpressionTalkAfter__11daNpc_zrZ_cFv
/* 80B96D94  48 00 00 40 */	b lbl_80B96DD4
lbl_80B96D98:
/* 80B96D98  38 00 00 00 */	li r0, 0
/* 80B96D9C  90 1B 09 50 */	stw r0, 0x950(r27)
/* 80B96DA0  80 1B 09 2C */	lwz r0, 0x92c(r27)
/* 80B96DA4  2C 00 FF FF */	cmpwi r0, -1
/* 80B96DA8  41 82 00 2C */	beq lbl_80B96DD4
/* 80B96DAC  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80B96DB0  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80B96DB4  80 64 00 00 */	lwz r3, 0(r4)
/* 80B96DB8  80 04 00 04 */	lwz r0, 4(r4)
/* 80B96DBC  90 7B 14 0C */	stw r3, 0x140c(r27)
/* 80B96DC0  90 1B 14 10 */	stw r0, 0x1410(r27)
/* 80B96DC4  80 04 00 08 */	lwz r0, 8(r4)
/* 80B96DC8  90 1B 14 14 */	stw r0, 0x1414(r27)
/* 80B96DCC  38 00 FF FF */	li r0, -1
/* 80B96DD0  90 1B 09 2C */	stw r0, 0x92c(r27)
lbl_80B96DD4:
/* 80B96DD4  7F 83 E3 78 */	mr r3, r28
/* 80B96DD8  39 61 00 40 */	addi r11, r1, 0x40
/* 80B96DDC  4B 7C B4 40 */	b _restgpr_26
/* 80B96DE0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B96DE4  7C 08 03 A6 */	mtlr r0
/* 80B96DE8  38 21 00 40 */	addi r1, r1, 0x40
/* 80B96DEC  4E 80 00 20 */	blr 
