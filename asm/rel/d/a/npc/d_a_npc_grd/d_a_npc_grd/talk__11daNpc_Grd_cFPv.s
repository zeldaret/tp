lbl_809D2970:
/* 809D2970  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809D2974  7C 08 02 A6 */	mflr r0
/* 809D2978  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D297C  39 61 00 20 */	addi r11, r1, 0x20
/* 809D2980  4B 98 F8 58 */	b _savegpr_28
/* 809D2984  7C 7D 1B 78 */	mr r29, r3
/* 809D2988  3B E0 00 00 */	li r31, 0
/* 809D298C  3B C0 00 00 */	li r30, 0
/* 809D2990  A0 03 0E 16 */	lhz r0, 0xe16(r3)
/* 809D2994  2C 00 00 02 */	cmpwi r0, 2
/* 809D2998  41 82 00 40 */	beq lbl_809D29D8
/* 809D299C  40 80 01 68 */	bge lbl_809D2B04
/* 809D29A0  2C 00 00 00 */	cmpwi r0, 0
/* 809D29A4  41 82 00 0C */	beq lbl_809D29B0
/* 809D29A8  48 00 01 5C */	b lbl_809D2B04
/* 809D29AC  48 00 01 58 */	b lbl_809D2B04
lbl_809D29B0:
/* 809D29B0  88 1D 09 F0 */	lbz r0, 0x9f0(r29)
/* 809D29B4  28 00 00 00 */	cmplwi r0, 0
/* 809D29B8  40 82 01 4C */	bne lbl_809D2B04
/* 809D29BC  80 9D 0E 10 */	lwz r4, 0xe10(r29)
/* 809D29C0  38 A0 00 00 */	li r5, 0
/* 809D29C4  4B 78 13 58 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 809D29C8  38 00 00 00 */	li r0, 0
/* 809D29CC  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 809D29D0  38 00 00 02 */	li r0, 2
/* 809D29D4  B0 1D 0E 16 */	sth r0, 0xe16(r29)
lbl_809D29D8:
/* 809D29D8  88 1D 09 EA */	lbz r0, 0x9ea(r29)
/* 809D29DC  28 00 00 00 */	cmplwi r0, 0
/* 809D29E0  41 82 00 0C */	beq lbl_809D29EC
/* 809D29E4  3B C0 00 01 */	li r30, 1
/* 809D29E8  48 00 00 C0 */	b lbl_809D2AA8
lbl_809D29EC:
/* 809D29EC  7F A3 EB 78 */	mr r3, r29
/* 809D29F0  38 80 00 03 */	li r4, 3
/* 809D29F4  4B FF FA 7D */	bl setLookMode__11daNpc_Grd_cFi
/* 809D29F8  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 809D29FC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809D2A00  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 809D2A04  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 809D2A08  4B 77 DC B4 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809D2A0C  7F A3 EB 78 */	mr r3, r29
/* 809D2A10  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 809D2A14  4B 64 7C FC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809D2A18  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 809D2A1C  7C 60 07 34 */	extsh r0, r3
/* 809D2A20  7C 04 00 00 */	cmpw r4, r0
/* 809D2A24  40 82 00 0C */	bne lbl_809D2A30
/* 809D2A28  3B C0 00 01 */	li r30, 1
/* 809D2A2C  48 00 00 7C */	b lbl_809D2AA8
lbl_809D2A30:
/* 809D2A30  7F A3 EB 78 */	mr r3, r29
/* 809D2A34  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 809D2A38  4B 64 7C D8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809D2A3C  7C 64 1B 78 */	mr r4, r3
/* 809D2A40  7F A3 EB 78 */	mr r3, r29
/* 809D2A44  38 A0 00 03 */	li r5, 3
/* 809D2A48  38 C0 00 05 */	li r6, 5
/* 809D2A4C  38 E0 00 0F */	li r7, 0xf
/* 809D2A50  4B 78 16 54 */	b step__8daNpcF_cFsiii
/* 809D2A54  2C 03 00 00 */	cmpwi r3, 0
/* 809D2A58  41 82 00 50 */	beq lbl_809D2AA8
/* 809D2A5C  7F A3 EB 78 */	mr r3, r29
/* 809D2A60  38 80 00 03 */	li r4, 3
/* 809D2A64  3C A0 80 9D */	lis r5, lit_4710@ha
/* 809D2A68  C0 25 3A 94 */	lfs f1, lit_4710@l(r5)
/* 809D2A6C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809D2A70  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809D2A74  7D 89 03 A6 */	mtctr r12
/* 809D2A78  4E 80 04 21 */	bctrl 
/* 809D2A7C  7F A3 EB 78 */	mr r3, r29
/* 809D2A80  38 80 00 00 */	li r4, 0
/* 809D2A84  3C A0 80 9D */	lis r5, lit_4710@ha
/* 809D2A88  C0 25 3A 94 */	lfs f1, lit_4710@l(r5)
/* 809D2A8C  38 A0 00 00 */	li r5, 0
/* 809D2A90  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809D2A94  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809D2A98  7D 89 03 A6 */	mtctr r12
/* 809D2A9C  4E 80 04 21 */	bctrl 
/* 809D2AA0  38 00 00 00 */	li r0, 0
/* 809D2AA4  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_809D2AA8:
/* 809D2AA8  2C 1E 00 00 */	cmpwi r30, 0
/* 809D2AAC  41 82 00 24 */	beq lbl_809D2AD0
/* 809D2AB0  7F A3 EB 78 */	mr r3, r29
/* 809D2AB4  38 80 00 00 */	li r4, 0
/* 809D2AB8  38 A0 00 01 */	li r5, 1
/* 809D2ABC  38 C0 00 00 */	li r6, 0
/* 809D2AC0  4B 78 12 C4 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809D2AC4  2C 03 00 00 */	cmpwi r3, 0
/* 809D2AC8  41 82 00 08 */	beq lbl_809D2AD0
/* 809D2ACC  3B E0 00 01 */	li r31, 1
lbl_809D2AD0:
/* 809D2AD0  2C 1F 00 00 */	cmpwi r31, 0
/* 809D2AD4  41 82 00 30 */	beq lbl_809D2B04
/* 809D2AD8  38 00 00 03 */	li r0, 3
/* 809D2ADC  B0 1D 0E 16 */	sth r0, 0xe16(r29)
/* 809D2AE0  88 1D 09 EC */	lbz r0, 0x9ec(r29)
/* 809D2AE4  28 00 00 00 */	cmplwi r0, 0
/* 809D2AE8  40 82 00 14 */	bne lbl_809D2AFC
/* 809D2AEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809D2AF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809D2AF4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 809D2AF8  4B 66 F9 70 */	b reset__14dEvt_control_cFv
lbl_809D2AFC:
/* 809D2AFC  38 00 00 00 */	li r0, 0
/* 809D2B00  98 1D 09 EC */	stb r0, 0x9ec(r29)
lbl_809D2B04:
/* 809D2B04  7F E3 FB 78 */	mr r3, r31
/* 809D2B08  39 61 00 20 */	addi r11, r1, 0x20
/* 809D2B0C  4B 98 F7 18 */	b _restgpr_28
/* 809D2B10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809D2B14  7C 08 03 A6 */	mtlr r0
/* 809D2B18  38 21 00 20 */	addi r1, r1, 0x20
/* 809D2B1C  4E 80 00 20 */	blr 
