lbl_802598AC:
/* 802598AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802598B0  7C 08 02 A6 */	mflr r0
/* 802598B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802598B8  39 61 00 20 */	addi r11, r1, 0x20
/* 802598BC  48 10 89 15 */	bl _savegpr_26
/* 802598C0  4B DD 7A FD */	bl reset__7daSus_cFv
/* 802598C4  4B DE 63 AD */	bl remove__8dMpath_cFv
/* 802598C8  4B E4 23 99 */	bl remove__7dTres_cFv
/* 802598CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802598D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802598D4  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 802598D8  38 7F 47 80 */	addi r3, r31, 0x4780
/* 802598DC  38 80 FF FF */	li r4, -1
/* 802598E0  4B E1 6E 95 */	bl __dt__12dAttention_cFv
/* 802598E4  38 7F 4C 9C */	addi r3, r31, 0x4c9c
/* 802598E8  4B E1 67 11 */	bl Remove__12dVibration_cFv
/* 802598EC  7F E3 FB 78 */	mr r3, r31
/* 802598F0  81 9F 14 00 */	lwz r12, 0x1400(r31)
/* 802598F4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802598F8  7D 89 03 A6 */	mtctr r12
/* 802598FC  4E 80 04 21 */	bctrl 
/* 80259900  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80259904  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80259908  38 63 23 3C */	addi r3, r3, 0x233c
/* 8025990C  4B E2 C5 FD */	bl Dt__4dCcSFv
/* 80259910  4B DC D4 E9 */	bl dStage_Delete__Fv
/* 80259914  38 7F 3F 90 */	addi r3, r31, 0x3f90
/* 80259918  4B DE 98 D1 */	bl remove__14dEvt_control_cFv
/* 8025991C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80259920  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80259924  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80259928  38 80 00 00 */	li r4, 0
/* 8025992C  4B DF 26 A9 */	bl removeScene__13dPa_control_cFb
/* 80259930  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80259934  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80259938  80 7D 5C F8 */	lwz r3, 0x5cf8(r29)
/* 8025993C  81 83 00 00 */	lwz r12, 0(r3)
/* 80259940  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80259944  7D 89 03 A6 */	mtctr r12
/* 80259948  4E 80 04 21 */	bctrl 
/* 8025994C  80 7D 5C F8 */	lwz r3, 0x5cf8(r29)
/* 80259950  81 83 00 00 */	lwz r12, 0(r3)
/* 80259954  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80259958  7D 89 03 A6 */	mtctr r12
/* 8025995C  4E 80 04 21 */	bctrl 
/* 80259960  4B DD FF B1 */	bl remove__7dDemo_cFv
/* 80259964  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80259968  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025996C  80 7D 5E BC */	lwz r3, 0x5ebc(r29)
/* 80259970  4B DC 6A 71 */	bl fopMsgM_destroyExpHeap__FP10JKRExpHeap
/* 80259974  38 00 00 00 */	li r0, 0
/* 80259978  90 1D 5E BC */	stw r0, 0x5ebc(r29)
/* 8025997C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80259980  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80259984  80 7D 5E C8 */	lwz r3, 0x5ec8(r29)
/* 80259988  4B DC 6A 59 */	bl fopMsgM_destroyExpHeap__FP10JKRExpHeap
/* 8025998C  38 00 00 00 */	li r0, 0
/* 80259990  90 1D 5E C8 */	stw r0, 0x5ec8(r29)
/* 80259994  7F E3 FB 78 */	mr r3, r31
/* 80259998  4B DD 30 D9 */	bl deleteSimpleModel__14dComIfG_play_cFv
/* 8025999C  4B E4 2E C9 */	bl remove__10dMdl_mng_cFv
/* 802599A0  3C 60 80 3E */	lis r3, m_bloom__13mDoGph_gInf_c@ha /* 0x803DD428@ha */
/* 802599A4  38 63 D4 28 */	addi r3, r3, m_bloom__13mDoGph_gInf_c@l /* 0x803DD428@l */
/* 802599A8  4B DA FC 51 */	bl remove__Q213mDoGph_gInf_c7bloom_cFv
/* 802599AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802599B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802599B4  3B C0 00 00 */	li r30, 0
/* 802599B8  9B C3 00 7C */	stb r30, 0x7c(r3)
/* 802599BC  9B C3 5D 44 */	stb r30, 0x5d44(r3)
/* 802599C0  93 C3 61 B0 */	stw r30, 0x61b0(r3)
/* 802599C4  88 8D 81 E4 */	lbz r4, struct_80450764+0x0(r13)
/* 802599C8  7C 80 07 75 */	extsb. r0, r4
/* 802599CC  41 80 00 CC */	blt lbl_80259A98
/* 802599D0  3C 60 80 3A */	lis r3, PreLoadInfoT@ha /* 0x8039A2C8@ha */
/* 802599D4  38 63 A2 C8 */	addi r3, r3, PreLoadInfoT@l /* 0x8039A2C8@l */
/* 802599D8  7C 80 07 74 */	extsb r0, r4
/* 802599DC  54 00 20 36 */	slwi r0, r0, 4
/* 802599E0  7C 63 02 14 */	add r3, r3, r0
/* 802599E4  83 83 00 08 */	lwz r28, 8(r3)
/* 802599E8  8B 63 00 0D */	lbz r27, 0xd(r3)
/* 802599EC  28 1C 00 00 */	cmplwi r28, 0
/* 802599F0  41 82 00 40 */	beq lbl_80259A30
/* 802599F4  80 1C 00 00 */	lwz r0, 0(r28)
/* 802599F8  28 00 00 00 */	cmplwi r0, 0
/* 802599FC  41 82 00 34 */	beq lbl_80259A30
/* 80259A00  3B 40 00 00 */	li r26, 0
/* 80259A04  3B A0 00 00 */	li r29, 0
/* 80259A08  48 00 00 20 */	b lbl_80259A28
lbl_80259A0C:
/* 80259A0C  38 6D 8B 78 */	la r3, resPhase(r13) /* 804510F8-_SDA_BASE_ */
/* 80259A10  7C 63 F2 14 */	add r3, r3, r30
/* 80259A14  7C 9C E8 2E */	lwzx r4, r28, r29
/* 80259A18  4B DD 35 F1 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80259A1C  3B 5A 00 01 */	addi r26, r26, 1
/* 80259A20  3B BD 00 04 */	addi r29, r29, 4
/* 80259A24  3B DE 00 08 */	addi r30, r30, 8
lbl_80259A28:
/* 80259A28  7C 1A D8 00 */	cmpw r26, r27
/* 80259A2C  41 80 FF E0 */	blt lbl_80259A0C
lbl_80259A30:
/* 80259A30  3C 60 80 3A */	lis r3, PreLoadInfoT@ha /* 0x8039A2C8@ha */
/* 80259A34  38 63 A2 C8 */	addi r3, r3, PreLoadInfoT@l /* 0x8039A2C8@l */
/* 80259A38  88 0D 81 E4 */	lbz r0, struct_80450764+0x0(r13)
/* 80259A3C  7C 00 07 74 */	extsb r0, r0
/* 80259A40  54 00 20 36 */	slwi r0, r0, 4
/* 80259A44  7C 63 02 14 */	add r3, r3, r0
/* 80259A48  83 43 00 04 */	lwz r26, 4(r3)
/* 80259A4C  8B 63 00 0C */	lbz r27, 0xc(r3)
/* 80259A50  28 1A 00 00 */	cmplwi r26, 0
/* 80259A54  41 82 00 44 */	beq lbl_80259A98
/* 80259A58  A8 1A 00 00 */	lha r0, 0(r26)
/* 80259A5C  2C 00 00 00 */	cmpwi r0, 0
/* 80259A60  41 82 00 38 */	beq lbl_80259A98
/* 80259A64  3B 80 00 00 */	li r28, 0
/* 80259A68  3B C0 00 00 */	li r30, 0
/* 80259A6C  3B A0 00 00 */	li r29, 0
/* 80259A70  48 00 00 20 */	b lbl_80259A90
lbl_80259A74:
/* 80259A74  38 6D 8B 80 */	la r3, dylPhase(r13) /* 80451100-_SDA_BASE_ */
/* 80259A78  7C 63 EA 14 */	add r3, r3, r29
/* 80259A7C  7C 9A F2 AE */	lhax r4, r26, r30
/* 80259A80  4B DB EE 11 */	bl Unlink__7cDylPhsFP30request_of_phase_process_classs
/* 80259A84  3B 9C 00 01 */	addi r28, r28, 1
/* 80259A88  3B DE 00 02 */	addi r30, r30, 2
/* 80259A8C  3B BD 00 08 */	addi r29, r29, 8
lbl_80259A90:
/* 80259A90  7C 1C D8 00 */	cmpw r28, r27
/* 80259A94  41 80 FF E0 */	blt lbl_80259A74
lbl_80259A98:
/* 80259A98  7F E3 FB 78 */	mr r3, r31
/* 80259A9C  4B DD 17 91 */	bl init__14dComIfG_play_cFv
/* 80259AA0  38 60 00 00 */	li r3, 0
/* 80259AA4  48 08 B1 99 */	bl setMessageCount__12JUTAssertionFi
/* 80259AA8  38 60 00 01 */	li r3, 1
/* 80259AAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80259AB0  48 10 87 6D */	bl _restgpr_26
/* 80259AB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80259AB8  7C 08 03 A6 */	mtlr r0
/* 80259ABC  38 21 00 20 */	addi r1, r1, 0x20
/* 80259AC0  4E 80 00 20 */	blr 
