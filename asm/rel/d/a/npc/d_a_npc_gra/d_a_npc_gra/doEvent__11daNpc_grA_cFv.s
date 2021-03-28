lbl_809C2C3C:
/* 809C2C3C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809C2C40  7C 08 02 A6 */	mflr r0
/* 809C2C44  90 01 00 44 */	stw r0, 0x44(r1)
/* 809C2C48  39 61 00 40 */	addi r11, r1, 0x40
/* 809C2C4C  4B 99 F5 84 */	b _savegpr_26
/* 809C2C50  7C 7B 1B 78 */	mr r27, r3
/* 809C2C54  3C 60 80 9D */	lis r3, cNullVec__6Z2Calc@ha
/* 809C2C58  3B C3 A6 14 */	addi r30, r3, cNullVec__6Z2Calc@l
/* 809C2C5C  3B 80 00 00 */	li r28, 0
/* 809C2C60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809C2C64  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 809C2C68  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 809C2C6C  28 00 00 00 */	cmplwi r0, 0
/* 809C2C70  41 82 03 A0 */	beq lbl_809C3010
/* 809C2C74  3B BF 4F F8 */	addi r29, r31, 0x4ff8
/* 809C2C78  88 1B 16 91 */	lbz r0, 0x1691(r27)
/* 809C2C7C  28 00 00 00 */	cmplwi r0, 0
/* 809C2C80  40 82 00 10 */	bne lbl_809C2C90
/* 809C2C84  38 00 00 00 */	li r0, 0
/* 809C2C88  98 1B 09 ED */	stb r0, 0x9ed(r27)
/* 809C2C8C  48 00 00 0C */	b lbl_809C2C98
lbl_809C2C90:
/* 809C2C90  38 00 00 01 */	li r0, 1
/* 809C2C94  98 1B 09 ED */	stb r0, 0x9ed(r27)
lbl_809C2C98:
/* 809C2C98  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 809C2C9C  28 00 00 01 */	cmplwi r0, 1
/* 809C2CA0  40 82 01 0C */	bne lbl_809C2DAC
/* 809C2CA4  80 7E 08 B4 */	lwz r3, 0x8b4(r30)
/* 809C2CA8  80 1E 08 B8 */	lwz r0, 0x8b8(r30)
/* 809C2CAC  90 61 00 1C */	stw r3, 0x1c(r1)
/* 809C2CB0  90 01 00 20 */	stw r0, 0x20(r1)
/* 809C2CB4  80 1E 08 BC */	lwz r0, 0x8bc(r30)
/* 809C2CB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 809C2CBC  7F 63 DB 78 */	mr r3, r27
/* 809C2CC0  38 81 00 1C */	addi r4, r1, 0x1c
/* 809C2CC4  4B FF FB F9 */	bl chkAction__11daNpc_grA_cFM11daNpc_grA_cFPCvPvPv_i
/* 809C2CC8  2C 03 00 00 */	cmpwi r3, 0
/* 809C2CCC  41 82 00 1C */	beq lbl_809C2CE8
/* 809C2CD0  7F 63 DB 78 */	mr r3, r27
/* 809C2CD4  38 80 00 00 */	li r4, 0
/* 809C2CD8  39 9B 14 10 */	addi r12, r27, 0x1410
/* 809C2CDC  4B 99 F3 A8 */	b __ptmf_scall
/* 809C2CE0  60 00 00 00 */	nop 
/* 809C2CE4  48 00 00 C0 */	b lbl_809C2DA4
lbl_809C2CE8:
/* 809C2CE8  38 00 00 00 */	li r0, 0
/* 809C2CEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809C2CF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809C2CF4  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 809C2CF8  28 03 00 01 */	cmplwi r3, 1
/* 809C2CFC  41 82 00 0C */	beq lbl_809C2D08
/* 809C2D00  28 03 00 02 */	cmplwi r3, 2
/* 809C2D04  40 82 00 08 */	bne lbl_809C2D0C
lbl_809C2D08:
/* 809C2D08  38 00 00 01 */	li r0, 1
lbl_809C2D0C:
/* 809C2D0C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809C2D10  41 82 00 14 */	beq lbl_809C2D24
/* 809C2D14  7F A3 EB 78 */	mr r3, r29
/* 809C2D18  4B 68 5A D8 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 809C2D1C  2C 03 00 00 */	cmpwi r3, 0
/* 809C2D20  41 82 00 84 */	beq lbl_809C2DA4
lbl_809C2D24:
/* 809C2D24  88 1B 14 87 */	lbz r0, 0x1487(r27)
/* 809C2D28  28 00 00 00 */	cmplwi r0, 0
/* 809C2D2C  40 82 00 2C */	bne lbl_809C2D58
/* 809C2D30  80 7E 08 C0 */	lwz r3, 0x8c0(r30)
/* 809C2D34  80 1E 08 C4 */	lwz r0, 0x8c4(r30)
/* 809C2D38  90 61 00 10 */	stw r3, 0x10(r1)
/* 809C2D3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C2D40  80 1E 08 C8 */	lwz r0, 0x8c8(r30)
/* 809C2D44  90 01 00 18 */	stw r0, 0x18(r1)
/* 809C2D48  7F 63 DB 78 */	mr r3, r27
/* 809C2D4C  38 81 00 10 */	addi r4, r1, 0x10
/* 809C2D50  4B FF FB 99 */	bl setAction__11daNpc_grA_cFM11daNpc_grA_cFPCvPvPv_i
/* 809C2D54  48 00 00 50 */	b lbl_809C2DA4
lbl_809C2D58:
/* 809C2D58  38 00 00 01 */	li r0, 1
/* 809C2D5C  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 809C2D60  A0 1B 09 E6 */	lhz r0, 0x9e6(r27)
/* 809C2D64  54 06 18 38 */	slwi r6, r0, 3
/* 809C2D68  7F 63 DB 78 */	mr r3, r27
/* 809C2D6C  38 BE 02 68 */	addi r5, r30, 0x268
/* 809C2D70  7C 85 32 14 */	add r4, r5, r6
/* 809C2D74  80 04 00 04 */	lwz r0, 4(r4)
/* 809C2D78  54 00 10 3A */	slwi r0, r0, 2
/* 809C2D7C  38 9E 04 C0 */	addi r4, r30, 0x4c0
/* 809C2D80  7C 84 00 2E */	lwzx r4, r4, r0
/* 809C2D84  7C 05 30 2E */	lwzx r0, r5, r6
/* 809C2D88  54 00 10 3A */	slwi r0, r0, 2
/* 809C2D8C  38 BE 02 C0 */	addi r5, r30, 0x2c0
/* 809C2D90  7C A5 00 2E */	lwzx r5, r5, r0
/* 809C2D94  38 C0 00 02 */	li r6, 2
/* 809C2D98  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 809C2D9C  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 809C2DA0  4B 79 0B B4 */	b changeEvent__8daNpcF_cFPcPcUsUs
lbl_809C2DA4:
/* 809C2DA4  3B 80 00 01 */	li r28, 1
/* 809C2DA8  48 00 01 A0 */	b lbl_809C2F48
lbl_809C2DAC:
/* 809C2DAC  80 9B 14 80 */	lwz r4, 0x1480(r27)
/* 809C2DB0  3C 04 00 01 */	addis r0, r4, 1
/* 809C2DB4  28 00 FF FF */	cmplwi r0, 0xffff
/* 809C2DB8  41 82 00 14 */	beq lbl_809C2DCC
/* 809C2DBC  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 809C2DC0  4B 68 09 2C */	b setPtI_Id__14dEvt_control_cFUi
/* 809C2DC4  38 00 FF FF */	li r0, -1
/* 809C2DC8  90 1B 14 80 */	stw r0, 0x1480(r27)
lbl_809C2DCC:
/* 809C2DCC  88 1B 00 FF */	lbz r0, 0xff(r27)
/* 809C2DD0  7C 00 07 75 */	extsb. r0, r0
/* 809C2DD4  40 81 00 20 */	ble lbl_809C2DF4
/* 809C2DD8  7F A3 EB 78 */	mr r3, r29
/* 809C2DDC  80 9B 14 7C */	lwz r4, 0x147c(r27)
/* 809C2DE0  7F 65 DB 78 */	mr r5, r27
/* 809C2DE4  38 C0 00 00 */	li r6, 0
/* 809C2DE8  4B 68 4D 34 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 809C2DEC  7C 7A 1B 78 */	mr r26, r3
/* 809C2DF0  48 00 00 1C */	b lbl_809C2E0C
lbl_809C2DF4:
/* 809C2DF4  7F A3 EB 78 */	mr r3, r29
/* 809C2DF8  80 9B 14 7C */	lwz r4, 0x147c(r27)
/* 809C2DFC  38 A0 00 00 */	li r5, 0
/* 809C2E00  38 C0 00 00 */	li r6, 0
/* 809C2E04  4B 68 4D 18 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 809C2E08  7C 7A 1B 78 */	mr r26, r3
lbl_809C2E0C:
/* 809C2E0C  2C 1A FF FF */	cmpwi r26, -1
/* 809C2E10  41 82 00 5C */	beq lbl_809C2E6C
/* 809C2E14  93 5B 09 2C */	stw r26, 0x92c(r27)
/* 809C2E18  7F A3 EB 78 */	mr r3, r29
/* 809C2E1C  7F 44 D3 78 */	mr r4, r26
/* 809C2E20  38 BE 05 0C */	addi r5, r30, 0x50c
/* 809C2E24  38 C0 00 0C */	li r6, 0xc
/* 809C2E28  38 E0 00 00 */	li r7, 0
/* 809C2E2C  39 00 00 00 */	li r8, 0
/* 809C2E30  4B 68 4F E0 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 809C2E34  7C 60 1B 78 */	mr r0, r3
/* 809C2E38  7F 63 DB 78 */	mr r3, r27
/* 809C2E3C  7F 44 D3 78 */	mr r4, r26
/* 809C2E40  1C 00 00 0C */	mulli r0, r0, 0xc
/* 809C2E44  39 9E 05 C0 */	addi r12, r30, 0x5c0
/* 809C2E48  7D 8C 02 14 */	add r12, r12, r0
/* 809C2E4C  4B 99 F2 38 */	b __ptmf_scall
/* 809C2E50  60 00 00 00 */	nop 
/* 809C2E54  2C 03 00 00 */	cmpwi r3, 0
/* 809C2E58  41 82 00 10 */	beq lbl_809C2E68
/* 809C2E5C  7F A3 EB 78 */	mr r3, r29
/* 809C2E60  7F 44 D3 78 */	mr r4, r26
/* 809C2E64  4B 68 53 18 */	b cutEnd__16dEvent_manager_cFi
lbl_809C2E68:
/* 809C2E68  3B 80 00 01 */	li r28, 1
lbl_809C2E6C:
/* 809C2E6C  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 809C2E70  28 00 00 02 */	cmplwi r0, 2
/* 809C2E74  40 82 00 D4 */	bne lbl_809C2F48
/* 809C2E78  A8 9B 09 D4 */	lha r4, 0x9d4(r27)
/* 809C2E7C  2C 04 FF FF */	cmpwi r4, -1
/* 809C2E80  41 82 00 C8 */	beq lbl_809C2F48
/* 809C2E84  7F A3 EB 78 */	mr r3, r29
/* 809C2E88  4B 68 4B F0 */	b endCheck__16dEvent_manager_cFs
/* 809C2E8C  2C 03 00 00 */	cmpwi r3, 0
/* 809C2E90  41 82 00 B8 */	beq lbl_809C2F48
/* 809C2E94  A0 1B 09 E6 */	lhz r0, 0x9e6(r27)
/* 809C2E98  2C 00 00 06 */	cmpwi r0, 6
/* 809C2E9C  41 82 00 54 */	beq lbl_809C2EF0
/* 809C2EA0  40 80 00 10 */	bge lbl_809C2EB0
/* 809C2EA4  2C 00 00 05 */	cmpwi r0, 5
/* 809C2EA8  40 80 00 14 */	bge lbl_809C2EBC
/* 809C2EAC  48 00 00 84 */	b lbl_809C2F30
lbl_809C2EB0:
/* 809C2EB0  2C 00 00 08 */	cmpwi r0, 8
/* 809C2EB4  40 80 00 7C */	bge lbl_809C2F30
/* 809C2EB8  48 00 00 54 */	b lbl_809C2F0C
lbl_809C2EBC:
/* 809C2EBC  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 809C2EC0  4B 67 F5 A8 */	b reset__14dEvt_control_cFv
/* 809C2EC4  38 60 00 00 */	li r3, 0
/* 809C2EC8  B0 7B 09 E6 */	sth r3, 0x9e6(r27)
/* 809C2ECC  38 00 FF FF */	li r0, -1
/* 809C2ED0  B0 1B 09 D4 */	sth r0, 0x9d4(r27)
/* 809C2ED4  98 7B 16 92 */	stb r3, 0x1692(r27)
/* 809C2ED8  98 7B 16 93 */	stb r3, 0x1693(r27)
/* 809C2EDC  3C 60 80 9C */	lis r3, s_subCarry__FPvPv@ha
/* 809C2EE0  38 63 FD 04 */	addi r3, r3, s_subCarry__FPvPv@l
/* 809C2EE4  7F 64 DB 78 */	mr r4, r27
/* 809C2EE8  4B 65 E4 50 */	b fpcEx_Search__FPFPvPv_PvPv
/* 809C2EEC  48 00 00 5C */	b lbl_809C2F48
lbl_809C2EF0:
/* 809C2EF0  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 809C2EF4  4B 67 F5 74 */	b reset__14dEvt_control_cFv
/* 809C2EF8  38 00 00 00 */	li r0, 0
/* 809C2EFC  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 809C2F00  38 00 FF FF */	li r0, -1
/* 809C2F04  B0 1B 09 D4 */	sth r0, 0x9d4(r27)
/* 809C2F08  48 00 00 40 */	b lbl_809C2F48
lbl_809C2F0C:
/* 809C2F0C  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 809C2F10  4B 67 F5 58 */	b reset__14dEvt_control_cFv
/* 809C2F14  38 00 00 00 */	li r0, 0
/* 809C2F18  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 809C2F1C  38 00 FF FF */	li r0, -1
/* 809C2F20  B0 1B 09 D4 */	sth r0, 0x9d4(r27)
/* 809C2F24  7F 63 DB 78 */	mr r3, r27
/* 809C2F28  4B 65 6D 54 */	b fopAcM_delete__FP10fopAc_ac_c
/* 809C2F2C  48 00 00 1C */	b lbl_809C2F48
lbl_809C2F30:
/* 809C2F30  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 809C2F34  4B 67 F5 34 */	b reset__14dEvt_control_cFv
/* 809C2F38  38 00 00 00 */	li r0, 0
/* 809C2F3C  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 809C2F40  38 00 FF FF */	li r0, -1
/* 809C2F44  B0 1B 09 D4 */	sth r0, 0x9d4(r27)
lbl_809C2F48:
/* 809C2F48  83 5B 09 50 */	lwz r26, 0x950(r27)
/* 809C2F4C  7F 63 DB 78 */	mr r3, r27
/* 809C2F50  38 81 00 0C */	addi r4, r1, 0xc
/* 809C2F54  38 A1 00 08 */	addi r5, r1, 8
/* 809C2F58  7F 66 DB 78 */	mr r6, r27
/* 809C2F5C  38 E0 00 00 */	li r7, 0
/* 809C2F60  4B 79 07 B8 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 809C2F64  2C 03 00 00 */	cmpwi r3, 0
/* 809C2F68  41 82 00 58 */	beq lbl_809C2FC0
/* 809C2F6C  88 1B 09 EB */	lbz r0, 0x9eb(r27)
/* 809C2F70  28 00 00 00 */	cmplwi r0, 0
/* 809C2F74  40 82 00 68 */	bne lbl_809C2FDC
/* 809C2F78  7F 63 DB 78 */	mr r3, r27
/* 809C2F7C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 809C2F80  3C A0 80 9D */	lis r5, lit_6106@ha
/* 809C2F84  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)
/* 809C2F88  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809C2F8C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C2F90  7D 89 03 A6 */	mtctr r12
/* 809C2F94  4E 80 04 21 */	bctrl 
/* 809C2F98  7F 63 DB 78 */	mr r3, r27
/* 809C2F9C  80 81 00 08 */	lwz r4, 8(r1)
/* 809C2FA0  3C A0 80 9D */	lis r5, lit_6106@ha
/* 809C2FA4  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)
/* 809C2FA8  38 A0 00 00 */	li r5, 0
/* 809C2FAC  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809C2FB0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C2FB4  7D 89 03 A6 */	mtctr r12
/* 809C2FB8  4E 80 04 21 */	bctrl 
/* 809C2FBC  48 00 00 20 */	b lbl_809C2FDC
lbl_809C2FC0:
/* 809C2FC0  2C 1A 00 00 */	cmpwi r26, 0
/* 809C2FC4  41 82 00 18 */	beq lbl_809C2FDC
/* 809C2FC8  88 1B 09 EB */	lbz r0, 0x9eb(r27)
/* 809C2FCC  28 00 00 00 */	cmplwi r0, 0
/* 809C2FD0  40 82 00 0C */	bne lbl_809C2FDC
/* 809C2FD4  7F 63 DB 78 */	mr r3, r27
/* 809C2FD8  48 00 05 F9 */	bl setExpressionTalkAfter__11daNpc_grA_cFv
lbl_809C2FDC:
/* 809C2FDC  A8 1B 09 DE */	lha r0, 0x9de(r27)
/* 809C2FE0  2C 00 00 04 */	cmpwi r0, 4
/* 809C2FE4  41 82 00 70 */	beq lbl_809C3054
/* 809C2FE8  40 80 00 10 */	bge lbl_809C2FF8
/* 809C2FEC  2C 00 00 03 */	cmpwi r0, 3
/* 809C2FF0  40 80 00 10 */	bge lbl_809C3000
/* 809C2FF4  48 00 00 60 */	b lbl_809C3054
lbl_809C2FF8:
/* 809C2FF8  2C 00 00 09 */	cmpwi r0, 9
/* 809C2FFC  40 80 00 58 */	bge lbl_809C3054
lbl_809C3000:
/* 809C3000  80 1B 09 9C */	lwz r0, 0x99c(r27)
/* 809C3004  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 809C3008  90 1B 09 9C */	stw r0, 0x99c(r27)
/* 809C300C  48 00 00 48 */	b lbl_809C3054
lbl_809C3010:
/* 809C3010  38 00 00 00 */	li r0, 0
/* 809C3014  90 1B 09 50 */	stw r0, 0x950(r27)
/* 809C3018  80 1B 09 2C */	lwz r0, 0x92c(r27)
/* 809C301C  2C 00 FF FF */	cmpwi r0, -1
/* 809C3020  41 82 00 2C */	beq lbl_809C304C
/* 809C3024  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 809C3028  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 809C302C  80 64 00 00 */	lwz r3, 0(r4)
/* 809C3030  80 04 00 04 */	lwz r0, 4(r4)
/* 809C3034  90 7B 14 10 */	stw r3, 0x1410(r27)
/* 809C3038  90 1B 14 14 */	stw r0, 0x1414(r27)
/* 809C303C  80 04 00 08 */	lwz r0, 8(r4)
/* 809C3040  90 1B 14 18 */	stw r0, 0x1418(r27)
/* 809C3044  38 00 FF FF */	li r0, -1
/* 809C3048  90 1B 09 2C */	stw r0, 0x92c(r27)
lbl_809C304C:
/* 809C304C  38 00 00 00 */	li r0, 0
/* 809C3050  90 1B 09 50 */	stw r0, 0x950(r27)
lbl_809C3054:
/* 809C3054  7F 83 E3 78 */	mr r3, r28
/* 809C3058  39 61 00 40 */	addi r11, r1, 0x40
/* 809C305C  4B 99 F1 C0 */	b _restgpr_26
/* 809C3060  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809C3064  7C 08 03 A6 */	mtlr r0
/* 809C3068  38 21 00 40 */	addi r1, r1, 0x40
/* 809C306C  4E 80 00 20 */	blr 
