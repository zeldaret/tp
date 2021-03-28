lbl_808469B0:
/* 808469B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 808469B4  7C 08 02 A6 */	mflr r0
/* 808469B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 808469BC  39 61 00 20 */	addi r11, r1, 0x20
/* 808469C0  4B B1 B8 18 */	b _savegpr_28
/* 808469C4  7C 7D 1B 78 */	mr r29, r3
/* 808469C8  3C 80 80 85 */	lis r4, l_arcName@ha
/* 808469CC  3B E4 8E 3C */	addi r31, r4, l_arcName@l
/* 808469D0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 808469D4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 808469D8  40 82 00 E4 */	bne lbl_80846ABC
/* 808469DC  7F A0 EB 79 */	or. r0, r29, r29
/* 808469E0  41 82 00 D0 */	beq lbl_80846AB0
/* 808469E4  7C 1E 03 78 */	mr r30, r0
/* 808469E8  4B 7D 21 7C */	b __ct__10fopAc_ac_cFv
/* 808469EC  3B 9E 05 78 */	addi r28, r30, 0x578
/* 808469F0  3C 60 80 85 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 808469F4  38 03 8F 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 808469F8  90 1E 05 78 */	stw r0, 0x578(r30)
/* 808469FC  7F 83 E3 78 */	mr r3, r28
/* 80846A00  38 80 00 00 */	li r4, 0
/* 80846A04  4B AE 19 F8 */	b init__12J3DFrameCtrlFs
/* 80846A08  38 00 00 00 */	li r0, 0
/* 80846A0C  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80846A10  3B 9E 05 90 */	addi r28, r30, 0x590
/* 80846A14  3C 60 80 85 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80846A18  38 03 8F 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80846A1C  90 1E 05 90 */	stw r0, 0x590(r30)
/* 80846A20  7F 83 E3 78 */	mr r3, r28
/* 80846A24  38 80 00 00 */	li r4, 0
/* 80846A28  4B AE 19 D4 */	b init__12J3DFrameCtrlFs
/* 80846A2C  38 00 00 00 */	li r0, 0
/* 80846A30  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80846A34  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80846A38  3C 80 80 84 */	lis r4, __ct__19mDoExt_AnmRatioPackFv@ha
/* 80846A3C  38 84 6D 30 */	addi r4, r4, __ct__19mDoExt_AnmRatioPackFv@l
/* 80846A40  3C A0 80 84 */	lis r5, __dt__19mDoExt_AnmRatioPackFv@ha
/* 80846A44  38 A5 6C F4 */	addi r5, r5, __dt__19mDoExt_AnmRatioPackFv@l
/* 80846A48  38 C0 00 08 */	li r6, 8
/* 80846A4C  38 E0 00 03 */	li r7, 3
/* 80846A50  4B B1 B3 10 */	b __construct_array
/* 80846A54  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 80846A58  3C 80 80 84 */	lis r4, __ct__16daPy_frameCtrl_cFv@ha
/* 80846A5C  38 84 6C A8 */	addi r4, r4, __ct__16daPy_frameCtrl_cFv@l
/* 80846A60  3C A0 80 84 */	lis r5, __dt__16daPy_frameCtrl_cFv@ha
/* 80846A64  38 A5 6C 4C */	addi r5, r5, __dt__16daPy_frameCtrl_cFv@l
/* 80846A68  38 C0 00 18 */	li r6, 0x18
/* 80846A6C  38 E0 00 03 */	li r7, 3
/* 80846A70  4B B1 B2 F0 */	b __construct_array
/* 80846A74  38 7E 06 18 */	addi r3, r30, 0x618
/* 80846A78  4B A7 99 50 */	b __ct__10Z2CreatureFv
/* 80846A7C  3B 9E 06 A8 */	addi r28, r30, 0x6a8
/* 80846A80  3C 60 80 85 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80846A84  38 03 8F 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80846A88  90 1E 06 A8 */	stw r0, 0x6a8(r30)
/* 80846A8C  7F 83 E3 78 */	mr r3, r28
/* 80846A90  38 80 00 00 */	li r4, 0
/* 80846A94  4B AE 19 68 */	b init__12J3DFrameCtrlFs
/* 80846A98  38 00 00 00 */	li r0, 0
/* 80846A9C  90 1C 00 18 */	stw r0, 0x18(r28)
/* 80846AA0  38 7E 06 C4 */	addi r3, r30, 0x6c4
/* 80846AA4  4B 91 82 58 */	b clearData__16daPy_actorKeep_cFv
/* 80846AA8  38 7E 06 CC */	addi r3, r30, 0x6cc
/* 80846AAC  4B 91 82 50 */	b clearData__16daPy_actorKeep_cFv
lbl_80846AB0:
/* 80846AB0  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80846AB4  60 00 00 08 */	ori r0, r0, 8
/* 80846AB8  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80846ABC:
/* 80846ABC  38 7D 05 68 */	addi r3, r29, 0x568
/* 80846AC0  38 9F 00 00 */	addi r4, r31, 0
/* 80846AC4  4B 7E 63 F8 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80846AC8  7C 7E 1B 78 */	mr r30, r3
/* 80846ACC  2C 1E 00 04 */	cmpwi r30, 4
/* 80846AD0  40 82 01 60 */	bne lbl_80846C30
/* 80846AD4  7F A3 EB 78 */	mr r3, r29
/* 80846AD8  3C 80 80 84 */	lis r4, daHoZelda_createHeap__FP10fopAc_ac_c@ha
/* 80846ADC  38 84 66 F8 */	addi r4, r4, daHoZelda_createHeap__FP10fopAc_ac_c@l
/* 80846AE0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000A240@ha */
/* 80846AE4  38 A5 A2 40 */	addi r5, r5, 0xA240 /* 0x0000A240@l */
/* 80846AE8  4B 7D 39 C8 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80846AEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80846AF0  40 82 00 0C */	bne lbl_80846AFC
/* 80846AF4  38 60 00 05 */	li r3, 5
/* 80846AF8  48 00 01 3C */	b lbl_80846C34
lbl_80846AFC:
/* 80846AFC  38 7D 06 18 */	addi r3, r29, 0x618
/* 80846B00  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80846B04  38 BD 05 38 */	addi r5, r29, 0x538
/* 80846B08  38 C0 00 03 */	li r6, 3
/* 80846B0C  38 E0 00 01 */	li r7, 1
/* 80846B10  4B A7 9A 20 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80846B14  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80846B18  7C 03 07 74 */	extsb r3, r0
/* 80846B1C  4B 7E 65 50 */	b dComIfGp_getReverb__Fi
/* 80846B20  98 7D 06 E0 */	stb r3, 0x6e0(r29)
/* 80846B24  7F A3 EB 78 */	mr r3, r29
/* 80846B28  48 00 16 75 */	bl setRideOffset__11daHoZelda_cFv
/* 80846B2C  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80846B30  90 1D 05 24 */	stw r0, 0x524(r29)
/* 80846B34  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80846B38  80 83 00 04 */	lwz r4, 4(r3)
/* 80846B3C  80 64 00 28 */	lwz r3, 0x28(r4)
/* 80846B40  80 63 00 00 */	lwz r3, 0(r3)
/* 80846B44  80 1D 05 A8 */	lwz r0, 0x5a8(r29)
/* 80846B48  90 03 00 54 */	stw r0, 0x54(r3)
/* 80846B4C  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80846B50  93 A3 00 14 */	stw r29, 0x14(r3)
/* 80846B54  80 64 00 28 */	lwz r3, 0x28(r4)
/* 80846B58  80 A3 00 00 */	lwz r5, 0(r3)
/* 80846B5C  3C 60 80 84 */	lis r3, daHoZelda_modelCallBack__FP8J3DJointi@ha
/* 80846B60  38 03 69 6C */	addi r0, r3, daHoZelda_modelCallBack__FP8J3DJointi@l
/* 80846B64  90 05 00 04 */	stw r0, 4(r5)
/* 80846B68  80 64 00 28 */	lwz r3, 0x28(r4)
/* 80846B6C  80 63 00 04 */	lwz r3, 4(r3)
/* 80846B70  90 03 00 04 */	stw r0, 4(r3)
/* 80846B74  80 64 00 28 */	lwz r3, 0x28(r4)
/* 80846B78  80 63 00 5C */	lwz r3, 0x5c(r3)
/* 80846B7C  90 03 00 04 */	stw r0, 4(r3)
/* 80846B80  80 64 00 28 */	lwz r3, 0x28(r4)
/* 80846B84  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80846B88  90 03 00 04 */	stw r0, 4(r3)
/* 80846B8C  80 64 00 60 */	lwz r3, 0x60(r4)
/* 80846B90  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80846B94  80 1D 06 10 */	lwz r0, 0x610(r29)
/* 80846B98  90 03 00 3C */	stw r0, 0x3c(r3)
/* 80846B9C  80 64 00 60 */	lwz r3, 0x60(r4)
/* 80846BA0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80846BA4  80 1D 06 14 */	lwz r0, 0x614(r29)
/* 80846BA8  90 03 00 3C */	stw r0, 0x3c(r3)
/* 80846BAC  80 7D 06 10 */	lwz r3, 0x610(r29)
/* 80846BB0  4B FF F2 FD */	bl init__18daHoZelda_matAnm_cFv
/* 80846BB4  80 7D 06 14 */	lwz r3, 0x614(r29)
/* 80846BB8  4B FF F2 F5 */	bl init__18daHoZelda_matAnm_cFv
/* 80846BBC  7F A3 EB 78 */	mr r3, r29
/* 80846BC0  38 80 00 1C */	li r4, 0x1c
/* 80846BC4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80846BC8  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80846BCC  38 A0 FF FF */	li r5, -1
/* 80846BD0  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 80846BD4  48 00 06 ED */	bl setSingleAnime__11daHoZelda_cFUsffsf
/* 80846BD8  7F A3 EB 78 */	mr r3, r29
/* 80846BDC  48 00 06 59 */	bl resetUpperAnime__11daHoZelda_cFv
/* 80846BE0  38 00 00 0C */	li r0, 0xc
/* 80846BE4  B0 1D 06 EA */	sth r0, 0x6ea(r29)
/* 80846BE8  A8 1D 06 B0 */	lha r0, 0x6b0(r29)
/* 80846BEC  C8 3F 00 20 */	lfd f1, 0x20(r31)
/* 80846BF0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80846BF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80846BF8  3C 00 43 30 */	lis r0, 0x4330
/* 80846BFC  90 01 00 08 */	stw r0, 8(r1)
/* 80846C00  C8 01 00 08 */	lfd f0, 8(r1)
/* 80846C04  EC 00 08 28 */	fsubs f0, f0, f1
/* 80846C08  D0 1D 06 B8 */	stfs f0, 0x6b8(r29)
/* 80846C0C  7F A3 EB 78 */	mr r3, r29
/* 80846C10  48 00 13 45 */	bl setMatrix__11daHoZelda_cFv
/* 80846C14  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80846C18  81 83 00 00 */	lwz r12, 0(r3)
/* 80846C1C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80846C20  7D 89 03 A6 */	mtctr r12
/* 80846C24  4E 80 04 21 */	bctrl 
/* 80846C28  7F A3 EB 78 */	mr r3, r29
/* 80846C2C  48 00 12 19 */	bl setBowModel__11daHoZelda_cFv
lbl_80846C30:
/* 80846C30  7F C3 F3 78 */	mr r3, r30
lbl_80846C34:
/* 80846C34  39 61 00 20 */	addi r11, r1, 0x20
/* 80846C38  4B B1 B5 EC */	b _restgpr_28
/* 80846C3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80846C40  7C 08 03 A6 */	mtlr r0
/* 80846C44  38 21 00 20 */	addi r1, r1, 0x20
/* 80846C48  4E 80 00 20 */	blr 
