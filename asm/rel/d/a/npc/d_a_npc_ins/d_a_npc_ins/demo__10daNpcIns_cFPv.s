lbl_80A11A7C:
/* 80A11A7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A11A80  7C 08 02 A6 */	mflr r0
/* 80A11A84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A11A88  39 61 00 20 */	addi r11, r1, 0x20
/* 80A11A8C  4B 95 07 4C */	b _savegpr_28
/* 80A11A90  7C 7F 1B 78 */	mr r31, r3
/* 80A11A94  A0 03 0E 1E */	lhz r0, 0xe1e(r3)
/* 80A11A98  2C 00 00 02 */	cmpwi r0, 2
/* 80A11A9C  41 82 00 60 */	beq lbl_80A11AFC
/* 80A11AA0  40 80 01 2C */	bge lbl_80A11BCC
/* 80A11AA4  2C 00 00 00 */	cmpwi r0, 0
/* 80A11AA8  41 82 00 0C */	beq lbl_80A11AB4
/* 80A11AAC  48 00 01 20 */	b lbl_80A11BCC
/* 80A11AB0  48 00 01 1C */	b lbl_80A11BCC
lbl_80A11AB4:
/* 80A11AB4  38 80 00 09 */	li r4, 9
/* 80A11AB8  3C A0 80 A1 */	lis r5, lit_4994@ha
/* 80A11ABC  C0 25 41 18 */	lfs f1, lit_4994@l(r5)
/* 80A11AC0  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A11AC4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A11AC8  7D 89 03 A6 */	mtctr r12
/* 80A11ACC  4E 80 04 21 */	bctrl 
/* 80A11AD0  7F E3 FB 78 */	mr r3, r31
/* 80A11AD4  38 80 00 00 */	li r4, 0
/* 80A11AD8  3C A0 80 A1 */	lis r5, lit_4994@ha
/* 80A11ADC  C0 25 41 18 */	lfs f1, lit_4994@l(r5)
/* 80A11AE0  38 A0 00 00 */	li r5, 0
/* 80A11AE4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A11AE8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A11AEC  7D 89 03 A6 */	mtctr r12
/* 80A11AF0  4E 80 04 21 */	bctrl 
/* 80A11AF4  38 00 00 02 */	li r0, 2
/* 80A11AF8  B0 1F 0E 1E */	sth r0, 0xe1e(r31)
lbl_80A11AFC:
/* 80A11AFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A11B00  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80A11B04  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 80A11B08  28 00 00 00 */	cmplwi r0, 0
/* 80A11B0C  41 82 00 C0 */	beq lbl_80A11BCC
/* 80A11B10  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80A11B14  28 00 00 01 */	cmplwi r0, 1
/* 80A11B18  41 82 00 B4 */	beq lbl_80A11BCC
/* 80A11B1C  3B BE 4F F8 */	addi r29, r30, 0x4ff8
/* 80A11B20  7F A3 EB 78 */	mr r3, r29
/* 80A11B24  3C 80 80 A1 */	lis r4, l_myName@ha
/* 80A11B28  38 84 43 94 */	addi r4, r4, l_myName@l
/* 80A11B2C  80 84 00 00 */	lwz r4, 0(r4)
/* 80A11B30  38 A0 00 00 */	li r5, 0
/* 80A11B34  38 C0 00 00 */	li r6, 0
/* 80A11B38  4B 63 5F E4 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80A11B3C  2C 03 FF FF */	cmpwi r3, -1
/* 80A11B40  41 82 00 44 */	beq lbl_80A11B84
/* 80A11B44  7C 7C 1B 78 */	mr r28, r3
/* 80A11B48  93 9F 09 2C */	stw r28, 0x92c(r31)
/* 80A11B4C  7F E3 FB 78 */	mr r3, r31
/* 80A11B50  7F 84 E3 78 */	mr r4, r28
/* 80A11B54  A0 1F 09 E6 */	lhz r0, 0x9e6(r31)
/* 80A11B58  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80A11B5C  3C A0 80 A1 */	lis r5, mEvtSeqList__10daNpcIns_c@ha
/* 80A11B60  38 05 43 98 */	addi r0, r5, mEvtSeqList__10daNpcIns_c@l
/* 80A11B64  7D 80 32 14 */	add r12, r0, r6
/* 80A11B68  4B 95 05 1C */	b __ptmf_scall
/* 80A11B6C  60 00 00 00 */	nop 
/* 80A11B70  2C 03 00 00 */	cmpwi r3, 0
/* 80A11B74  41 82 00 10 */	beq lbl_80A11B84
/* 80A11B78  7F A3 EB 78 */	mr r3, r29
/* 80A11B7C  7F 84 E3 78 */	mr r4, r28
/* 80A11B80  4B 63 65 FC */	b cutEnd__16dEvent_manager_cFi
lbl_80A11B84:
/* 80A11B84  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80A11B88  28 00 00 02 */	cmplwi r0, 2
/* 80A11B8C  40 82 00 40 */	bne lbl_80A11BCC
/* 80A11B90  A8 9F 09 D4 */	lha r4, 0x9d4(r31)
/* 80A11B94  2C 04 FF FF */	cmpwi r4, -1
/* 80A11B98  41 82 00 34 */	beq lbl_80A11BCC
/* 80A11B9C  7F A3 EB 78 */	mr r3, r29
/* 80A11BA0  4B 63 5E D8 */	b endCheck__16dEvent_manager_cFs
/* 80A11BA4  2C 03 00 00 */	cmpwi r3, 0
/* 80A11BA8  41 82 00 24 */	beq lbl_80A11BCC
/* 80A11BAC  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80A11BB0  4B 63 08 B8 */	b reset__14dEvt_control_cFv
/* 80A11BB4  38 00 00 00 */	li r0, 0
/* 80A11BB8  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 80A11BBC  38 00 FF FF */	li r0, -1
/* 80A11BC0  B0 1F 09 D4 */	sth r0, 0x9d4(r31)
/* 80A11BC4  7F E3 FB 78 */	mr r3, r31
/* 80A11BC8  48 00 01 7D */	bl setWaitAction__10daNpcIns_cFv
lbl_80A11BCC:
/* 80A11BCC  38 60 00 01 */	li r3, 1
/* 80A11BD0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A11BD4  4B 95 06 50 */	b _restgpr_28
/* 80A11BD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A11BDC  7C 08 03 A6 */	mtlr r0
/* 80A11BE0  38 21 00 20 */	addi r1, r1, 0x20
/* 80A11BE4  4E 80 00 20 */	blr 
