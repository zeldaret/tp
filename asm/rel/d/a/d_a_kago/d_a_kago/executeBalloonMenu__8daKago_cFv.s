lbl_80849980:
/* 80849980  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80849984  7C 08 02 A6 */	mflr r0
/* 80849988  90 01 00 24 */	stw r0, 0x24(r1)
/* 8084998C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80849990  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80849994  7C 7F 1B 78 */	mr r31, r3
/* 80849998  4B 93 7C A8 */	b dCam_getBody__Fv
/* 8084999C  7C 7E 1B 78 */	mr r30, r3
/* 808499A0  88 1F 06 EB */	lbz r0, 0x6eb(r31)
/* 808499A4  2C 00 00 01 */	cmpwi r0, 1
/* 808499A8  41 82 00 80 */	beq lbl_80849A28
/* 808499AC  40 80 00 10 */	bge lbl_808499BC
/* 808499B0  2C 00 00 00 */	cmpwi r0, 0
/* 808499B4  40 80 00 14 */	bge lbl_808499C8
/* 808499B8  48 00 01 D4 */	b lbl_80849B8C
lbl_808499BC:
/* 808499BC  2C 00 00 03 */	cmpwi r0, 3
/* 808499C0  40 80 01 CC */	bge lbl_80849B8C
/* 808499C4  48 00 00 D0 */	b lbl_80849A94
lbl_808499C8:
/* 808499C8  88 1F 06 E7 */	lbz r0, 0x6e7(r31)
/* 808499CC  28 00 00 01 */	cmplwi r0, 1
/* 808499D0  40 82 00 50 */	bne lbl_80849A20
/* 808499D4  80 1F 07 40 */	lwz r0, 0x740(r31)
/* 808499D8  2C 00 00 00 */	cmpwi r0, 0
/* 808499DC  41 82 00 0C */	beq lbl_808499E8
/* 808499E0  2C 00 00 05 */	cmpwi r0, 5
/* 808499E4  40 82 00 3C */	bne lbl_80849A20
lbl_808499E8:
/* 808499E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808499EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 808499F0  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 808499F4  28 00 00 00 */	cmplwi r0, 0
/* 808499F8  40 82 00 28 */	bne lbl_80849A20
/* 808499FC  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 80849A00  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 80849A04  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80849A08  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 80849A0C  41 82 00 14 */	beq lbl_80849A20
/* 80849A10  38 00 00 01 */	li r0, 1
/* 80849A14  98 1F 06 EB */	stb r0, 0x6eb(r31)
/* 80849A18  38 60 00 01 */	li r3, 1
/* 80849A1C  48 00 01 74 */	b lbl_80849B90
lbl_80849A20:
/* 80849A20  38 60 00 00 */	li r3, 0
/* 80849A24  48 00 01 6C */	b lbl_80849B90
lbl_80849A28:
/* 80849A28  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80849A2C  28 00 00 02 */	cmplwi r0, 2
/* 80849A30  41 82 00 2C */	beq lbl_80849A5C
/* 80849A34  7F E3 FB 78 */	mr r3, r31
/* 80849A38  38 80 00 01 */	li r4, 1
/* 80849A3C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80849A40  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80849A44  38 C0 00 00 */	li r6, 0
/* 80849A48  4B 7D 1E C0 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80849A4C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80849A50  60 00 00 02 */	ori r0, r0, 2
/* 80849A54  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80849A58  48 00 01 34 */	b lbl_80849B8C
lbl_80849A5C:
/* 80849A5C  38 7F 0B 58 */	addi r3, r31, 0xb58
/* 80849A60  7F E4 FB 78 */	mr r4, r31
/* 80849A64  38 A0 04 57 */	li r5, 0x457
/* 80849A68  38 C0 00 00 */	li r6, 0
/* 80849A6C  38 E0 00 00 */	li r7, 0
/* 80849A70  4B A0 05 20 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80849A74  7F C3 F3 78 */	mr r3, r30
/* 80849A78  4B 91 7A 58 */	b Stop__9dCamera_cFv
/* 80849A7C  7F C3 F3 78 */	mr r3, r30
/* 80849A80  38 80 00 03 */	li r4, 3
/* 80849A84  4B 91 95 88 */	b SetTrimSize__9dCamera_cFl
/* 80849A88  38 00 00 02 */	li r0, 2
/* 80849A8C  98 1F 06 EB */	stb r0, 0x6eb(r31)
/* 80849A90  48 00 00 FC */	b lbl_80849B8C
lbl_80849A94:
/* 80849A94  38 7F 0B 58 */	addi r3, r31, 0xb58
/* 80849A98  7F E4 FB 78 */	mr r4, r31
/* 80849A9C  38 A0 00 00 */	li r5, 0
/* 80849AA0  38 C0 00 00 */	li r6, 0
/* 80849AA4  4B A0 08 34 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80849AA8  2C 03 00 00 */	cmpwi r3, 0
/* 80849AAC  41 82 00 E0 */	beq lbl_80849B8C
/* 80849AB0  4B 9E E9 90 */	b getSelectCursorPos__12dMsgObject_cFv
/* 80849AB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80849AB8  40 82 00 38 */	bne lbl_80849AF0
/* 80849ABC  38 00 00 00 */	li r0, 0
/* 80849AC0  98 1F 06 EB */	stb r0, 0x6eb(r31)
/* 80849AC4  7F C3 F3 78 */	mr r3, r30
/* 80849AC8  4B 91 79 E4 */	b Start__9dCamera_cFv
/* 80849ACC  7F C3 F3 78 */	mr r3, r30
/* 80849AD0  38 80 00 00 */	li r4, 0
/* 80849AD4  4B 91 95 38 */	b SetTrimSize__9dCamera_cFl
/* 80849AD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80849ADC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80849AE0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80849AE4  4B 7F 89 84 */	b reset__14dEvt_control_cFv
/* 80849AE8  38 60 00 01 */	li r3, 1
/* 80849AEC  48 00 00 A4 */	b lbl_80849B90
lbl_80849AF0:
/* 80849AF0  4B 9E E9 50 */	b getSelectCursorPos__12dMsgObject_cFv
/* 80849AF4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80849AF8  28 00 00 01 */	cmplwi r0, 1
/* 80849AFC  40 82 00 64 */	bne lbl_80849B60
/* 80849B00  38 00 00 03 */	li r0, 3
/* 80849B04  98 1F 06 EB */	stb r0, 0x6eb(r31)
/* 80849B08  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 80849B0C  8B E3 0D 64 */	lbz r31, struct_80450D64+0x0@l(r3)
/* 80849B10  7F FF 07 74 */	extsb r31, r31
/* 80849B14  38 60 00 00 */	li r3, 0
/* 80849B18  4B 7E 2E 64 */	b getLayerNo__14dComIfG_play_cFi
/* 80849B1C  7C 66 07 74 */	extsb r6, r3
/* 80849B20  38 00 00 01 */	li r0, 1
/* 80849B24  90 01 00 08 */	stw r0, 8(r1)
/* 80849B28  38 00 00 00 */	li r0, 0
/* 80849B2C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80849B30  3C 60 80 85 */	lis r3, stringBase0@ha
/* 80849B34  38 63 4D 14 */	addi r3, r3, stringBase0@l
/* 80849B38  38 80 00 00 */	li r4, 0
/* 80849B3C  7F E5 FB 78 */	mr r5, r31
/* 80849B40  3C E0 80 85 */	lis r7, lit_3942@ha
/* 80849B44  C0 27 4B 38 */	lfs f1, lit_3942@l(r7)
/* 80849B48  38 E0 00 0A */	li r7, 0xa
/* 80849B4C  39 00 00 01 */	li r8, 1
/* 80849B50  39 20 00 00 */	li r9, 0
/* 80849B54  39 40 00 00 */	li r10, 0
/* 80849B58  4B 7E 37 A4 */	b dComIfGp_setNextStage__FPCcsScScfUliScsii
/* 80849B5C  48 00 00 30 */	b lbl_80849B8C
lbl_80849B60:
/* 80849B60  38 00 00 03 */	li r0, 3
/* 80849B64  98 1F 06 EB */	stb r0, 0x6eb(r31)
/* 80849B68  38 60 00 03 */	li r3, 3
/* 80849B6C  3C 80 80 85 */	lis r4, lit_3942@ha
/* 80849B70  C0 24 4B 38 */	lfs f1, lit_3942@l(r4)
/* 80849B74  38 80 00 00 */	li r4, 0
/* 80849B78  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80849B7C  7C 05 07 74 */	extsb r5, r0
/* 80849B80  38 C0 00 00 */	li r6, 0
/* 80849B84  38 E0 FF FF */	li r7, -1
/* 80849B88  4B 7D D5 E8 */	b dStage_changeScene__FifUlScsi
lbl_80849B8C:
/* 80849B8C  38 60 00 01 */	li r3, 1
lbl_80849B90:
/* 80849B90  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80849B94  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80849B98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80849B9C  7C 08 03 A6 */	mtlr r0
/* 80849BA0  38 21 00 20 */	addi r1, r1, 0x20
/* 80849BA4  4E 80 00 20 */	blr 
