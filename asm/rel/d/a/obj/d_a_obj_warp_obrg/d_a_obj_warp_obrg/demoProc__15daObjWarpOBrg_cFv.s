lbl_80D2AA34:
/* 80D2AA34  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80D2AA38  7C 08 02 A6 */	mflr r0
/* 80D2AA3C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80D2AA40  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80D2AA44  4B 63 77 71 */	bl _savegpr_19
/* 80D2AA48  7C 7F 1B 78 */	mr r31, r3
/* 80D2AA4C  3C 60 80 D3 */	lis r3, l_bmd_idx@ha /* 0x80D2B7F8@ha */
/* 80D2AA50  3B C3 B7 F8 */	addi r30, r3, l_bmd_idx@l /* 0x80D2B7F8@l */
/* 80D2AA54  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 80D2AA58  82 83 10 18 */	lwz r20, m_midnaActor__9daPy_py_c@l(r3)  /* 0x80451018@l */
/* 80D2AA5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2AA60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2AA64  3B 63 0F 38 */	addi r27, r3, 0xf38
/* 80D2AA68  3B BB 40 C0 */	addi r29, r27, 0x40c0
/* 80D2AA6C  7F A3 EB 78 */	mr r3, r29
/* 80D2AA70  80 9F 06 30 */	lwz r4, 0x630(r31)
/* 80D2AA74  3C A0 80 D3 */	lis r5, action_table@ha /* 0x80D2B9F0@ha */
/* 80D2AA78  38 A5 B9 F0 */	addi r5, r5, action_table@l /* 0x80D2B9F0@l */
/* 80D2AA7C  38 C0 00 04 */	li r6, 4
/* 80D2AA80  38 E0 00 00 */	li r7, 0
/* 80D2AA84  39 00 00 00 */	li r8, 0
/* 80D2AA88  4B 31 D3 89 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80D2AA8C  7C 7C 1B 78 */	mr r28, r3
/* 80D2AA90  7F A3 EB 78 */	mr r3, r29
/* 80D2AA94  80 9F 06 30 */	lwz r4, 0x630(r31)
/* 80D2AA98  4B 31 D2 B5 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80D2AA9C  2C 03 00 00 */	cmpwi r3, 0
/* 80D2AAA0  41 82 05 50 */	beq lbl_80D2AFF0
/* 80D2AAA4  2C 1C 00 02 */	cmpwi r28, 2
/* 80D2AAA8  41 82 01 68 */	beq lbl_80D2AC10
/* 80D2AAAC  40 80 00 14 */	bge lbl_80D2AAC0
/* 80D2AAB0  2C 1C 00 00 */	cmpwi r28, 0
/* 80D2AAB4  41 82 00 18 */	beq lbl_80D2AACC
/* 80D2AAB8  40 80 00 50 */	bge lbl_80D2AB08
/* 80D2AABC  48 00 05 34 */	b lbl_80D2AFF0
lbl_80D2AAC0:
/* 80D2AAC0  2C 1C 00 04 */	cmpwi r28, 4
/* 80D2AAC4  40 80 05 2C */	bge lbl_80D2AFF0
/* 80D2AAC8  48 00 02 4C */	b lbl_80D2AD14
lbl_80D2AACC:
/* 80D2AACC  7F A3 EB 78 */	mr r3, r29
/* 80D2AAD0  80 9F 06 30 */	lwz r4, 0x630(r31)
/* 80D2AAD4  3C A0 80 D3 */	lis r5, d_a_obj_warp_obrg__stringBase0@ha /* 0x80D2B8AC@ha */
/* 80D2AAD8  38 A5 B8 AC */	addi r5, r5, d_a_obj_warp_obrg__stringBase0@l /* 0x80D2B8AC@l */
/* 80D2AADC  38 A5 00 62 */	addi r5, r5, 0x62
/* 80D2AAE0  38 C0 00 03 */	li r6, 3
/* 80D2AAE4  4B 31 D6 09 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80D2AAE8  28 03 00 00 */	cmplwi r3, 0
/* 80D2AAEC  40 82 00 10 */	bne lbl_80D2AAFC
/* 80D2AAF0  38 00 00 01 */	li r0, 1
/* 80D2AAF4  98 1F 06 3C */	stb r0, 0x63c(r31)
/* 80D2AAF8  48 00 04 F8 */	b lbl_80D2AFF0
lbl_80D2AAFC:
/* 80D2AAFC  80 03 00 00 */	lwz r0, 0(r3)
/* 80D2AB00  98 1F 06 3C */	stb r0, 0x63c(r31)
/* 80D2AB04  48 00 04 EC */	b lbl_80D2AFF0
lbl_80D2AB08:
/* 80D2AB08  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80D2AB0C  28 03 00 00 */	cmplwi r3, 0
/* 80D2AB10  41 82 00 1C */	beq lbl_80D2AB2C
/* 80D2AB14  4B 53 D6 C1 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80D2AB18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D2AB1C  41 82 00 10 */	beq lbl_80D2AB2C
/* 80D2AB20  7F 63 DB 78 */	mr r3, r27
/* 80D2AB24  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80D2AB28  4B 34 97 29 */	bl Release__4cBgSFP9dBgW_Base
lbl_80D2AB2C:
/* 80D2AB2C  4B 30 4F BD */	bl dComIfGp_TransportWarp_check__Fv
/* 80D2AB30  2C 03 00 00 */	cmpwi r3, 0
/* 80D2AB34  41 82 00 20 */	beq lbl_80D2AB54
/* 80D2AB38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2AB3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2AB40  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D2AB44  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D2AB48  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D2AB4C  A0 84 00 FA */	lhz r4, 0xfa(r4)
/* 80D2AB50  4B 30 9E 3D */	bl onEventBit__11dSv_event_cFUs
lbl_80D2AB54:
/* 80D2AB54  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80D2AB58  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80D2AB5C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80D2AB60  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80D2AB64  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80D2AB68  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80D2AB6C  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80D2AB70  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D2AB74  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80D2AB78  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D2AB7C  3A 60 00 00 */	li r19, 0
/* 80D2AB80  3A 80 00 00 */	li r20, 0
/* 80D2AB84  3A A0 00 00 */	li r21, 0
/* 80D2AB88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2AB8C  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2AB90  3A DE 00 2C */	addi r22, r30, 0x2c
lbl_80D2AB94:
/* 80D2AB94  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 80D2AB98  38 80 00 00 */	li r4, 0
/* 80D2AB9C  90 81 00 08 */	stw r4, 8(r1)
/* 80D2ABA0  38 00 FF FF */	li r0, -1
/* 80D2ABA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D2ABA8  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D2ABAC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D2ABB0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D2ABB4  38 80 00 00 */	li r4, 0
/* 80D2ABB8  7C B6 AA 2E */	lhzx r5, r22, r21
/* 80D2ABBC  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80D2ABC0  38 E0 00 00 */	li r7, 0
/* 80D2ABC4  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80D2ABC8  39 20 00 00 */	li r9, 0
/* 80D2ABCC  39 40 00 FF */	li r10, 0xff
/* 80D2ABD0  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80D2ABD4  4B 32 1E BD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D2ABD8  38 14 06 00 */	addi r0, r20, 0x600
/* 80D2ABDC  7C 7F 01 2E */	stwx r3, r31, r0
/* 80D2ABE0  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80D2ABE4  28 03 00 00 */	cmplwi r3, 0
/* 80D2ABE8  41 82 00 10 */	beq lbl_80D2ABF8
/* 80D2ABEC  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80D2ABF0  60 00 00 40 */	ori r0, r0, 0x40
/* 80D2ABF4  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80D2ABF8:
/* 80D2ABF8  3A 73 00 01 */	addi r19, r19, 1
/* 80D2ABFC  2C 13 00 05 */	cmpwi r19, 5
/* 80D2AC00  3A 94 00 04 */	addi r20, r20, 4
/* 80D2AC04  3A B5 00 02 */	addi r21, r21, 2
/* 80D2AC08  41 80 FF 8C */	blt lbl_80D2AB94
/* 80D2AC0C  48 00 03 E4 */	b lbl_80D2AFF0
lbl_80D2AC10:
/* 80D2AC10  38 00 00 23 */	li r0, 0x23
/* 80D2AC14  98 1F 06 3C */	stb r0, 0x63c(r31)
/* 80D2AC18  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80D2AC1C  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80D2AC20  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80D2AC24  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80D2AC28  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80D2AC2C  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80D2AC30  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80D2AC34  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D2AC38  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80D2AC3C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D2AC40  3A 60 00 00 */	li r19, 0
/* 80D2AC44  3A 80 00 00 */	li r20, 0
/* 80D2AC48  3A A0 00 00 */	li r21, 0
/* 80D2AC4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2AC50  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2AC54  3A DE 00 38 */	addi r22, r30, 0x38
lbl_80D2AC58:
/* 80D2AC58  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 80D2AC5C  38 80 00 00 */	li r4, 0
/* 80D2AC60  90 81 00 08 */	stw r4, 8(r1)
/* 80D2AC64  38 00 FF FF */	li r0, -1
/* 80D2AC68  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D2AC6C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D2AC70  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D2AC74  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D2AC78  38 80 00 00 */	li r4, 0
/* 80D2AC7C  7C B6 AA 2E */	lhzx r5, r22, r21
/* 80D2AC80  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80D2AC84  38 E0 00 00 */	li r7, 0
/* 80D2AC88  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80D2AC8C  39 20 00 00 */	li r9, 0
/* 80D2AC90  39 40 00 FF */	li r10, 0xff
/* 80D2AC94  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80D2AC98  4B 32 1D F9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D2AC9C  38 14 06 00 */	addi r0, r20, 0x600
/* 80D2ACA0  7C 7F 01 2E */	stwx r3, r31, r0
/* 80D2ACA4  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80D2ACA8  28 03 00 00 */	cmplwi r3, 0
/* 80D2ACAC  41 82 00 10 */	beq lbl_80D2ACBC
/* 80D2ACB0  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80D2ACB4  60 00 00 40 */	ori r0, r0, 0x40
/* 80D2ACB8  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80D2ACBC:
/* 80D2ACBC  3A 73 00 01 */	addi r19, r19, 1
/* 80D2ACC0  2C 13 00 03 */	cmpwi r19, 3
/* 80D2ACC4  3A 94 00 04 */	addi r20, r20, 4
/* 80D2ACC8  3A B5 00 02 */	addi r21, r21, 2
/* 80D2ACCC  41 80 FF 8C */	blt lbl_80D2AC58
/* 80D2ACD0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080246@ha */
/* 80D2ACD4  38 03 02 46 */	addi r0, r3, 0x0246 /* 0x00080246@l */
/* 80D2ACD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D2ACDC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D2ACE0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D2ACE4  80 63 00 00 */	lwz r3, 0(r3)
/* 80D2ACE8  38 81 00 34 */	addi r4, r1, 0x34
/* 80D2ACEC  38 BF 05 50 */	addi r5, r31, 0x550
/* 80D2ACF0  38 C0 00 00 */	li r6, 0
/* 80D2ACF4  38 E0 00 00 */	li r7, 0
/* 80D2ACF8  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80D2ACFC  FC 40 08 90 */	fmr f2, f1
/* 80D2AD00  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 80D2AD04  FC 80 18 90 */	fmr f4, f3
/* 80D2AD08  39 00 00 00 */	li r8, 0
/* 80D2AD0C  4B 58 0C 79 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D2AD10  48 00 02 E0 */	b lbl_80D2AFF0
lbl_80D2AD14:
/* 80D2AD14  38 00 00 3C */	li r0, 0x3c
/* 80D2AD18  98 1F 06 3C */	stb r0, 0x63c(r31)
/* 80D2AD1C  3A E0 00 00 */	li r23, 0
/* 80D2AD20  3B 40 00 00 */	li r26, 0
/* 80D2AD24  3B 20 00 00 */	li r25, 0
/* 80D2AD28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D2AD2C  3B 03 D4 70 */	addi r24, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D2AD30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2AD34  3A C3 61 C0 */	addi r22, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2AD38  3A BE 00 20 */	addi r21, r30, 0x20
lbl_80D2AD3C:
/* 80D2AD3C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D2AD40  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80D2AD44  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D2AD48  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80D2AD4C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D2AD50  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80D2AD54  80 1F 04 E4 */	lwz r0, 0x4e4(r31)
/* 80D2AD58  90 01 00 38 */	stw r0, 0x38(r1)
/* 80D2AD5C  A0 1F 04 E8 */	lhz r0, 0x4e8(r31)
/* 80D2AD60  B0 01 00 3C */	sth r0, 0x3c(r1)
/* 80D2AD64  2C 17 00 04 */	cmpwi r23, 4
/* 80D2AD68  40 82 00 B8 */	bne lbl_80D2AE20
/* 80D2AD6C  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 80D2AD70  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80D2AD74  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 80D2AD78  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80D2AD7C  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 80D2AD80  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80D2AD84  80 74 05 74 */	lwz r3, 0x574(r20)
/* 80D2AD88  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80D2AD8C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80D2AD90  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80D2AD94  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D2AD98  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D2AD9C  4B 61 B7 15 */	bl PSMTXCopy
/* 80D2ADA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D2ADA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D2ADA8  38 81 00 4C */	addi r4, r1, 0x4c
/* 80D2ADAC  7C 85 23 78 */	mr r5, r4
/* 80D2ADB0  4B 61 BF BD */	bl PSMTXMultVec
/* 80D2ADB4  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D2ADB8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80D2ADBC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80D2ADC0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D2ADC4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D2ADC8  4B 61 B6 E9 */	bl PSMTXCopy
/* 80D2ADCC  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80D2ADD0  C0 5E 00 98 */	lfs f2, 0x98(r30)
/* 80D2ADD4  FC 60 08 90 */	fmr f3, f1
/* 80D2ADD8  4B 2E 1F C5 */	bl transM__14mDoMtx_stack_cFfff
/* 80D2ADDC  C0 18 00 0C */	lfs f0, 0xc(r24)
/* 80D2ADE0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80D2ADE4  C0 18 00 1C */	lfs f0, 0x1c(r24)
/* 80D2ADE8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80D2ADEC  C0 18 00 2C */	lfs f0, 0x2c(r24)
/* 80D2ADF0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80D2ADF4  38 61 00 58 */	addi r3, r1, 0x58
/* 80D2ADF8  38 81 00 4C */	addi r4, r1, 0x4c
/* 80D2ADFC  4B 54 5E 09 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80D2AE00  7C 73 07 34 */	extsh r19, r3
/* 80D2AE04  38 61 00 4C */	addi r3, r1, 0x4c
/* 80D2AE08  38 81 00 58 */	addi r4, r1, 0x58
/* 80D2AE0C  4B 54 5E 69 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80D2AE10  B0 61 00 38 */	sth r3, 0x38(r1)
/* 80D2AE14  B2 61 00 3A */	sth r19, 0x3a(r1)
/* 80D2AE18  38 00 00 00 */	li r0, 0
/* 80D2AE1C  B0 01 00 3C */	sth r0, 0x3c(r1)
lbl_80D2AE20:
/* 80D2AE20  80 76 5D 3C */	lwz r3, 0x5d3c(r22)
/* 80D2AE24  38 80 00 00 */	li r4, 0
/* 80D2AE28  90 81 00 08 */	stw r4, 8(r1)
/* 80D2AE2C  38 00 FF FF */	li r0, -1
/* 80D2AE30  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D2AE34  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D2AE38  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D2AE3C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D2AE40  38 80 00 00 */	li r4, 0
/* 80D2AE44  7C B5 CA 2E */	lhzx r5, r21, r25
/* 80D2AE48  38 C1 00 58 */	addi r6, r1, 0x58
/* 80D2AE4C  38 E0 00 00 */	li r7, 0
/* 80D2AE50  39 01 00 38 */	addi r8, r1, 0x38
/* 80D2AE54  39 20 00 00 */	li r9, 0
/* 80D2AE58  39 40 00 FF */	li r10, 0xff
/* 80D2AE5C  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80D2AE60  4B 32 1C 31 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D2AE64  3A 7A 06 00 */	addi r19, r26, 0x600
/* 80D2AE68  7C 7F 99 2E */	stwx r3, r31, r19
/* 80D2AE6C  7C BF 98 2E */	lwzx r5, r31, r19
/* 80D2AE70  28 05 00 00 */	cmplwi r5, 0
/* 80D2AE74  41 82 01 28 */	beq lbl_80D2AF9C
/* 80D2AE78  2C 17 00 04 */	cmpwi r23, 4
/* 80D2AE7C  40 82 01 08 */	bne lbl_80D2AF84
/* 80D2AE80  38 61 00 58 */	addi r3, r1, 0x58
/* 80D2AE84  38 81 00 4C */	addi r4, r1, 0x4c
/* 80D2AE88  4B 61 C5 15 */	bl PSVECSquareDistance
/* 80D2AE8C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80D2AE90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D2AE94  40 81 00 58 */	ble lbl_80D2AEEC
/* 80D2AE98  FC 00 08 34 */	frsqrte f0, f1
/* 80D2AE9C  C8 9E 00 68 */	lfd f4, 0x68(r30)
/* 80D2AEA0  FC 44 00 32 */	fmul f2, f4, f0
/* 80D2AEA4  C8 7E 00 70 */	lfd f3, 0x70(r30)
/* 80D2AEA8  FC 00 00 32 */	fmul f0, f0, f0
/* 80D2AEAC  FC 01 00 32 */	fmul f0, f1, f0
/* 80D2AEB0  FC 03 00 28 */	fsub f0, f3, f0
/* 80D2AEB4  FC 02 00 32 */	fmul f0, f2, f0
/* 80D2AEB8  FC 44 00 32 */	fmul f2, f4, f0
/* 80D2AEBC  FC 00 00 32 */	fmul f0, f0, f0
/* 80D2AEC0  FC 01 00 32 */	fmul f0, f1, f0
/* 80D2AEC4  FC 03 00 28 */	fsub f0, f3, f0
/* 80D2AEC8  FC 02 00 32 */	fmul f0, f2, f0
/* 80D2AECC  FC 44 00 32 */	fmul f2, f4, f0
/* 80D2AED0  FC 00 00 32 */	fmul f0, f0, f0
/* 80D2AED4  FC 01 00 32 */	fmul f0, f1, f0
/* 80D2AED8  FC 03 00 28 */	fsub f0, f3, f0
/* 80D2AEDC  FC 02 00 32 */	fmul f0, f2, f0
/* 80D2AEE0  FC 21 00 32 */	fmul f1, f1, f0
/* 80D2AEE4  FC 20 08 18 */	frsp f1, f1
/* 80D2AEE8  48 00 00 88 */	b lbl_80D2AF70
lbl_80D2AEEC:
/* 80D2AEEC  C8 1E 00 78 */	lfd f0, 0x78(r30)
/* 80D2AEF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D2AEF4  40 80 00 10 */	bge lbl_80D2AF04
/* 80D2AEF8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D2AEFC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D2AF00  48 00 00 70 */	b lbl_80D2AF70
lbl_80D2AF04:
/* 80D2AF04  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80D2AF08  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80D2AF0C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D2AF10  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D2AF14  7C 03 00 00 */	cmpw r3, r0
/* 80D2AF18  41 82 00 14 */	beq lbl_80D2AF2C
/* 80D2AF1C  40 80 00 40 */	bge lbl_80D2AF5C
/* 80D2AF20  2C 03 00 00 */	cmpwi r3, 0
/* 80D2AF24  41 82 00 20 */	beq lbl_80D2AF44
/* 80D2AF28  48 00 00 34 */	b lbl_80D2AF5C
lbl_80D2AF2C:
/* 80D2AF2C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D2AF30  41 82 00 0C */	beq lbl_80D2AF3C
/* 80D2AF34  38 00 00 01 */	li r0, 1
/* 80D2AF38  48 00 00 28 */	b lbl_80D2AF60
lbl_80D2AF3C:
/* 80D2AF3C  38 00 00 02 */	li r0, 2
/* 80D2AF40  48 00 00 20 */	b lbl_80D2AF60
lbl_80D2AF44:
/* 80D2AF44  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D2AF48  41 82 00 0C */	beq lbl_80D2AF54
/* 80D2AF4C  38 00 00 05 */	li r0, 5
/* 80D2AF50  48 00 00 10 */	b lbl_80D2AF60
lbl_80D2AF54:
/* 80D2AF54  38 00 00 03 */	li r0, 3
/* 80D2AF58  48 00 00 08 */	b lbl_80D2AF60
lbl_80D2AF5C:
/* 80D2AF5C  38 00 00 04 */	li r0, 4
lbl_80D2AF60:
/* 80D2AF60  2C 00 00 01 */	cmpwi r0, 1
/* 80D2AF64  40 82 00 0C */	bne lbl_80D2AF70
/* 80D2AF68  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D2AF6C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80D2AF70:
/* 80D2AF70  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80D2AF74  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D2AF78  7C 7F 98 2E */	lwzx r3, r31, r19
/* 80D2AF7C  D0 03 00 B4 */	stfs f0, 0xb4(r3)
/* 80D2AF80  48 00 00 1C */	b lbl_80D2AF9C
lbl_80D2AF84:
/* 80D2AF84  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D2AF88  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80D2AF8C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80D2AF90  38 85 00 68 */	addi r4, r5, 0x68
/* 80D2AF94  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80D2AF98  4B 55 58 49 */	bl func_802807E0
lbl_80D2AF9C:
/* 80D2AF9C  3A F7 00 01 */	addi r23, r23, 1
/* 80D2AFA0  2C 17 00 05 */	cmpwi r23, 5
/* 80D2AFA4  3B 5A 00 04 */	addi r26, r26, 4
/* 80D2AFA8  3B 39 00 02 */	addi r25, r25, 2
/* 80D2AFAC  41 80 FD 90 */	blt lbl_80D2AD3C
/* 80D2AFB0  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006009F@ha */
/* 80D2AFB4  38 03 00 9F */	addi r0, r3, 0x009F /* 0x0006009F@l */
/* 80D2AFB8  90 01 00 30 */	stw r0, 0x30(r1)
/* 80D2AFBC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D2AFC0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D2AFC4  80 63 00 00 */	lwz r3, 0(r3)
/* 80D2AFC8  38 81 00 30 */	addi r4, r1, 0x30
/* 80D2AFCC  38 BF 05 50 */	addi r5, r31, 0x550
/* 80D2AFD0  38 C0 00 00 */	li r6, 0
/* 80D2AFD4  38 E0 00 00 */	li r7, 0
/* 80D2AFD8  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80D2AFDC  FC 40 08 90 */	fmr f2, f1
/* 80D2AFE0  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 80D2AFE4  FC 80 18 90 */	fmr f4, f3
/* 80D2AFE8  39 00 00 00 */	li r8, 0
/* 80D2AFEC  4B 58 09 99 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D2AFF0:
/* 80D2AFF0  3A 60 00 00 */	li r19, 0
/* 80D2AFF4  2C 1C 00 02 */	cmpwi r28, 2
/* 80D2AFF8  41 82 01 C0 */	beq lbl_80D2B1B8
/* 80D2AFFC  40 80 00 14 */	bge lbl_80D2B010
/* 80D2B000  2C 1C 00 00 */	cmpwi r28, 0
/* 80D2B004  41 82 00 14 */	beq lbl_80D2B018
/* 80D2B008  40 80 00 30 */	bge lbl_80D2B038
/* 80D2B00C  48 00 03 8C */	b lbl_80D2B398
lbl_80D2B010:
/* 80D2B010  2C 1C 00 04 */	cmpwi r28, 4
/* 80D2B014  40 80 03 84 */	bge lbl_80D2B398
lbl_80D2B018:
/* 80D2B018  38 7F 06 3C */	addi r3, r31, 0x63c
/* 80D2B01C  48 00 07 B9 */	bl func_80D2B7D4
/* 80D2B020  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D2B024  40 82 03 80 */	bne lbl_80D2B3A4
/* 80D2B028  7F A3 EB 78 */	mr r3, r29
/* 80D2B02C  80 9F 06 30 */	lwz r4, 0x630(r31)
/* 80D2B030  4B 31 D1 4D */	bl cutEnd__16dEvent_manager_cFi
/* 80D2B034  48 00 03 70 */	b lbl_80D2B3A4
lbl_80D2B038:
/* 80D2B038  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80D2B03C  4B 2E 23 ED */	bl play__14mDoExt_baseAnmFv
/* 80D2B040  7C 73 1B 78 */	mr r19, r3
/* 80D2B044  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80D2B048  4B 2E 23 E1 */	bl play__14mDoExt_baseAnmFv
/* 80D2B04C  7E 73 18 38 */	and r19, r19, r3
/* 80D2B050  3A A0 00 00 */	li r21, 0
/* 80D2B054  3A 80 00 00 */	li r20, 0
lbl_80D2B058:
/* 80D2B058  20 15 00 04 */	subfic r0, r21, 4
/* 80D2B05C  7C 00 00 34 */	cntlzw r0, r0
/* 80D2B060  54 04 D9 7E */	srwi r4, r0, 5
/* 80D2B064  38 14 06 00 */	addi r0, r20, 0x600
/* 80D2B068  7C BF 00 2E */	lwzx r5, r31, r0
/* 80D2B06C  28 05 00 00 */	cmplwi r5, 0
/* 80D2B070  41 82 00 24 */	beq lbl_80D2B094
/* 80D2B074  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D2B078  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80D2B07C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80D2B080  1C 04 00 30 */	mulli r0, r4, 0x30
/* 80D2B084  7C 63 02 14 */	add r3, r3, r0
/* 80D2B088  38 85 00 68 */	addi r4, r5, 0x68
/* 80D2B08C  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80D2B090  4B 55 57 51 */	bl func_802807E0
lbl_80D2B094:
/* 80D2B094  3A B5 00 01 */	addi r21, r21, 1
/* 80D2B098  2C 15 00 05 */	cmpwi r21, 5
/* 80D2B09C  3A 94 00 04 */	addi r20, r20, 4
/* 80D2B0A0  41 80 FF B8 */	blt lbl_80D2B058
/* 80D2B0A4  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80D2B0A8  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 80D2B0AC  4B 5F D3 81 */	bl checkPass__12J3DFrameCtrlFf
/* 80D2B0B0  2C 03 00 00 */	cmpwi r3, 0
/* 80D2B0B4  41 82 00 48 */	beq lbl_80D2B0FC
/* 80D2B0B8  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080244@ha */
/* 80D2B0BC  38 03 02 44 */	addi r0, r3, 0x0244 /* 0x00080244@l */
/* 80D2B0C0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80D2B0C4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D2B0C8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D2B0CC  80 63 00 00 */	lwz r3, 0(r3)
/* 80D2B0D0  38 81 00 2C */	addi r4, r1, 0x2c
/* 80D2B0D4  38 BF 05 50 */	addi r5, r31, 0x550
/* 80D2B0D8  38 C0 00 00 */	li r6, 0
/* 80D2B0DC  38 E0 00 00 */	li r7, 0
/* 80D2B0E0  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80D2B0E4  FC 40 08 90 */	fmr f2, f1
/* 80D2B0E8  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 80D2B0EC  FC 80 18 90 */	fmr f4, f3
/* 80D2B0F0  39 00 00 00 */	li r8, 0
/* 80D2B0F4  4B 58 08 91 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D2B0F8  48 00 00 58 */	b lbl_80D2B150
lbl_80D2B0FC:
/* 80D2B0FC  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80D2B100  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80D2B104  4B 5F D3 29 */	bl checkPass__12J3DFrameCtrlFf
/* 80D2B108  2C 03 00 00 */	cmpwi r3, 0
/* 80D2B10C  41 82 00 44 */	beq lbl_80D2B150
/* 80D2B110  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080245@ha */
/* 80D2B114  38 03 02 45 */	addi r0, r3, 0x0245 /* 0x00080245@l */
/* 80D2B118  90 01 00 28 */	stw r0, 0x28(r1)
/* 80D2B11C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D2B120  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D2B124  80 63 00 00 */	lwz r3, 0(r3)
/* 80D2B128  38 81 00 28 */	addi r4, r1, 0x28
/* 80D2B12C  38 BF 05 50 */	addi r5, r31, 0x550
/* 80D2B130  38 C0 00 00 */	li r6, 0
/* 80D2B134  38 E0 00 00 */	li r7, 0
/* 80D2B138  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80D2B13C  FC 40 08 90 */	fmr f2, f1
/* 80D2B140  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 80D2B144  FC 80 18 90 */	fmr f4, f3
/* 80D2B148  39 00 00 00 */	li r8, 0
/* 80D2B14C  4B 58 08 39 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D2B150:
/* 80D2B150  2C 13 00 00 */	cmpwi r19, 0
/* 80D2B154  41 82 02 50 */	beq lbl_80D2B3A4
/* 80D2B158  38 60 00 00 */	li r3, 0
/* 80D2B15C  38 C0 00 01 */	li r6, 1
/* 80D2B160  38 80 00 00 */	li r4, 0
/* 80D2B164  38 00 00 05 */	li r0, 5
/* 80D2B168  7C 09 03 A6 */	mtctr r0
lbl_80D2B16C:
/* 80D2B16C  38 E3 06 00 */	addi r7, r3, 0x600
/* 80D2B170  7C BF 38 2E */	lwzx r5, r31, r7
/* 80D2B174  28 05 00 00 */	cmplwi r5, 0
/* 80D2B178  41 82 00 28 */	beq lbl_80D2B1A0
/* 80D2B17C  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80D2B180  60 00 00 01 */	ori r0, r0, 1
/* 80D2B184  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80D2B188  90 C5 00 24 */	stw r6, 0x24(r5)
/* 80D2B18C  7C BF 38 2E */	lwzx r5, r31, r7
/* 80D2B190  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80D2B194  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80D2B198  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80D2B19C  7C 9F 39 2E */	stwx r4, r31, r7
lbl_80D2B1A0:
/* 80D2B1A0  38 63 00 04 */	addi r3, r3, 4
/* 80D2B1A4  42 00 FF C8 */	bdnz lbl_80D2B16C
/* 80D2B1A8  7F A3 EB 78 */	mr r3, r29
/* 80D2B1AC  80 9F 06 30 */	lwz r4, 0x630(r31)
/* 80D2B1B0  4B 31 CF CD */	bl cutEnd__16dEvent_manager_cFi
/* 80D2B1B4  48 00 01 F0 */	b lbl_80D2B3A4
lbl_80D2B1B8:
/* 80D2B1B8  38 7F 06 3C */	addi r3, r31, 0x63c
/* 80D2B1BC  48 00 06 19 */	bl func_80D2B7D4
/* 80D2B1C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D2B1C4  40 82 00 1C */	bne lbl_80D2B1E0
/* 80D2B1C8  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80D2B1CC  4B 2E 22 5D */	bl play__14mDoExt_baseAnmFv
/* 80D2B1D0  7C 73 1B 78 */	mr r19, r3
/* 80D2B1D4  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80D2B1D8  4B 2E 22 51 */	bl play__14mDoExt_baseAnmFv
/* 80D2B1DC  7E 73 18 38 */	and r19, r19, r3
lbl_80D2B1E0:
/* 80D2B1E0  3C 60 80 D3 */	lis r3, l_arcName@ha /* 0x80D2B934@ha */
/* 80D2B1E4  38 63 B9 34 */	addi r3, r3, l_arcName@l /* 0x80D2B934@l */
/* 80D2B1E8  80 63 00 00 */	lwz r3, 0(r3)
/* 80D2B1EC  88 1F 04 99 */	lbz r0, 0x499(r31)
/* 80D2B1F0  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80D2B1F4  38 9E 00 10 */	addi r4, r30, 0x10
/* 80D2B1F8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D2B1FC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2B200  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2B204  3C A5 00 02 */	addis r5, r5, 2
/* 80D2B208  38 C0 00 80 */	li r6, 0x80
/* 80D2B20C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D2B210  4B 31 10 DD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D2B214  38 80 00 00 */	li r4, 0
/* 80D2B218  38 A1 00 64 */	addi r5, r1, 0x64
/* 80D2B21C  81 83 00 00 */	lwz r12, 0(r3)
/* 80D2B220  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80D2B224  7D 89 03 A6 */	mtctr r12
/* 80D2B228  4E 80 04 21 */	bctrl 
/* 80D2B22C  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80D2B230  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80D2B234  EC 61 00 2A */	fadds f3, f1, f0
/* 80D2B238  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80D2B23C  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80D2B240  EC 41 00 2A */	fadds f2, f1, f0
/* 80D2B244  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D2B248  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80D2B24C  EC 01 00 2A */	fadds f0, f1, f0
/* 80D2B250  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80D2B254  D0 5F 05 54 */	stfs f2, 0x554(r31)
/* 80D2B258  D0 7F 05 58 */	stfs f3, 0x558(r31)
/* 80D2B25C  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80D2B260  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80D2B264  4B 5F D1 C9 */	bl checkPass__12J3DFrameCtrlFf
/* 80D2B268  2C 03 00 00 */	cmpwi r3, 0
/* 80D2B26C  41 82 00 48 */	beq lbl_80D2B2B4
/* 80D2B270  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080247@ha */
/* 80D2B274  38 03 02 47 */	addi r0, r3, 0x0247 /* 0x00080247@l */
/* 80D2B278  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D2B27C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D2B280  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D2B284  80 63 00 00 */	lwz r3, 0(r3)
/* 80D2B288  38 81 00 24 */	addi r4, r1, 0x24
/* 80D2B28C  38 BF 05 50 */	addi r5, r31, 0x550
/* 80D2B290  38 C0 00 00 */	li r6, 0
/* 80D2B294  38 E0 00 00 */	li r7, 0
/* 80D2B298  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80D2B29C  FC 40 08 90 */	fmr f2, f1
/* 80D2B2A0  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 80D2B2A4  FC 80 18 90 */	fmr f4, f3
/* 80D2B2A8  39 00 00 00 */	li r8, 0
/* 80D2B2AC  4B 58 06 D9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D2B2B0  48 00 00 40 */	b lbl_80D2B2F0
lbl_80D2B2B4:
/* 80D2B2B4  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80D2B2B8  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80D2B2BC  4B 5F D1 71 */	bl checkPass__12J3DFrameCtrlFf
/* 80D2B2C0  2C 03 00 00 */	cmpwi r3, 0
/* 80D2B2C4  41 82 00 2C */	beq lbl_80D2B2F0
/* 80D2B2C8  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80D2B2CC  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80D2B2D0  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80D2B2D4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80D2B2D8  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80D2B2DC  38 7B 4C 9C */	addi r3, r27, 0x4c9c
/* 80D2B2E0  38 80 00 08 */	li r4, 8
/* 80D2B2E4  38 A0 00 0F */	li r5, 0xf
/* 80D2B2E8  38 C1 00 40 */	addi r6, r1, 0x40
/* 80D2B2EC  4B 34 47 39 */	bl StartShock__12dVibration_cFii4cXyz
lbl_80D2B2F0:
/* 80D2B2F0  3A A0 00 00 */	li r21, 0
/* 80D2B2F4  3A 80 00 00 */	li r20, 0
lbl_80D2B2F8:
/* 80D2B2F8  38 14 06 00 */	addi r0, r20, 0x600
/* 80D2B2FC  7C BF 00 2E */	lwzx r5, r31, r0
/* 80D2B300  28 05 00 00 */	cmplwi r5, 0
/* 80D2B304  41 82 00 1C */	beq lbl_80D2B320
/* 80D2B308  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D2B30C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80D2B310  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80D2B314  38 85 00 68 */	addi r4, r5, 0x68
/* 80D2B318  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80D2B31C  4B 55 54 C5 */	bl func_802807E0
lbl_80D2B320:
/* 80D2B320  3A B5 00 01 */	addi r21, r21, 1
/* 80D2B324  2C 15 00 03 */	cmpwi r21, 3
/* 80D2B328  3A 94 00 04 */	addi r20, r20, 4
/* 80D2B32C  41 80 FF CC */	blt lbl_80D2B2F8
/* 80D2B330  2C 13 00 00 */	cmpwi r19, 0
/* 80D2B334  41 82 00 70 */	beq lbl_80D2B3A4
/* 80D2B338  38 60 00 00 */	li r3, 0
/* 80D2B33C  38 C0 00 01 */	li r6, 1
/* 80D2B340  38 80 00 00 */	li r4, 0
/* 80D2B344  38 00 00 03 */	li r0, 3
/* 80D2B348  7C 09 03 A6 */	mtctr r0
lbl_80D2B34C:
/* 80D2B34C  38 E3 06 00 */	addi r7, r3, 0x600
/* 80D2B350  7C BF 38 2E */	lwzx r5, r31, r7
/* 80D2B354  28 05 00 00 */	cmplwi r5, 0
/* 80D2B358  41 82 00 28 */	beq lbl_80D2B380
/* 80D2B35C  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80D2B360  60 00 00 01 */	ori r0, r0, 1
/* 80D2B364  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80D2B368  90 C5 00 24 */	stw r6, 0x24(r5)
/* 80D2B36C  7C BF 38 2E */	lwzx r5, r31, r7
/* 80D2B370  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80D2B374  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80D2B378  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80D2B37C  7C 9F 39 2E */	stwx r4, r31, r7
lbl_80D2B380:
/* 80D2B380  38 63 00 04 */	addi r3, r3, 4
/* 80D2B384  42 00 FF C8 */	bdnz lbl_80D2B34C
/* 80D2B388  7F A3 EB 78 */	mr r3, r29
/* 80D2B38C  80 9F 06 30 */	lwz r4, 0x630(r31)
/* 80D2B390  4B 31 CD ED */	bl cutEnd__16dEvent_manager_cFi
/* 80D2B394  48 00 00 10 */	b lbl_80D2B3A4
lbl_80D2B398:
/* 80D2B398  7F A3 EB 78 */	mr r3, r29
/* 80D2B39C  80 9F 06 30 */	lwz r4, 0x630(r31)
/* 80D2B3A0  4B 31 CD DD */	bl cutEnd__16dEvent_manager_cFi
lbl_80D2B3A4:
/* 80D2B3A4  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80D2B3A8  4B 63 6E 59 */	bl _restgpr_19
/* 80D2B3AC  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80D2B3B0  7C 08 03 A6 */	mtlr r0
/* 80D2B3B4  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80D2B3B8  4E 80 00 20 */	blr 
