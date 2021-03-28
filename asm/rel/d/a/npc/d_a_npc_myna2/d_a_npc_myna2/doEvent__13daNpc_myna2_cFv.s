lbl_80A85894:
/* 80A85894  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A85898  7C 08 02 A6 */	mflr r0
/* 80A8589C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A858A0  39 61 00 40 */	addi r11, r1, 0x40
/* 80A858A4  4B 8D C9 2C */	b _savegpr_26
/* 80A858A8  7C 7B 1B 78 */	mr r27, r3
/* 80A858AC  3C 60 80 A9 */	lis r3, cNullVec__6Z2Calc@ha
/* 80A858B0  3B C3 86 B4 */	addi r30, r3, cNullVec__6Z2Calc@l
/* 80A858B4  3B 80 00 00 */	li r28, 0
/* 80A858B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A858BC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80A858C0  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 80A858C4  28 00 00 00 */	cmplwi r0, 0
/* 80A858C8  41 82 02 84 */	beq lbl_80A85B4C
/* 80A858CC  3B BF 4F F8 */	addi r29, r31, 0x4ff8
/* 80A858D0  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80A858D4  28 00 00 01 */	cmplwi r0, 1
/* 80A858D8  41 82 00 0C */	beq lbl_80A858E4
/* 80A858DC  28 00 00 02 */	cmplwi r0, 2
/* 80A858E0  40 82 00 0C */	bne lbl_80A858EC
lbl_80A858E4:
/* 80A858E4  38 00 00 00 */	li r0, 0
/* 80A858E8  98 1B 09 ED */	stb r0, 0x9ed(r27)
lbl_80A858EC:
/* 80A858EC  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80A858F0  28 00 00 01 */	cmplwi r0, 1
/* 80A858F4  40 82 00 B0 */	bne lbl_80A859A4
/* 80A858F8  80 7E 02 00 */	lwz r3, 0x200(r30)
/* 80A858FC  80 1E 02 04 */	lwz r0, 0x204(r30)
/* 80A85900  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80A85904  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A85908  80 1E 02 08 */	lwz r0, 0x208(r30)
/* 80A8590C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A85910  7F 63 DB 78 */	mr r3, r27
/* 80A85914  38 81 00 1C */	addi r4, r1, 0x1c
/* 80A85918  4B FF FC D1 */	bl chkAction__13daNpc_myna2_cFM13daNpc_myna2_cFPCvPvPv_i
/* 80A8591C  2C 03 00 00 */	cmpwi r3, 0
/* 80A85920  41 82 00 1C */	beq lbl_80A8593C
/* 80A85924  7F 63 DB 78 */	mr r3, r27
/* 80A85928  38 80 00 00 */	li r4, 0
/* 80A8592C  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80A85930  4B 8D C7 54 */	b __ptmf_scall
/* 80A85934  60 00 00 00 */	nop 
/* 80A85938  48 00 00 64 */	b lbl_80A8599C
lbl_80A8593C:
/* 80A8593C  38 00 00 00 */	li r0, 0
/* 80A85940  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A85944  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A85948  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 80A8594C  28 03 00 01 */	cmplwi r3, 1
/* 80A85950  41 82 00 0C */	beq lbl_80A8595C
/* 80A85954  28 03 00 02 */	cmplwi r3, 2
/* 80A85958  40 82 00 08 */	bne lbl_80A85960
lbl_80A8595C:
/* 80A8595C  38 00 00 01 */	li r0, 1
lbl_80A85960:
/* 80A85960  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A85964  41 82 00 14 */	beq lbl_80A85978
/* 80A85968  7F A3 EB 78 */	mr r3, r29
/* 80A8596C  4B 5C 2E 84 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80A85970  2C 03 00 00 */	cmpwi r3, 0
/* 80A85974  41 82 00 28 */	beq lbl_80A8599C
lbl_80A85978:
/* 80A85978  80 7E 02 0C */	lwz r3, 0x20c(r30)
/* 80A8597C  80 1E 02 10 */	lwz r0, 0x210(r30)
/* 80A85980  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A85984  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A85988  80 1E 02 14 */	lwz r0, 0x214(r30)
/* 80A8598C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A85990  7F 63 DB 78 */	mr r3, r27
/* 80A85994  38 81 00 10 */	addi r4, r1, 0x10
/* 80A85998  4B FF FC 7D */	bl setAction__13daNpc_myna2_cFM13daNpc_myna2_cFPCvPvPv_i
lbl_80A8599C:
/* 80A8599C  3B 80 00 01 */	li r28, 1
/* 80A859A0  48 00 01 58 */	b lbl_80A85AF8
lbl_80A859A4:
/* 80A859A4  80 9B 0D F0 */	lwz r4, 0xdf0(r27)
/* 80A859A8  3C 04 00 01 */	addis r0, r4, 1
/* 80A859AC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80A859B0  41 82 00 14 */	beq lbl_80A859C4
/* 80A859B4  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80A859B8  4B 5B DD 34 */	b setPtI_Id__14dEvt_control_cFUi
/* 80A859BC  38 00 FF FF */	li r0, -1
/* 80A859C0  90 1B 0D F0 */	stw r0, 0xdf0(r27)
lbl_80A859C4:
/* 80A859C4  7F A3 EB 78 */	mr r3, r29
/* 80A859C8  80 9E 01 34 */	lwz r4, 0x134(r30)
/* 80A859CC  38 A0 00 00 */	li r5, 0
/* 80A859D0  38 C0 00 00 */	li r6, 0
/* 80A859D4  4B 5C 21 48 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80A859D8  7C 7A 1B 78 */	mr r26, r3
/* 80A859DC  2C 1A FF FF */	cmpwi r26, -1
/* 80A859E0  41 82 00 5C */	beq lbl_80A85A3C
/* 80A859E4  93 5B 09 2C */	stw r26, 0x92c(r27)
/* 80A859E8  7F A3 EB 78 */	mr r3, r29
/* 80A859EC  7F 44 D3 78 */	mr r4, r26
/* 80A859F0  38 BE 01 38 */	addi r5, r30, 0x138
/* 80A859F4  38 C0 00 05 */	li r6, 5
/* 80A859F8  38 E0 00 00 */	li r7, 0
/* 80A859FC  39 00 00 00 */	li r8, 0
/* 80A85A00  4B 5C 24 10 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80A85A04  7C 60 1B 78 */	mr r0, r3
/* 80A85A08  7F 63 DB 78 */	mr r3, r27
/* 80A85A0C  7F 44 D3 78 */	mr r4, r26
/* 80A85A10  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80A85A14  39 9E 01 7C */	addi r12, r30, 0x17c
/* 80A85A18  7D 8C 02 14 */	add r12, r12, r0
/* 80A85A1C  4B 8D C6 68 */	b __ptmf_scall
/* 80A85A20  60 00 00 00 */	nop 
/* 80A85A24  2C 03 00 00 */	cmpwi r3, 0
/* 80A85A28  41 82 00 10 */	beq lbl_80A85A38
/* 80A85A2C  7F A3 EB 78 */	mr r3, r29
/* 80A85A30  7F 44 D3 78 */	mr r4, r26
/* 80A85A34  4B 5C 27 48 */	b cutEnd__16dEvent_manager_cFi
lbl_80A85A38:
/* 80A85A38  3B 80 00 01 */	li r28, 1
lbl_80A85A3C:
/* 80A85A3C  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80A85A40  28 00 00 02 */	cmplwi r0, 2
/* 80A85A44  40 82 00 B4 */	bne lbl_80A85AF8
/* 80A85A48  A8 9B 09 D4 */	lha r4, 0x9d4(r27)
/* 80A85A4C  2C 04 FF FF */	cmpwi r4, -1
/* 80A85A50  41 82 00 A8 */	beq lbl_80A85AF8
/* 80A85A54  7F A3 EB 78 */	mr r3, r29
/* 80A85A58  4B 5C 20 20 */	b endCheck__16dEvent_manager_cFs
/* 80A85A5C  2C 03 00 00 */	cmpwi r3, 0
/* 80A85A60  41 82 00 98 */	beq lbl_80A85AF8
/* 80A85A64  A0 1B 09 E6 */	lhz r0, 0x9e6(r27)
/* 80A85A68  2C 00 00 02 */	cmpwi r0, 2
/* 80A85A6C  41 82 00 14 */	beq lbl_80A85A80
/* 80A85A70  41 80 00 70 */	blt lbl_80A85AE0
/* 80A85A74  2C 00 00 05 */	cmpwi r0, 5
/* 80A85A78  40 80 00 68 */	bge lbl_80A85AE0
/* 80A85A7C  48 00 00 40 */	b lbl_80A85ABC
lbl_80A85A80:
/* 80A85A80  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80A85A84  4B 5B C9 E4 */	b reset__14dEvt_control_cFv
/* 80A85A88  38 00 00 00 */	li r0, 0
/* 80A85A8C  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80A85A90  38 00 FF FF */	li r0, -1
/* 80A85A94  B0 1B 09 D4 */	sth r0, 0x9d4(r27)
/* 80A85A98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A85A9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A85AA0  88 9B 0E 0D */	lbz r4, 0xe0d(r27)
/* 80A85AA4  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80A85AA8  7C 05 07 74 */	extsb r5, r0
/* 80A85AAC  4B 5A F8 04 */	b offSwitch__10dSv_info_cFii
/* 80A85AB0  7F 63 DB 78 */	mr r3, r27
/* 80A85AB4  4B 59 41 C8 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80A85AB8  48 00 00 40 */	b lbl_80A85AF8
lbl_80A85ABC:
/* 80A85ABC  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80A85AC0  4B 5B C9 A8 */	b reset__14dEvt_control_cFv
/* 80A85AC4  38 00 00 00 */	li r0, 0
/* 80A85AC8  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80A85ACC  38 00 FF FF */	li r0, -1
/* 80A85AD0  B0 1B 09 D4 */	sth r0, 0x9d4(r27)
/* 80A85AD4  7F 63 DB 78 */	mr r3, r27
/* 80A85AD8  4B 59 41 A4 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80A85ADC  48 00 00 1C */	b lbl_80A85AF8
lbl_80A85AE0:
/* 80A85AE0  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80A85AE4  4B 5B C9 84 */	b reset__14dEvt_control_cFv
/* 80A85AE8  38 00 00 00 */	li r0, 0
/* 80A85AEC  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80A85AF0  38 00 FF FF */	li r0, -1
/* 80A85AF4  B0 1B 09 D4 */	sth r0, 0x9d4(r27)
lbl_80A85AF8:
/* 80A85AF8  7F 63 DB 78 */	mr r3, r27
/* 80A85AFC  38 81 00 0C */	addi r4, r1, 0xc
/* 80A85B00  38 A1 00 08 */	addi r5, r1, 8
/* 80A85B04  7F 66 DB 78 */	mr r6, r27
/* 80A85B08  38 E0 00 00 */	li r7, 0
/* 80A85B0C  4B 6C DC 0C */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80A85B10  2C 03 00 00 */	cmpwi r3, 0
/* 80A85B14  41 82 00 74 */	beq lbl_80A85B88
/* 80A85B18  88 1B 09 EB */	lbz r0, 0x9eb(r27)
/* 80A85B1C  28 00 00 00 */	cmplwi r0, 0
/* 80A85B20  40 82 00 68 */	bne lbl_80A85B88
/* 80A85B24  7F 63 DB 78 */	mr r3, r27
/* 80A85B28  80 81 00 08 */	lwz r4, 8(r1)
/* 80A85B2C  3C A0 80 A9 */	lis r5, lit_4982@ha
/* 80A85B30  C0 25 85 C0 */	lfs f1, lit_4982@l(r5)
/* 80A85B34  38 A0 00 00 */	li r5, 0
/* 80A85B38  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80A85B3C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A85B40  7D 89 03 A6 */	mtctr r12
/* 80A85B44  4E 80 04 21 */	bctrl 
/* 80A85B48  48 00 00 40 */	b lbl_80A85B88
lbl_80A85B4C:
/* 80A85B4C  38 00 00 00 */	li r0, 0
/* 80A85B50  90 1B 09 50 */	stw r0, 0x950(r27)
/* 80A85B54  80 1B 09 2C */	lwz r0, 0x92c(r27)
/* 80A85B58  2C 00 FF FF */	cmpwi r0, -1
/* 80A85B5C  41 82 00 2C */	beq lbl_80A85B88
/* 80A85B60  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80A85B64  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80A85B68  80 64 00 00 */	lwz r3, 0(r4)
/* 80A85B6C  80 04 00 04 */	lwz r0, 4(r4)
/* 80A85B70  90 7B 0D CC */	stw r3, 0xdcc(r27)
/* 80A85B74  90 1B 0D D0 */	stw r0, 0xdd0(r27)
/* 80A85B78  80 04 00 08 */	lwz r0, 8(r4)
/* 80A85B7C  90 1B 0D D4 */	stw r0, 0xdd4(r27)
/* 80A85B80  38 00 FF FF */	li r0, -1
/* 80A85B84  90 1B 09 2C */	stw r0, 0x92c(r27)
lbl_80A85B88:
/* 80A85B88  7F 83 E3 78 */	mr r3, r28
/* 80A85B8C  39 61 00 40 */	addi r11, r1, 0x40
/* 80A85B90  4B 8D C6 8C */	b _restgpr_26
/* 80A85B94  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A85B98  7C 08 03 A6 */	mtlr r0
/* 80A85B9C  38 21 00 40 */	addi r1, r1, 0x40
/* 80A85BA0  4E 80 00 20 */	blr 
