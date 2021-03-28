lbl_80B90D48:
/* 80B90D48  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B90D4C  7C 08 02 A6 */	mflr r0
/* 80B90D50  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B90D54  39 61 00 40 */	addi r11, r1, 0x40
/* 80B90D58  4B 7D 14 78 */	b _savegpr_26
/* 80B90D5C  7C 7B 1B 78 */	mr r27, r3
/* 80B90D60  3C 60 80 B9 */	lis r3, cNullVec__6Z2Calc@ha
/* 80B90D64  3B C3 36 E8 */	addi r30, r3, cNullVec__6Z2Calc@l
/* 80B90D68  3B 80 00 00 */	li r28, 0
/* 80B90D6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B90D70  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80B90D74  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 80B90D78  28 00 00 00 */	cmplwi r0, 0
/* 80B90D7C  41 82 03 68 */	beq lbl_80B910E4
/* 80B90D80  3B BF 4F F8 */	addi r29, r31, 0x4ff8
/* 80B90D84  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80B90D88  28 00 00 01 */	cmplwi r0, 1
/* 80B90D8C  41 82 00 0C */	beq lbl_80B90D98
/* 80B90D90  28 00 00 02 */	cmplwi r0, 2
/* 80B90D94  40 82 00 18 */	bne lbl_80B90DAC
lbl_80B90D98:
/* 80B90D98  88 1B 0E 38 */	lbz r0, 0xe38(r27)
/* 80B90D9C  28 00 00 00 */	cmplwi r0, 0
/* 80B90DA0  40 82 00 0C */	bne lbl_80B90DAC
/* 80B90DA4  38 00 00 00 */	li r0, 0
/* 80B90DA8  98 1B 09 ED */	stb r0, 0x9ed(r27)
lbl_80B90DAC:
/* 80B90DAC  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80B90DB0  28 00 00 01 */	cmplwi r0, 1
/* 80B90DB4  40 82 01 74 */	bne lbl_80B90F28
/* 80B90DB8  80 7E 03 B0 */	lwz r3, 0x3b0(r30)
/* 80B90DBC  80 1E 03 B4 */	lwz r0, 0x3b4(r30)
/* 80B90DC0  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80B90DC4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B90DC8  80 1E 03 B8 */	lwz r0, 0x3b8(r30)
/* 80B90DCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B90DD0  7F 63 DB 78 */	mr r3, r27
/* 80B90DD4  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B90DD8  4B FF FC 95 */	bl chkAction__11daNpc_zrC_cFM11daNpc_zrC_cFPCvPvPv_i
/* 80B90DDC  2C 03 00 00 */	cmpwi r3, 0
/* 80B90DE0  41 82 00 1C */	beq lbl_80B90DFC
/* 80B90DE4  7F 63 DB 78 */	mr r3, r27
/* 80B90DE8  38 80 00 00 */	li r4, 0
/* 80B90DEC  39 9B 0D DC */	addi r12, r27, 0xddc
/* 80B90DF0  4B 7D 12 94 */	b __ptmf_scall
/* 80B90DF4  60 00 00 00 */	nop 
/* 80B90DF8  48 00 01 28 */	b lbl_80B90F20
lbl_80B90DFC:
/* 80B90DFC  3B 9F 4E C8 */	addi r28, r31, 0x4ec8
/* 80B90E00  38 00 00 00 */	li r0, 0
/* 80B90E04  88 7F 4F B5 */	lbz r3, 0x4fb5(r31)
/* 80B90E08  28 03 00 01 */	cmplwi r3, 1
/* 80B90E0C  41 82 00 0C */	beq lbl_80B90E18
/* 80B90E10  28 03 00 02 */	cmplwi r3, 2
/* 80B90E14  40 82 00 08 */	bne lbl_80B90E1C
lbl_80B90E18:
/* 80B90E18  38 00 00 01 */	li r0, 1
lbl_80B90E1C:
/* 80B90E1C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B90E20  41 82 00 DC */	beq lbl_80B90EFC
/* 80B90E24  7F A3 EB 78 */	mr r3, r29
/* 80B90E28  4B 4B 79 C8 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80B90E2C  2C 03 00 00 */	cmpwi r3, 0
/* 80B90E30  41 82 00 F0 */	beq lbl_80B90F20
/* 80B90E34  88 1B 0E 28 */	lbz r0, 0xe28(r27)
/* 80B90E38  28 00 00 02 */	cmplwi r0, 2
/* 80B90E3C  40 82 00 70 */	bne lbl_80B90EAC
/* 80B90E40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B90E44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B90E48  88 03 4F B6 */	lbz r0, 0x4fb6(r3)
/* 80B90E4C  28 00 00 91 */	cmplwi r0, 0x91
/* 80B90E50  40 82 00 5C */	bne lbl_80B90EAC
/* 80B90E54  38 00 00 35 */	li r0, 0x35
/* 80B90E58  90 1B 0E 20 */	stw r0, 0xe20(r27)
/* 80B90E5C  38 00 00 01 */	li r0, 1
/* 80B90E60  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80B90E64  A0 1B 09 E6 */	lhz r0, 0x9e6(r27)
/* 80B90E68  54 06 18 38 */	slwi r6, r0, 3
/* 80B90E6C  7F 63 DB 78 */	mr r3, r27
/* 80B90E70  38 BE 01 D0 */	addi r5, r30, 0x1d0
/* 80B90E74  7C 85 32 14 */	add r4, r5, r6
/* 80B90E78  80 04 00 04 */	lwz r0, 4(r4)
/* 80B90E7C  54 00 10 3A */	slwi r0, r0, 2
/* 80B90E80  38 9E 02 60 */	addi r4, r30, 0x260
/* 80B90E84  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B90E88  7C 05 30 2E */	lwzx r0, r5, r6
/* 80B90E8C  54 00 10 3A */	slwi r0, r0, 2
/* 80B90E90  38 BE 01 E0 */	addi r5, r30, 0x1e0
/* 80B90E94  7C A5 00 2E */	lwzx r5, r5, r0
/* 80B90E98  38 C0 00 02 */	li r6, 2
/* 80B90E9C  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 80B90EA0  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 80B90EA4  4B 5C 2A B0 */	b changeEvent__8daNpcF_cFPcPcUsUs
/* 80B90EA8  48 00 00 78 */	b lbl_80B90F20
lbl_80B90EAC:
/* 80B90EAC  7F A3 EB 78 */	mr r3, r29
/* 80B90EB0  7F 64 DB 78 */	mr r4, r27
/* 80B90EB4  3C A0 80 B9 */	lis r5, stringBase0@ha
/* 80B90EB8  38 A5 36 9C */	addi r5, r5, stringBase0@l
/* 80B90EBC  38 A5 00 3B */	addi r5, r5, 0x3b
/* 80B90EC0  38 C0 00 FF */	li r6, 0xff
/* 80B90EC4  4B 4B 68 94 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80B90EC8  7C 7A 1B 78 */	mr r26, r3
/* 80B90ECC  7F 83 E3 78 */	mr r3, r28
/* 80B90ED0  7F 64 DB 78 */	mr r4, r27
/* 80B90ED4  4B 4B 16 44 */	b reset__14dEvt_control_cFPv
/* 80B90ED8  7F 63 DB 78 */	mr r3, r27
/* 80B90EDC  7F 44 D3 78 */	mr r4, r26
/* 80B90EE0  38 A0 00 01 */	li r5, 1
/* 80B90EE4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80B90EE8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80B90EEC  4B 48 A6 F8 */	b fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 80B90EF0  38 00 00 01 */	li r0, 1
/* 80B90EF4  98 1B 09 EC */	stb r0, 0x9ec(r27)
/* 80B90EF8  48 00 00 28 */	b lbl_80B90F20
lbl_80B90EFC:
/* 80B90EFC  80 7E 03 BC */	lwz r3, 0x3bc(r30)
/* 80B90F00  80 1E 03 C0 */	lwz r0, 0x3c0(r30)
/* 80B90F04  90 61 00 10 */	stw r3, 0x10(r1)
/* 80B90F08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B90F0C  80 1E 03 C4 */	lwz r0, 0x3c4(r30)
/* 80B90F10  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B90F14  7F 63 DB 78 */	mr r3, r27
/* 80B90F18  38 81 00 10 */	addi r4, r1, 0x10
/* 80B90F1C  4B FF FB 7D */	bl setAction__11daNpc_zrC_cFM11daNpc_zrC_cFPCvPvPv_i
lbl_80B90F20:
/* 80B90F20  3B 80 00 01 */	li r28, 1
/* 80B90F24  48 00 00 E4 */	b lbl_80B91008
lbl_80B90F28:
/* 80B90F28  80 9B 0E 34 */	lwz r4, 0xe34(r27)
/* 80B90F2C  3C 04 00 01 */	addis r0, r4, 1
/* 80B90F30  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B90F34  41 82 00 14 */	beq lbl_80B90F48
/* 80B90F38  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80B90F3C  4B 4B 27 B0 */	b setPtI_Id__14dEvt_control_cFUi
/* 80B90F40  38 00 FF FF */	li r0, -1
/* 80B90F44  90 1B 0E 34 */	stw r0, 0xe34(r27)
lbl_80B90F48:
/* 80B90F48  7F A3 EB 78 */	mr r3, r29
/* 80B90F4C  80 9E 02 7C */	lwz r4, 0x27c(r30)
/* 80B90F50  38 A0 00 00 */	li r5, 0
/* 80B90F54  38 C0 00 00 */	li r6, 0
/* 80B90F58  4B 4B 6B C4 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B90F5C  7C 7A 1B 78 */	mr r26, r3
/* 80B90F60  2C 1A FF FF */	cmpwi r26, -1
/* 80B90F64  41 82 00 5C */	beq lbl_80B90FC0
/* 80B90F68  93 5B 09 2C */	stw r26, 0x92c(r27)
/* 80B90F6C  7F A3 EB 78 */	mr r3, r29
/* 80B90F70  7F 44 D3 78 */	mr r4, r26
/* 80B90F74  38 BE 02 80 */	addi r5, r30, 0x280
/* 80B90F78  38 C0 00 02 */	li r6, 2
/* 80B90F7C  38 E0 00 00 */	li r7, 0
/* 80B90F80  39 00 00 00 */	li r8, 0
/* 80B90F84  4B 4B 6E 8C */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80B90F88  7C 60 1B 78 */	mr r0, r3
/* 80B90F8C  7F 63 DB 78 */	mr r3, r27
/* 80B90F90  7F 44 D3 78 */	mr r4, r26
/* 80B90F94  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80B90F98  39 9E 02 94 */	addi r12, r30, 0x294
/* 80B90F9C  7D 8C 02 14 */	add r12, r12, r0
/* 80B90FA0  4B 7D 10 E4 */	b __ptmf_scall
/* 80B90FA4  60 00 00 00 */	nop 
/* 80B90FA8  2C 03 00 00 */	cmpwi r3, 0
/* 80B90FAC  41 82 00 10 */	beq lbl_80B90FBC
/* 80B90FB0  7F A3 EB 78 */	mr r3, r29
/* 80B90FB4  7F 44 D3 78 */	mr r4, r26
/* 80B90FB8  4B 4B 71 C4 */	b cutEnd__16dEvent_manager_cFi
lbl_80B90FBC:
/* 80B90FBC  3B 80 00 01 */	li r28, 1
lbl_80B90FC0:
/* 80B90FC0  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80B90FC4  28 00 00 02 */	cmplwi r0, 2
/* 80B90FC8  40 82 00 40 */	bne lbl_80B91008
/* 80B90FCC  A8 9B 09 D4 */	lha r4, 0x9d4(r27)
/* 80B90FD0  2C 04 FF FF */	cmpwi r4, -1
/* 80B90FD4  41 82 00 34 */	beq lbl_80B91008
/* 80B90FD8  7F A3 EB 78 */	mr r3, r29
/* 80B90FDC  4B 4B 6A 9C */	b endCheck__16dEvent_manager_cFs
/* 80B90FE0  2C 03 00 00 */	cmpwi r3, 0
/* 80B90FE4  41 82 00 24 */	beq lbl_80B91008
/* 80B90FE8  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80B90FEC  4B 4B 14 7C */	b reset__14dEvt_control_cFv
/* 80B90FF0  38 00 00 00 */	li r0, 0
/* 80B90FF4  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80B90FF8  38 00 FF FF */	li r0, -1
/* 80B90FFC  B0 1B 09 D4 */	sth r0, 0x9d4(r27)
/* 80B91000  A8 1B 04 B4 */	lha r0, 0x4b4(r27)
/* 80B91004  90 1B 0E 20 */	stw r0, 0xe20(r27)
lbl_80B91008:
/* 80B91008  83 5B 09 50 */	lwz r26, 0x950(r27)
/* 80B9100C  7F 63 DB 78 */	mr r3, r27
/* 80B91010  38 81 00 0C */	addi r4, r1, 0xc
/* 80B91014  38 A1 00 08 */	addi r5, r1, 8
/* 80B91018  7F 66 DB 78 */	mr r6, r27
/* 80B9101C  38 E0 00 00 */	li r7, 0
/* 80B91020  4B 5C 26 F8 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80B91024  2C 03 00 00 */	cmpwi r3, 0
/* 80B91028  41 82 00 58 */	beq lbl_80B91080
/* 80B9102C  88 1B 09 EB */	lbz r0, 0x9eb(r27)
/* 80B91030  28 00 00 00 */	cmplwi r0, 0
/* 80B91034  40 82 00 68 */	bne lbl_80B9109C
/* 80B91038  7F 63 DB 78 */	mr r3, r27
/* 80B9103C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B91040  3C A0 80 B9 */	lis r5, lit_4767@ha
/* 80B91044  C0 25 32 A8 */	lfs f1, lit_4767@l(r5)
/* 80B91048  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B9104C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B91050  7D 89 03 A6 */	mtctr r12
/* 80B91054  4E 80 04 21 */	bctrl 
/* 80B91058  7F 63 DB 78 */	mr r3, r27
/* 80B9105C  80 81 00 08 */	lwz r4, 8(r1)
/* 80B91060  3C A0 80 B9 */	lis r5, lit_4767@ha
/* 80B91064  C0 25 32 A8 */	lfs f1, lit_4767@l(r5)
/* 80B91068  38 A0 00 00 */	li r5, 0
/* 80B9106C  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B91070  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B91074  7D 89 03 A6 */	mtctr r12
/* 80B91078  4E 80 04 21 */	bctrl 
/* 80B9107C  48 00 00 20 */	b lbl_80B9109C
lbl_80B91080:
/* 80B91080  2C 1A 00 00 */	cmpwi r26, 0
/* 80B91084  41 82 00 18 */	beq lbl_80B9109C
/* 80B91088  88 1B 09 EB */	lbz r0, 0x9eb(r27)
/* 80B9108C  28 00 00 00 */	cmplwi r0, 0
/* 80B91090  40 82 00 0C */	bne lbl_80B9109C
/* 80B91094  7F 63 DB 78 */	mr r3, r27
/* 80B91098  48 00 03 81 */	bl setExpressionTalkAfter__11daNpc_zrC_cFv
lbl_80B9109C:
/* 80B9109C  A8 1B 09 DE */	lha r0, 0x9de(r27)
/* 80B910A0  2C 00 00 11 */	cmpwi r0, 0x11
/* 80B910A4  41 82 00 7C */	beq lbl_80B91120
/* 80B910A8  40 80 00 20 */	bge lbl_80B910C8
/* 80B910AC  2C 00 00 05 */	cmpwi r0, 5
/* 80B910B0  41 82 00 08 */	beq lbl_80B910B8
/* 80B910B4  48 00 00 14 */	b lbl_80B910C8
lbl_80B910B8:
/* 80B910B8  80 1B 09 9C */	lwz r0, 0x99c(r27)
/* 80B910BC  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 80B910C0  90 1B 09 9C */	stw r0, 0x99c(r27)
/* 80B910C4  48 00 00 5C */	b lbl_80B91120
lbl_80B910C8:
/* 80B910C8  A8 1B 09 D6 */	lha r0, 0x9d6(r27)
/* 80B910CC  2C 00 00 00 */	cmpwi r0, 0
/* 80B910D0  41 82 00 50 */	beq lbl_80B91120
/* 80B910D4  80 1B 09 9C */	lwz r0, 0x99c(r27)
/* 80B910D8  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 80B910DC  90 1B 09 9C */	stw r0, 0x99c(r27)
/* 80B910E0  48 00 00 40 */	b lbl_80B91120
lbl_80B910E4:
/* 80B910E4  38 00 00 00 */	li r0, 0
/* 80B910E8  90 1B 09 50 */	stw r0, 0x950(r27)
/* 80B910EC  80 1B 09 2C */	lwz r0, 0x92c(r27)
/* 80B910F0  2C 00 FF FF */	cmpwi r0, -1
/* 80B910F4  41 82 00 2C */	beq lbl_80B91120
/* 80B910F8  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80B910FC  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80B91100  80 64 00 00 */	lwz r3, 0(r4)
/* 80B91104  80 04 00 04 */	lwz r0, 4(r4)
/* 80B91108  90 7B 0D DC */	stw r3, 0xddc(r27)
/* 80B9110C  90 1B 0D E0 */	stw r0, 0xde0(r27)
/* 80B91110  80 04 00 08 */	lwz r0, 8(r4)
/* 80B91114  90 1B 0D E4 */	stw r0, 0xde4(r27)
/* 80B91118  38 00 FF FF */	li r0, -1
/* 80B9111C  90 1B 09 2C */	stw r0, 0x92c(r27)
lbl_80B91120:
/* 80B91120  7F 83 E3 78 */	mr r3, r28
/* 80B91124  39 61 00 40 */	addi r11, r1, 0x40
/* 80B91128  4B 7D 10 F4 */	b _restgpr_26
/* 80B9112C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B91130  7C 08 03 A6 */	mtlr r0
/* 80B91134  38 21 00 40 */	addi r1, r1, 0x40
/* 80B91138  4E 80 00 20 */	blr 
