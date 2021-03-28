lbl_80D0695C:
/* 80D0695C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D06960  7C 08 02 A6 */	mflr r0
/* 80D06964  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D06968  39 61 00 20 */	addi r11, r1, 0x20
/* 80D0696C  4B 65 B8 70 */	b _savegpr_29
/* 80D06970  7C 7E 1B 78 */	mr r30, r3
/* 80D06974  7C 9F 23 78 */	mr r31, r4
/* 80D06978  A0 03 00 FA */	lhz r0, 0xfa(r3)
/* 80D0697C  60 00 00 01 */	ori r0, r0, 1
/* 80D06980  B0 03 00 FA */	sth r0, 0xfa(r3)
/* 80D06984  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D06988  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80D0698C  88 1D 4F AD */	lbz r0, 0x4fad(r29)
/* 80D06990  28 00 00 00 */	cmplwi r0, 0
/* 80D06994  41 82 00 FC */	beq lbl_80D06A90
/* 80D06998  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80D0699C  28 00 00 01 */	cmplwi r0, 1
/* 80D069A0  40 82 00 84 */	bne lbl_80D06A24
/* 80D069A4  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80D069A8  7F C4 F3 78 */	mr r4, r30
/* 80D069AC  38 A0 00 00 */	li r5, 0
/* 80D069B0  38 C0 00 00 */	li r6, 0
/* 80D069B4  4B 54 39 24 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80D069B8  2C 03 00 00 */	cmpwi r3, 0
/* 80D069BC  41 82 00 F8 */	beq lbl_80D06AB4
/* 80D069C0  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 80D069C4  7F C4 F3 78 */	mr r4, r30
/* 80D069C8  4B 33 BB 50 */	b reset__14dEvt_control_cFPv
/* 80D069CC  3C 60 80 D0 */	lis r3, stringBase0@ha
/* 80D069D0  38 03 6C 0C */	addi r0, r3, stringBase0@l
/* 80D069D4  90 1E 01 00 */	stw r0, 0x100(r30)
/* 80D069D8  3B BD 4F F8 */	addi r29, r29, 0x4ff8
/* 80D069DC  7F A3 EB 78 */	mr r3, r29
/* 80D069E0  80 9E 01 00 */	lwz r4, 0x100(r30)
/* 80D069E4  4B 33 FE 1C */	b setObjectArchive__16dEvent_manager_cFPc
/* 80D069E8  7F A3 EB 78 */	mr r3, r29
/* 80D069EC  7F C4 F3 78 */	mr r4, r30
/* 80D069F0  3C A0 80 D0 */	lis r5, stringBase0@ha
/* 80D069F4  38 A5 6C 0C */	addi r5, r5, stringBase0@l
/* 80D069F8  38 A5 00 06 */	addi r5, r5, 6
/* 80D069FC  38 C0 00 FF */	li r6, 0xff
/* 80D06A00  4B 34 0D 58 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80D06A04  B0 7E 05 FC */	sth r3, 0x5fc(r30)
/* 80D06A08  7F C3 F3 78 */	mr r3, r30
/* 80D06A0C  A8 9E 05 FC */	lha r4, 0x5fc(r30)
/* 80D06A10  38 A0 00 01 */	li r5, 1
/* 80D06A14  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D06A18  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D06A1C  4B 31 4B C8 */	b fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 80D06A20  48 00 00 94 */	b lbl_80D06AB4
lbl_80D06A24:
/* 80D06A24  3B BD 4F F8 */	addi r29, r29, 0x4ff8
/* 80D06A28  7F A3 EB 78 */	mr r3, r29
/* 80D06A2C  3C 80 80 D0 */	lis r4, l_arcName@ha
/* 80D06A30  38 84 6C 1C */	addi r4, r4, l_arcName@l
/* 80D06A34  80 84 00 00 */	lwz r4, 0(r4)
/* 80D06A38  38 A0 00 00 */	li r5, 0
/* 80D06A3C  38 C0 00 00 */	li r6, 0
/* 80D06A40  4B 34 10 DC */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D06A44  2C 03 FF FF */	cmpwi r3, -1
/* 80D06A48  41 82 00 6C */	beq lbl_80D06AB4
/* 80D06A4C  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80D06A50  28 00 00 02 */	cmplwi r0, 2
/* 80D06A54  40 82 00 60 */	bne lbl_80D06AB4
/* 80D06A58  A8 9E 05 FC */	lha r4, 0x5fc(r30)
/* 80D06A5C  2C 04 FF FF */	cmpwi r4, -1
/* 80D06A60  41 82 00 54 */	beq lbl_80D06AB4
/* 80D06A64  7F A3 EB 78 */	mr r3, r29
/* 80D06A68  4B 34 10 10 */	b endCheck__16dEvent_manager_cFs
/* 80D06A6C  2C 03 00 00 */	cmpwi r3, 0
/* 80D06A70  41 82 00 44 */	beq lbl_80D06AB4
/* 80D06A74  38 00 FF FF */	li r0, -1
/* 80D06A78  B0 1E 05 FC */	sth r0, 0x5fc(r30)
/* 80D06A7C  38 00 00 07 */	li r0, 7
/* 80D06A80  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80D06A84  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80D06A88  98 03 00 C1 */	stb r0, 0xc1(r3)
/* 80D06A8C  48 00 00 28 */	b lbl_80D06AB4
lbl_80D06A90:
/* 80D06A90  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80D06A94  7F C4 F3 78 */	mr r4, r30
/* 80D06A98  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D06A9C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80D06AA0  7C 05 07 34 */	extsh r5, r0
/* 80D06AA4  38 C0 00 00 */	li r6, 0
/* 80D06AA8  38 E0 00 00 */	li r7, 0
/* 80D06AAC  4B 54 34 E4 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80D06AB0  4B 53 15 E8 */	b endFlowGroup__12dMsgObject_cFv
lbl_80D06AB4:
/* 80D06AB4  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80D06AB8  90 1F 00 00 */	stw r0, 0(r31)
/* 80D06ABC  38 60 00 01 */	li r3, 1
/* 80D06AC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80D06AC4  4B 65 B7 64 */	b _restgpr_29
/* 80D06AC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D06ACC  7C 08 03 A6 */	mtlr r0
/* 80D06AD0  38 21 00 20 */	addi r1, r1, 0x20
/* 80D06AD4  4E 80 00 20 */	blr 
