lbl_809F5884:
/* 809F5884  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809F5888  7C 08 02 A6 */	mflr r0
/* 809F588C  90 01 00 44 */	stw r0, 0x44(r1)
/* 809F5890  39 61 00 40 */	addi r11, r1, 0x40
/* 809F5894  4B 96 C9 3C */	b _savegpr_26
/* 809F5898  7C 7C 1B 78 */	mr r28, r3
/* 809F589C  3C 60 80 A0 */	lis r3, cNullVec__6Z2Calc@ha
/* 809F58A0  3B E3 87 F4 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 809F58A4  3B A0 00 00 */	li r29, 0
/* 809F58A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809F58AC  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 809F58B0  88 1B 4F AD */	lbz r0, 0x4fad(r27)
/* 809F58B4  28 00 00 00 */	cmplwi r0, 0
/* 809F58B8  41 82 02 50 */	beq lbl_809F5B08
/* 809F58BC  3B DB 4F F8 */	addi r30, r27, 0x4ff8
/* 809F58C0  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 809F58C4  28 00 00 01 */	cmplwi r0, 1
/* 809F58C8  41 82 00 0C */	beq lbl_809F58D4
/* 809F58CC  28 00 00 02 */	cmplwi r0, 2
/* 809F58D0  40 82 00 0C */	bne lbl_809F58DC
lbl_809F58D4:
/* 809F58D4  38 00 00 00 */	li r0, 0
/* 809F58D8  98 1C 09 ED */	stb r0, 0x9ed(r28)
lbl_809F58DC:
/* 809F58DC  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 809F58E0  28 00 00 01 */	cmplwi r0, 1
/* 809F58E4  40 82 00 B0 */	bne lbl_809F5994
/* 809F58E8  80 7F 02 C8 */	lwz r3, 0x2c8(r31)
/* 809F58EC  80 1F 02 CC */	lwz r0, 0x2cc(r31)
/* 809F58F0  90 61 00 1C */	stw r3, 0x1c(r1)
/* 809F58F4  90 01 00 20 */	stw r0, 0x20(r1)
/* 809F58F8  80 1F 02 D0 */	lwz r0, 0x2d0(r31)
/* 809F58FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809F5900  7F 83 E3 78 */	mr r3, r28
/* 809F5904  38 81 00 1C */	addi r4, r1, 0x1c
/* 809F5908  4B FF FC C9 */	bl chkAction__13daNpc_GWolf_cFM13daNpc_GWolf_cFPCvPvPv_i
/* 809F590C  2C 03 00 00 */	cmpwi r3, 0
/* 809F5910  41 82 00 1C */	beq lbl_809F592C
/* 809F5914  7F 83 E3 78 */	mr r3, r28
/* 809F5918  38 80 00 00 */	li r4, 0
/* 809F591C  39 9C 0D D4 */	addi r12, r28, 0xdd4
/* 809F5920  4B 96 C7 64 */	b __ptmf_scall
/* 809F5924  60 00 00 00 */	nop 
/* 809F5928  48 00 00 64 */	b lbl_809F598C
lbl_809F592C:
/* 809F592C  38 00 00 00 */	li r0, 0
/* 809F5930  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809F5934  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809F5938  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 809F593C  28 03 00 01 */	cmplwi r3, 1
/* 809F5940  41 82 00 0C */	beq lbl_809F594C
/* 809F5944  28 03 00 02 */	cmplwi r3, 2
/* 809F5948  40 82 00 08 */	bne lbl_809F5950
lbl_809F594C:
/* 809F594C  38 00 00 01 */	li r0, 1
lbl_809F5950:
/* 809F5950  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809F5954  41 82 00 14 */	beq lbl_809F5968
/* 809F5958  7F C3 F3 78 */	mr r3, r30
/* 809F595C  4B 65 2E 94 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 809F5960  2C 03 00 00 */	cmpwi r3, 0
/* 809F5964  41 82 00 28 */	beq lbl_809F598C
lbl_809F5968:
/* 809F5968  80 7F 02 D4 */	lwz r3, 0x2d4(r31)
/* 809F596C  80 1F 02 D8 */	lwz r0, 0x2d8(r31)
/* 809F5970  90 61 00 10 */	stw r3, 0x10(r1)
/* 809F5974  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F5978  80 1F 02 DC */	lwz r0, 0x2dc(r31)
/* 809F597C  90 01 00 18 */	stw r0, 0x18(r1)
/* 809F5980  7F 83 E3 78 */	mr r3, r28
/* 809F5984  38 81 00 10 */	addi r4, r1, 0x10
/* 809F5988  4B FF FC 75 */	bl setAction__13daNpc_GWolf_cFM13daNpc_GWolf_cFPCvPvPv_i
lbl_809F598C:
/* 809F598C  3B A0 00 01 */	li r29, 1
/* 809F5990  48 00 01 24 */	b lbl_809F5AB4
lbl_809F5994:
/* 809F5994  7F C3 F3 78 */	mr r3, r30
/* 809F5998  80 9F 01 78 */	lwz r4, 0x178(r31)
/* 809F599C  38 A0 00 00 */	li r5, 0
/* 809F59A0  38 C0 00 00 */	li r6, 0
/* 809F59A4  4B 65 21 78 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 809F59A8  7C 7A 1B 78 */	mr r26, r3
/* 809F59AC  2C 1A FF FF */	cmpwi r26, -1
/* 809F59B0  41 82 00 5C */	beq lbl_809F5A0C
/* 809F59B4  93 5C 09 2C */	stw r26, 0x92c(r28)
/* 809F59B8  7F C3 F3 78 */	mr r3, r30
/* 809F59BC  7F 44 D3 78 */	mr r4, r26
/* 809F59C0  38 BF 01 9C */	addi r5, r31, 0x19c
/* 809F59C4  38 C0 00 05 */	li r6, 5
/* 809F59C8  38 E0 00 00 */	li r7, 0
/* 809F59CC  39 00 00 00 */	li r8, 0
/* 809F59D0  4B 65 24 40 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 809F59D4  7C 60 1B 78 */	mr r0, r3
/* 809F59D8  7F 83 E3 78 */	mr r3, r28
/* 809F59DC  7F 44 D3 78 */	mr r4, r26
/* 809F59E0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 809F59E4  39 9F 01 E0 */	addi r12, r31, 0x1e0
/* 809F59E8  7D 8C 02 14 */	add r12, r12, r0
/* 809F59EC  4B 96 C6 98 */	b __ptmf_scall
/* 809F59F0  60 00 00 00 */	nop 
/* 809F59F4  2C 03 00 00 */	cmpwi r3, 0
/* 809F59F8  41 82 00 10 */	beq lbl_809F5A08
/* 809F59FC  7F C3 F3 78 */	mr r3, r30
/* 809F5A00  7F 44 D3 78 */	mr r4, r26
/* 809F5A04  4B 65 27 78 */	b cutEnd__16dEvent_manager_cFi
lbl_809F5A08:
/* 809F5A08  3B A0 00 01 */	li r29, 1
lbl_809F5A0C:
/* 809F5A0C  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 809F5A10  28 00 00 02 */	cmplwi r0, 2
/* 809F5A14  40 82 00 A0 */	bne lbl_809F5AB4
/* 809F5A18  A8 9C 09 D4 */	lha r4, 0x9d4(r28)
/* 809F5A1C  2C 04 FF FF */	cmpwi r4, -1
/* 809F5A20  41 82 00 94 */	beq lbl_809F5AB4
/* 809F5A24  7F C3 F3 78 */	mr r3, r30
/* 809F5A28  4B 65 20 50 */	b endCheck__16dEvent_manager_cFs
/* 809F5A2C  2C 03 00 00 */	cmpwi r3, 0
/* 809F5A30  41 82 00 84 */	beq lbl_809F5AB4
/* 809F5A34  A0 1C 09 E6 */	lhz r0, 0x9e6(r28)
/* 809F5A38  2C 00 00 09 */	cmpwi r0, 9
/* 809F5A3C  40 80 00 10 */	bge lbl_809F5A4C
/* 809F5A40  2C 00 00 03 */	cmpwi r0, 3
/* 809F5A44  40 80 00 34 */	bge lbl_809F5A78
/* 809F5A48  48 00 00 54 */	b lbl_809F5A9C
lbl_809F5A4C:
/* 809F5A4C  2C 00 00 0F */	cmpwi r0, 0xf
/* 809F5A50  40 80 00 4C */	bge lbl_809F5A9C
/* 809F5A54  38 7B 4E C8 */	addi r3, r27, 0x4ec8
/* 809F5A58  4B 64 CA 10 */	b reset__14dEvt_control_cFv
/* 809F5A5C  38 00 00 00 */	li r0, 0
/* 809F5A60  B0 1C 09 E6 */	sth r0, 0x9e6(r28)
/* 809F5A64  38 00 FF FF */	li r0, -1
/* 809F5A68  B0 1C 09 D4 */	sth r0, 0x9d4(r28)
/* 809F5A6C  38 00 00 01 */	li r0, 1
/* 809F5A70  98 1C 0E 1D */	stb r0, 0xe1d(r28)
/* 809F5A74  48 00 00 40 */	b lbl_809F5AB4
lbl_809F5A78:
/* 809F5A78  38 7B 4E C8 */	addi r3, r27, 0x4ec8
/* 809F5A7C  4B 64 C9 EC */	b reset__14dEvt_control_cFv
/* 809F5A80  38 00 00 00 */	li r0, 0
/* 809F5A84  B0 1C 09 E6 */	sth r0, 0x9e6(r28)
/* 809F5A88  38 00 FF FF */	li r0, -1
/* 809F5A8C  B0 1C 09 D4 */	sth r0, 0x9d4(r28)
/* 809F5A90  7F 83 E3 78 */	mr r3, r28
/* 809F5A94  4B 62 41 E8 */	b fopAcM_delete__FP10fopAc_ac_c
/* 809F5A98  48 00 00 1C */	b lbl_809F5AB4
lbl_809F5A9C:
/* 809F5A9C  38 7B 4E C8 */	addi r3, r27, 0x4ec8
/* 809F5AA0  4B 64 C9 C8 */	b reset__14dEvt_control_cFv
/* 809F5AA4  38 00 00 00 */	li r0, 0
/* 809F5AA8  B0 1C 09 E6 */	sth r0, 0x9e6(r28)
/* 809F5AAC  38 00 FF FF */	li r0, -1
/* 809F5AB0  B0 1C 09 D4 */	sth r0, 0x9d4(r28)
lbl_809F5AB4:
/* 809F5AB4  7F 83 E3 78 */	mr r3, r28
/* 809F5AB8  38 81 00 0C */	addi r4, r1, 0xc
/* 809F5ABC  38 A1 00 08 */	addi r5, r1, 8
/* 809F5AC0  7F 86 E3 78 */	mr r6, r28
/* 809F5AC4  38 E0 00 00 */	li r7, 0
/* 809F5AC8  4B 75 DC 50 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 809F5ACC  2C 03 00 00 */	cmpwi r3, 0
/* 809F5AD0  41 82 00 74 */	beq lbl_809F5B44
/* 809F5AD4  88 1C 09 EB */	lbz r0, 0x9eb(r28)
/* 809F5AD8  28 00 00 00 */	cmplwi r0, 0
/* 809F5ADC  40 82 00 68 */	bne lbl_809F5B44
/* 809F5AE0  7F 83 E3 78 */	mr r3, r28
/* 809F5AE4  80 81 00 08 */	lwz r4, 8(r1)
/* 809F5AE8  3C A0 80 A0 */	lis r5, lit_4803@ha
/* 809F5AEC  C0 25 85 B0 */	lfs f1, lit_4803@l(r5)
/* 809F5AF0  38 A0 00 00 */	li r5, 0
/* 809F5AF4  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809F5AF8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809F5AFC  7D 89 03 A6 */	mtctr r12
/* 809F5B00  4E 80 04 21 */	bctrl 
/* 809F5B04  48 00 00 40 */	b lbl_809F5B44
lbl_809F5B08:
/* 809F5B08  38 00 00 00 */	li r0, 0
/* 809F5B0C  90 1C 09 50 */	stw r0, 0x950(r28)
/* 809F5B10  80 1C 09 2C */	lwz r0, 0x92c(r28)
/* 809F5B14  2C 00 FF FF */	cmpwi r0, -1
/* 809F5B18  41 82 00 2C */	beq lbl_809F5B44
/* 809F5B1C  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 809F5B20  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 809F5B24  80 64 00 00 */	lwz r3, 0(r4)
/* 809F5B28  80 04 00 04 */	lwz r0, 4(r4)
/* 809F5B2C  90 7C 0D D4 */	stw r3, 0xdd4(r28)
/* 809F5B30  90 1C 0D D8 */	stw r0, 0xdd8(r28)
/* 809F5B34  80 04 00 08 */	lwz r0, 8(r4)
/* 809F5B38  90 1C 0D DC */	stw r0, 0xddc(r28)
/* 809F5B3C  38 00 FF FF */	li r0, -1
/* 809F5B40  90 1C 09 2C */	stw r0, 0x92c(r28)
lbl_809F5B44:
/* 809F5B44  7F A3 EB 78 */	mr r3, r29
/* 809F5B48  39 61 00 40 */	addi r11, r1, 0x40
/* 809F5B4C  4B 96 C6 D0 */	b _restgpr_26
/* 809F5B50  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809F5B54  7C 08 03 A6 */	mtlr r0
/* 809F5B58  38 21 00 40 */	addi r1, r1, 0x40
/* 809F5B5C  4E 80 00 20 */	blr 
