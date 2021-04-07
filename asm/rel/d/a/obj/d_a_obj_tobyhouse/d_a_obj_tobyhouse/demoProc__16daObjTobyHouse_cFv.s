lbl_80D16864:
/* 80D16864  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80D16868  7C 08 02 A6 */	mflr r0
/* 80D1686C  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80D16870  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80D16874  4B 64 B9 51 */	bl _savegpr_23
/* 80D16878  7C 7F 1B 78 */	mr r31, r3
/* 80D1687C  3C 60 80 D1 */	lis r3, lit_1109@ha /* 0x80D179C0@ha */
/* 80D16880  3B 83 79 C0 */	addi r28, r3, lit_1109@l /* 0x80D179C0@l */
/* 80D16884  3C 60 80 D1 */	lis r3, l_bmd@ha /* 0x80D1774C@ha */
/* 80D16888  3B C3 77 4C */	addi r30, r3, l_bmd@l /* 0x80D1774C@l */
/* 80D1688C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D16890  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D16894  83 43 5D AC */	lwz r26, 0x5dac(r3)
/* 80D16898  88 1C 00 4C */	lbz r0, 0x4c(r28)
/* 80D1689C  7C 00 07 75 */	extsb. r0, r0
/* 80D168A0  40 82 00 30 */	bne lbl_80D168D0
/* 80D168A4  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80D168A8  D0 1C 00 50 */	stfs f0, 0x50(r28)
/* 80D168AC  38 7C 00 50 */	addi r3, r28, 0x50
/* 80D168B0  D0 03 00 04 */	stfs f0, 4(r3)
/* 80D168B4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80D168B8  3C 80 80 D1 */	lis r4, __dt__4cXyzFv@ha /* 0x80D17700@ha */
/* 80D168BC  38 84 77 00 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80D17700@l */
/* 80D168C0  38 BC 00 40 */	addi r5, r28, 0x40
/* 80D168C4  4B FF F1 75 */	bl __register_global_object
/* 80D168C8  38 00 00 01 */	li r0, 1
/* 80D168CC  98 1C 00 4C */	stb r0, 0x4c(r28)
lbl_80D168D0:
/* 80D168D0  38 00 02 78 */	li r0, 0x278
/* 80D168D4  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80D168D8  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 80D168DC  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 80D168E0  38 81 00 20 */	addi r4, r1, 0x20
/* 80D168E4  4B 30 2F 15 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80D168E8  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80D168EC  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80D168F0  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 80D168F4  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80D168F8  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80D168FC  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80D16900  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D16904  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D16908  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80D1690C  7C 00 07 74 */	extsb r0, r0
/* 80D16910  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80D16914  7C 63 02 14 */	add r3, r3, r0
/* 80D16918  83 23 5D 74 */	lwz r25, 0x5d74(r3)
/* 80D1691C  3B 19 00 D8 */	addi r24, r25, 0xd8
/* 80D16920  7F 23 CB 78 */	mr r3, r25
/* 80D16924  4B 46 AC A9 */	bl dCam_getAngleY__FP12camera_class
/* 80D16928  7C 77 1B 78 */	mr r23, r3
/* 80D1692C  7F 23 CB 78 */	mr r3, r25
/* 80D16930  4B 46 AC C1 */	bl dCam_getAngleX__FP12camera_class
/* 80D16934  7C 64 1B 78 */	mr r4, r3
/* 80D16938  38 61 00 34 */	addi r3, r1, 0x34
/* 80D1693C  7E E5 BB 78 */	mr r5, r23
/* 80D16940  38 C0 00 00 */	li r6, 0
/* 80D16944  4B 55 0A B1 */	bl __ct__5csXyzFsss
/* 80D16948  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1694C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D16950  3B 7D 4F F8 */	addi r27, r29, 0x4ff8
/* 80D16954  7F 63 DB 78 */	mr r3, r27
/* 80D16958  80 9F 05 CC */	lwz r4, 0x5cc(r31)
/* 80D1695C  3C A0 80 D1 */	lis r5, action_table@ha /* 0x80D178EC@ha */
/* 80D16960  38 A5 78 EC */	addi r5, r5, action_table@l /* 0x80D178EC@l */
/* 80D16964  38 C0 00 07 */	li r6, 7
/* 80D16968  38 E0 00 00 */	li r7, 0
/* 80D1696C  39 00 00 00 */	li r8, 0
/* 80D16970  4B 33 14 A1 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80D16974  7C 79 1B 78 */	mr r25, r3
/* 80D16978  7F 63 DB 78 */	mr r3, r27
/* 80D1697C  80 9F 05 CC */	lwz r4, 0x5cc(r31)
/* 80D16980  4B 33 13 CD */	bl getIsAddvance__16dEvent_manager_cFi
/* 80D16984  2C 03 00 00 */	cmpwi r3, 0
/* 80D16988  41 82 03 AC */	beq lbl_80D16D34
/* 80D1698C  38 80 00 00 */	li r4, 0
/* 80D16990  B0 9F 05 EC */	sth r4, 0x5ec(r31)
/* 80D16994  28 19 00 06 */	cmplwi r25, 6
/* 80D16998  41 81 03 9C */	bgt lbl_80D16D34
/* 80D1699C  3C 60 80 D1 */	lis r3, lit_4774@ha /* 0x80D17914@ha */
/* 80D169A0  38 63 79 14 */	addi r3, r3, lit_4774@l /* 0x80D17914@l */
/* 80D169A4  57 20 10 3A */	slwi r0, r25, 2
/* 80D169A8  7C 03 00 2E */	lwzx r0, r3, r0
/* 80D169AC  7C 09 03 A6 */	mtctr r0
/* 80D169B0  4E 80 04 20 */	bctr 
lbl_80D169B4:
/* 80D169B4  7F 63 DB 78 */	mr r3, r27
/* 80D169B8  80 9F 05 CC */	lwz r4, 0x5cc(r31)
/* 80D169BC  3C A0 80 D1 */	lis r5, d_a_obj_tobyhouse__stringBase0@ha /* 0x80D177C0@ha */
/* 80D169C0  38 A5 77 C0 */	addi r5, r5, d_a_obj_tobyhouse__stringBase0@l /* 0x80D177C0@l */
/* 80D169C4  38 A5 00 92 */	addi r5, r5, 0x92
/* 80D169C8  38 C0 00 03 */	li r6, 3
/* 80D169CC  4B 33 17 21 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80D169D0  28 03 00 00 */	cmplwi r3, 0
/* 80D169D4  40 82 00 10 */	bne lbl_80D169E4
/* 80D169D8  38 00 00 01 */	li r0, 1
/* 80D169DC  98 1F 05 DE */	stb r0, 0x5de(r31)
/* 80D169E0  48 00 03 54 */	b lbl_80D16D34
lbl_80D169E4:
/* 80D169E4  80 03 00 00 */	lwz r0, 0(r3)
/* 80D169E8  98 1F 05 DE */	stb r0, 0x5de(r31)
/* 80D169EC  48 00 03 48 */	b lbl_80D16D34
lbl_80D169F0:
/* 80D169F0  98 9F 05 E3 */	stb r4, 0x5e3(r31)
/* 80D169F4  80 1F 05 B0 */	lwz r0, 0x5b0(r31)
/* 80D169F8  90 1F 05 BC */	stw r0, 0x5bc(r31)
/* 80D169FC  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80D16A00  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80D16A04  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D16A08  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80D16A0C  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80D16A10  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80D16A14  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D16A18  7C 03 07 74 */	extsb r3, r0
/* 80D16A1C  4B 31 66 51 */	bl dComIfGp_getReverb__Fi
/* 80D16A20  7C 67 1B 78 */	mr r7, r3
/* 80D16A24  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008023B@ha */
/* 80D16A28  38 03 02 3B */	addi r0, r3, 0x023B /* 0x0008023B@l */
/* 80D16A2C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80D16A30  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D16A34  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D16A38  80 63 00 00 */	lwz r3, 0(r3)
/* 80D16A3C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80D16A40  38 BF 05 38 */	addi r5, r31, 0x538
/* 80D16A44  38 C0 00 00 */	li r6, 0
/* 80D16A48  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80D16A4C  FC 40 08 90 */	fmr f2, f1
/* 80D16A50  C0 7E 00 64 */	lfs f3, 0x64(r30)
/* 80D16A54  FC 80 18 90 */	fmr f4, f3
/* 80D16A58  39 00 00 00 */	li r8, 0
/* 80D16A5C  4B 59 4F 29 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D16A60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D16A64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D16A68  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D16A6C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D16A70  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D16A74  A0 84 01 42 */	lhz r4, 0x142(r4)
/* 80D16A78  4B 31 DF 15 */	bl onEventBit__11dSv_event_cFUs
/* 80D16A7C  48 00 02 B8 */	b lbl_80D16D34
lbl_80D16A80:
/* 80D16A80  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 80D16A84  90 1F 05 BC */	stw r0, 0x5bc(r31)
/* 80D16A88  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80D16A8C  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80D16A90  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D16A94  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80D16A98  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80D16A9C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80D16AA0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D16AA4  7C 03 07 74 */	extsb r3, r0
/* 80D16AA8  4B 31 65 C5 */	bl dComIfGp_getReverb__Fi
/* 80D16AAC  7C 67 1B 78 */	mr r7, r3
/* 80D16AB0  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008023C@ha */
/* 80D16AB4  38 03 02 3C */	addi r0, r3, 0x023C /* 0x0008023C@l */
/* 80D16AB8  90 01 00 28 */	stw r0, 0x28(r1)
/* 80D16ABC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D16AC0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D16AC4  80 63 00 00 */	lwz r3, 0(r3)
/* 80D16AC8  38 81 00 28 */	addi r4, r1, 0x28
/* 80D16ACC  38 BF 05 38 */	addi r5, r31, 0x538
/* 80D16AD0  38 C0 00 00 */	li r6, 0
/* 80D16AD4  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80D16AD8  FC 40 08 90 */	fmr f2, f1
/* 80D16ADC  C0 7E 00 64 */	lfs f3, 0x64(r30)
/* 80D16AE0  FC 80 18 90 */	fmr f4, f3
/* 80D16AE4  39 00 00 00 */	li r8, 0
/* 80D16AE8  4B 59 4E 9D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D16AEC  48 00 02 48 */	b lbl_80D16D34
lbl_80D16AF0:
/* 80D16AF0  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 80D16AF4  90 1F 05 BC */	stw r0, 0x5bc(r31)
/* 80D16AF8  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80D16AFC  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80D16B00  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D16B04  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80D16B08  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80D16B0C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80D16B10  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D16B14  7C 03 07 74 */	extsb r3, r0
/* 80D16B18  4B 31 65 55 */	bl dComIfGp_getReverb__Fi
/* 80D16B1C  7C 67 1B 78 */	mr r7, r3
/* 80D16B20  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008023D@ha */
/* 80D16B24  38 03 02 3D */	addi r0, r3, 0x023D /* 0x0008023D@l */
/* 80D16B28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D16B2C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D16B30  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D16B34  80 63 00 00 */	lwz r3, 0(r3)
/* 80D16B38  38 81 00 24 */	addi r4, r1, 0x24
/* 80D16B3C  38 BF 05 38 */	addi r5, r31, 0x538
/* 80D16B40  38 C0 00 00 */	li r6, 0
/* 80D16B44  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80D16B48  FC 40 08 90 */	fmr f2, f1
/* 80D16B4C  C0 7E 00 64 */	lfs f3, 0x64(r30)
/* 80D16B50  FC 80 18 90 */	fmr f4, f3
/* 80D16B54  39 00 00 00 */	li r8, 0
/* 80D16B58  4B 59 4E 2D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D16B5C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D16B60  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80D16B64  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80D16B68  A0 1F 05 DA */	lhz r0, 0x5da(r31)
/* 80D16B6C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80D16B70  7C 63 02 14 */	add r3, r3, r0
/* 80D16B74  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D16B78  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D16B7C  4B 62 F9 35 */	bl PSMTXCopy
/* 80D16B80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D16B84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D16B88  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80D16B8C  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80D16B90  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80D16B94  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80D16B98  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80D16B9C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80D16BA0  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D16BA4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80D16BA8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80D16BAC  A0 1F 05 DA */	lhz r0, 0x5da(r31)
/* 80D16BB0  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80D16BB4  7C 63 02 14 */	add r3, r3, r0
/* 80D16BB8  38 81 00 3C */	addi r4, r1, 0x3c
/* 80D16BBC  4B 2F 60 45 */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 80D16BC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D16BC4  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D16BC8  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 80D16BCC  38 80 00 00 */	li r4, 0
/* 80D16BD0  90 81 00 08 */	stw r4, 8(r1)
/* 80D16BD4  38 00 FF FF */	li r0, -1
/* 80D16BD8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D16BDC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D16BE0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D16BE4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D16BE8  38 80 00 00 */	li r4, 0
/* 80D16BEC  3C A0 00 01 */	lis r5, 0x0001 /* 0x000086F7@ha */
/* 80D16BF0  38 A5 86 F7 */	addi r5, r5, 0x86F7 /* 0x000086F7@l */
/* 80D16BF4  38 C1 00 B0 */	addi r6, r1, 0xb0
/* 80D16BF8  38 E0 00 00 */	li r7, 0
/* 80D16BFC  39 01 00 3C */	addi r8, r1, 0x3c
/* 80D16C00  39 3C 00 50 */	addi r9, r28, 0x50
/* 80D16C04  39 40 00 FF */	li r10, 0xff
/* 80D16C08  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80D16C0C  4B 33 5E 85 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D16C10  90 7F 05 F0 */	stw r3, 0x5f0(r31)
/* 80D16C14  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 80D16C18  38 80 00 00 */	li r4, 0
/* 80D16C1C  90 81 00 08 */	stw r4, 8(r1)
/* 80D16C20  38 00 FF FF */	li r0, -1
/* 80D16C24  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D16C28  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D16C2C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D16C30  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D16C34  38 80 00 00 */	li r4, 0
/* 80D16C38  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008735@ha */
/* 80D16C3C  38 A5 87 35 */	addi r5, r5, 0x8735 /* 0x00008735@l */
/* 80D16C40  38 C1 00 B0 */	addi r6, r1, 0xb0
/* 80D16C44  38 E0 00 00 */	li r7, 0
/* 80D16C48  39 01 00 3C */	addi r8, r1, 0x3c
/* 80D16C4C  39 3C 00 50 */	addi r9, r28, 0x50
/* 80D16C50  39 40 00 FF */	li r10, 0xff
/* 80D16C54  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80D16C58  4B 33 5E 39 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D16C5C  90 7F 05 F8 */	stw r3, 0x5f8(r31)
/* 80D16C60  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80D16C64  B0 01 00 3C */	sth r0, 0x3c(r1)
/* 80D16C68  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80D16C6C  B0 61 00 3E */	sth r3, 0x3e(r1)
/* 80D16C70  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80D16C74  B0 01 00 40 */	sth r0, 0x40(r1)
/* 80D16C78  A8 1F 05 E0 */	lha r0, 0x5e0(r31)
/* 80D16C7C  7C 03 02 14 */	add r0, r3, r0
/* 80D16C80  B0 01 00 3E */	sth r0, 0x3e(r1)
/* 80D16C84  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 80D16C88  38 80 00 00 */	li r4, 0
/* 80D16C8C  90 81 00 08 */	stw r4, 8(r1)
/* 80D16C90  38 00 FF FF */	li r0, -1
/* 80D16C94  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D16C98  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D16C9C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D16CA0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D16CA4  38 80 00 00 */	li r4, 0
/* 80D16CA8  3C A0 00 01 */	lis r5, 0x0001 /* 0x000086F8@ha */
/* 80D16CAC  38 A5 86 F8 */	addi r5, r5, 0x86F8 /* 0x000086F8@l */
/* 80D16CB0  38 C1 00 B0 */	addi r6, r1, 0xb0
/* 80D16CB4  38 E0 00 00 */	li r7, 0
/* 80D16CB8  39 01 00 3C */	addi r8, r1, 0x3c
/* 80D16CBC  39 3C 00 50 */	addi r9, r28, 0x50
/* 80D16CC0  39 40 00 FF */	li r10, 0xff
/* 80D16CC4  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80D16CC8  4B 33 5D C9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D16CCC  90 7F 05 F4 */	stw r3, 0x5f4(r31)
/* 80D16CD0  80 7F 05 F0 */	lwz r3, 0x5f0(r31)
/* 80D16CD4  28 03 00 00 */	cmplwi r3, 0
/* 80D16CD8  41 82 00 10 */	beq lbl_80D16CE8
/* 80D16CDC  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80D16CE0  60 00 00 40 */	ori r0, r0, 0x40
/* 80D16CE4  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80D16CE8:
/* 80D16CE8  80 7F 05 F4 */	lwz r3, 0x5f4(r31)
/* 80D16CEC  28 03 00 00 */	cmplwi r3, 0
/* 80D16CF0  41 82 00 10 */	beq lbl_80D16D00
/* 80D16CF4  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80D16CF8  60 00 00 40 */	ori r0, r0, 0x40
/* 80D16CFC  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80D16D00:
/* 80D16D00  80 7F 05 F8 */	lwz r3, 0x5f8(r31)
/* 80D16D04  28 03 00 00 */	cmplwi r3, 0
/* 80D16D08  41 82 00 2C */	beq lbl_80D16D34
/* 80D16D0C  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80D16D10  60 00 00 40 */	ori r0, r0, 0x40
/* 80D16D14  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80D16D18  48 00 00 1C */	b lbl_80D16D34
lbl_80D16D1C:
/* 80D16D1C  80 1A 05 70 */	lwz r0, 0x570(r26)
/* 80D16D20  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80D16D24  90 1A 05 70 */	stw r0, 0x570(r26)
/* 80D16D28  80 1A 05 78 */	lwz r0, 0x578(r26)
/* 80D16D2C  54 00 05 A8 */	rlwinm r0, r0, 0, 0x16, 0x14
/* 80D16D30  90 1A 05 78 */	stw r0, 0x578(r26)
lbl_80D16D34:
/* 80D16D34  A0 7F 05 EC */	lhz r3, 0x5ec(r31)
/* 80D16D38  38 03 00 01 */	addi r0, r3, 1
/* 80D16D3C  B0 1F 05 EC */	sth r0, 0x5ec(r31)
/* 80D16D40  2C 19 00 03 */	cmpwi r25, 3
/* 80D16D44  41 82 02 7C */	beq lbl_80D16FC0
/* 80D16D48  40 80 00 1C */	bge lbl_80D16D64
/* 80D16D4C  2C 19 00 01 */	cmpwi r25, 1
/* 80D16D50  41 82 00 44 */	beq lbl_80D16D94
/* 80D16D54  40 80 00 D8 */	bge lbl_80D16E2C
/* 80D16D58  2C 19 00 00 */	cmpwi r25, 0
/* 80D16D5C  40 80 00 18 */	bge lbl_80D16D74
/* 80D16D60  48 00 03 70 */	b lbl_80D170D0
lbl_80D16D64:
/* 80D16D64  2C 19 00 05 */	cmpwi r25, 5
/* 80D16D68  41 82 03 4C */	beq lbl_80D170B4
/* 80D16D6C  40 80 03 64 */	bge lbl_80D170D0
/* 80D16D70  48 00 03 50 */	b lbl_80D170C0
lbl_80D16D74:
/* 80D16D74  38 7F 05 DE */	addi r3, r31, 0x5de
/* 80D16D78  48 00 09 6D */	bl func_80D176E4
/* 80D16D7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D16D80  40 82 03 5C */	bne lbl_80D170DC
/* 80D16D84  7F 63 DB 78 */	mr r3, r27
/* 80D16D88  80 9F 05 CC */	lwz r4, 0x5cc(r31)
/* 80D16D8C  4B 33 13 F1 */	bl cutEnd__16dEvent_manager_cFi
/* 80D16D90  48 00 03 4C */	b lbl_80D170DC
lbl_80D16D94:
/* 80D16D94  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80D16D98  4B 2F 66 91 */	bl play__14mDoExt_baseAnmFv
/* 80D16D9C  A0 1F 05 EC */	lhz r0, 0x5ec(r31)
/* 80D16DA0  28 00 00 17 */	cmplwi r0, 0x17
/* 80D16DA4  40 82 00 44 */	bne lbl_80D16DE8
/* 80D16DA8  80 1A 05 70 */	lwz r0, 0x570(r26)
/* 80D16DAC  64 00 08 00 */	oris r0, r0, 0x800
/* 80D16DB0  90 1A 05 70 */	stw r0, 0x570(r26)
/* 80D16DB4  80 1A 05 78 */	lwz r0, 0x578(r26)
/* 80D16DB8  60 00 04 00 */	ori r0, r0, 0x400
/* 80D16DBC  90 1A 05 78 */	stw r0, 0x578(r26)
/* 80D16DC0  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80D16DC4  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 80D16DC8  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80D16DCC  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80D16DD0  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 80D16DD4  38 7D 5B D4 */	addi r3, r29, 0x5bd4
/* 80D16DD8  38 80 00 05 */	li r4, 5
/* 80D16DDC  38 A0 00 01 */	li r5, 1
/* 80D16DE0  38 C1 00 98 */	addi r6, r1, 0x98
/* 80D16DE4  4B 35 8C 41 */	bl StartShock__12dVibration_cFii4cXyz
lbl_80D16DE8:
/* 80D16DE8  A0 1F 05 EC */	lhz r0, 0x5ec(r31)
/* 80D16DEC  28 00 00 50 */	cmplwi r0, 0x50
/* 80D16DF0  40 82 02 EC */	bne lbl_80D170DC
/* 80D16DF4  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80D16DF8  A8 03 00 08 */	lha r0, 8(r3)
/* 80D16DFC  C8 3E 00 68 */	lfd f1, 0x68(r30)
/* 80D16E00  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D16E04  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80D16E08  3C 00 43 30 */	lis r0, 0x4330
/* 80D16E0C  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 80D16E10  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 80D16E14  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D16E18  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80D16E1C  7F 63 DB 78 */	mr r3, r27
/* 80D16E20  80 9F 05 CC */	lwz r4, 0x5cc(r31)
/* 80D16E24  4B 33 13 59 */	bl cutEnd__16dEvent_manager_cFi
/* 80D16E28  48 00 02 B4 */	b lbl_80D170DC
lbl_80D16E2C:
/* 80D16E2C  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80D16E30  4B 2F 65 F9 */	bl play__14mDoExt_baseAnmFv
/* 80D16E34  2C 03 00 00 */	cmpwi r3, 0
/* 80D16E38  41 82 00 10 */	beq lbl_80D16E48
/* 80D16E3C  7F 63 DB 78 */	mr r3, r27
/* 80D16E40  80 9F 05 CC */	lwz r4, 0x5cc(r31)
/* 80D16E44  4B 33 13 39 */	bl cutEnd__16dEvent_manager_cFi
lbl_80D16E48:
/* 80D16E48  88 1F 05 E2 */	lbz r0, 0x5e2(r31)
/* 80D16E4C  28 00 00 02 */	cmplwi r0, 2
/* 80D16E50  40 82 00 1C */	bne lbl_80D16E6C
/* 80D16E54  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 80D16E58  38 80 60 00 */	li r4, 0x6000
/* 80D16E5C  38 A0 00 FA */	li r5, 0xfa
/* 80D16E60  38 C0 00 C8 */	li r6, 0xc8
/* 80D16E64  38 E0 00 46 */	li r7, 0x46
/* 80D16E68  4B 55 96 D9 */	bl cLib_addCalcAngleS__FPsssss
lbl_80D16E6C:
/* 80D16E6C  A0 1F 05 EC */	lhz r0, 0x5ec(r31)
/* 80D16E70  28 00 00 09 */	cmplwi r0, 9
/* 80D16E74  40 82 00 30 */	bne lbl_80D16EA4
/* 80D16E78  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80D16E7C  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 80D16E80  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80D16E84  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80D16E88  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 80D16E8C  38 7D 5B D4 */	addi r3, r29, 0x5bd4
/* 80D16E90  38 80 00 05 */	li r4, 5
/* 80D16E94  38 A0 00 01 */	li r5, 1
/* 80D16E98  38 C1 00 8C */	addi r6, r1, 0x8c
/* 80D16E9C  4B 35 8B 89 */	bl StartShock__12dVibration_cFii4cXyz
/* 80D16EA0  48 00 02 3C */	b lbl_80D170DC
lbl_80D16EA4:
/* 80D16EA4  28 00 01 22 */	cmplwi r0, 0x122
/* 80D16EA8  40 82 00 30 */	bne lbl_80D16ED8
/* 80D16EAC  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80D16EB0  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 80D16EB4  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80D16EB8  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80D16EBC  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 80D16EC0  38 7D 5B D4 */	addi r3, r29, 0x5bd4
/* 80D16EC4  38 80 00 03 */	li r4, 3
/* 80D16EC8  38 A0 00 01 */	li r5, 1
/* 80D16ECC  38 C1 00 80 */	addi r6, r1, 0x80
/* 80D16ED0  4B 35 8B 55 */	bl StartShock__12dVibration_cFii4cXyz
/* 80D16ED4  48 00 02 08 */	b lbl_80D170DC
lbl_80D16ED8:
/* 80D16ED8  28 00 00 41 */	cmplwi r0, 0x41
/* 80D16EDC  40 82 00 30 */	bne lbl_80D16F0C
/* 80D16EE0  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80D16EE4  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80D16EE8  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80D16EEC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80D16EF0  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 80D16EF4  38 7D 5B D4 */	addi r3, r29, 0x5bd4
/* 80D16EF8  38 80 00 01 */	li r4, 1
/* 80D16EFC  38 A0 00 01 */	li r5, 1
/* 80D16F00  38 C1 00 74 */	addi r6, r1, 0x74
/* 80D16F04  4B 35 8C 0D */	bl StartQuake__12dVibration_cFii4cXyz
/* 80D16F08  48 00 01 D4 */	b lbl_80D170DC
lbl_80D16F0C:
/* 80D16F0C  28 00 00 96 */	cmplwi r0, 0x96
/* 80D16F10  40 82 00 30 */	bne lbl_80D16F40
/* 80D16F14  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80D16F18  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 80D16F1C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80D16F20  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80D16F24  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 80D16F28  38 7D 5B D4 */	addi r3, r29, 0x5bd4
/* 80D16F2C  38 80 00 02 */	li r4, 2
/* 80D16F30  38 A0 00 01 */	li r5, 1
/* 80D16F34  38 C1 00 68 */	addi r6, r1, 0x68
/* 80D16F38  4B 35 8B D9 */	bl StartQuake__12dVibration_cFii4cXyz
/* 80D16F3C  48 00 01 A0 */	b lbl_80D170DC
lbl_80D16F40:
/* 80D16F40  28 00 00 D0 */	cmplwi r0, 0xd0
/* 80D16F44  40 82 00 30 */	bne lbl_80D16F74
/* 80D16F48  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80D16F4C  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80D16F50  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80D16F54  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80D16F58  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80D16F5C  38 7D 5B D4 */	addi r3, r29, 0x5bd4
/* 80D16F60  38 80 00 05 */	li r4, 5
/* 80D16F64  38 A0 00 01 */	li r5, 1
/* 80D16F68  38 C1 00 5C */	addi r6, r1, 0x5c
/* 80D16F6C  4B 35 8A B9 */	bl StartShock__12dVibration_cFii4cXyz
/* 80D16F70  48 00 01 6C */	b lbl_80D170DC
lbl_80D16F74:
/* 80D16F74  28 00 00 D7 */	cmplwi r0, 0xd7
/* 80D16F78  40 82 00 30 */	bne lbl_80D16FA8
/* 80D16F7C  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80D16F80  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80D16F84  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80D16F88  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80D16F8C  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80D16F90  38 7D 5B D4 */	addi r3, r29, 0x5bd4
/* 80D16F94  38 80 00 02 */	li r4, 2
/* 80D16F98  38 A0 00 01 */	li r5, 1
/* 80D16F9C  38 C1 00 50 */	addi r6, r1, 0x50
/* 80D16FA0  4B 35 8B 71 */	bl StartQuake__12dVibration_cFii4cXyz
/* 80D16FA4  48 00 01 38 */	b lbl_80D170DC
lbl_80D16FA8:
/* 80D16FA8  28 00 01 13 */	cmplwi r0, 0x113
/* 80D16FAC  40 82 01 30 */	bne lbl_80D170DC
/* 80D16FB0  38 7D 5B D4 */	addi r3, r29, 0x5bd4
/* 80D16FB4  38 80 00 1F */	li r4, 0x1f
/* 80D16FB8  4B 35 8D DD */	bl StopQuake__12dVibration_cFi
/* 80D16FBC  48 00 01 20 */	b lbl_80D170DC
lbl_80D16FC0:
/* 80D16FC0  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80D16FC4  4B 2F 64 65 */	bl play__14mDoExt_baseAnmFv
/* 80D16FC8  A0 1F 05 EC */	lhz r0, 0x5ec(r31)
/* 80D16FCC  28 00 00 0F */	cmplwi r0, 0xf
/* 80D16FD0  40 82 00 9C */	bne lbl_80D1706C
/* 80D16FD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D16FD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D16FDC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80D16FE0  38 80 00 00 */	li r4, 0
/* 80D16FE4  90 81 00 08 */	stw r4, 8(r1)
/* 80D16FE8  38 00 FF FF */	li r0, -1
/* 80D16FEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D16FF0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D16FF4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D16FF8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D16FFC  38 80 00 00 */	li r4, 0
/* 80D17000  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000874E@ha */
/* 80D17004  38 A5 87 4E */	addi r5, r5, 0x874E /* 0x0000874E@l */
/* 80D17008  7F 06 C3 78 */	mr r6, r24
/* 80D1700C  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80D17010  39 01 00 34 */	addi r8, r1, 0x34
/* 80D17014  39 20 00 00 */	li r9, 0
/* 80D17018  39 40 00 FF */	li r10, 0xff
/* 80D1701C  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80D17020  4B 33 5A 71 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D17024  90 7F 05 FC */	stw r3, 0x5fc(r31)
/* 80D17028  3C 60 00 01 */	lis r3, 0x0001 /* 0x0001008E@ha */
/* 80D1702C  38 03 00 8E */	addi r0, r3, 0x008E /* 0x0001008E@l */
/* 80D17030  90 01 00 30 */	stw r0, 0x30(r1)
/* 80D17034  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D17038  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D1703C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D17040  38 81 00 30 */	addi r4, r1, 0x30
/* 80D17044  38 A0 00 00 */	li r5, 0
/* 80D17048  38 C0 00 00 */	li r6, 0
/* 80D1704C  38 E0 00 00 */	li r7, 0
/* 80D17050  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80D17054  FC 40 08 90 */	fmr f2, f1
/* 80D17058  C0 7E 00 64 */	lfs f3, 0x64(r30)
/* 80D1705C  FC 80 18 90 */	fmr f4, f3
/* 80D17060  39 00 00 00 */	li r8, 0
/* 80D17064  4B 59 49 21 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D17068  48 00 00 74 */	b lbl_80D170DC
lbl_80D1706C:
/* 80D1706C  28 00 00 08 */	cmplwi r0, 8
/* 80D17070  40 82 00 30 */	bne lbl_80D170A0
/* 80D17074  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80D17078  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80D1707C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80D17080  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80D17084  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80D17088  38 7D 5B D4 */	addi r3, r29, 0x5bd4
/* 80D1708C  38 80 00 08 */	li r4, 8
/* 80D17090  38 A0 00 1F */	li r5, 0x1f
/* 80D17094  38 C1 00 44 */	addi r6, r1, 0x44
/* 80D17098  4B 35 89 8D */	bl StartShock__12dVibration_cFii4cXyz
/* 80D1709C  48 00 00 40 */	b lbl_80D170DC
lbl_80D170A0:
/* 80D170A0  28 00 00 2D */	cmplwi r0, 0x2d
/* 80D170A4  40 81 00 38 */	ble lbl_80D170DC
/* 80D170A8  7F E3 FB 78 */	mr r3, r31
/* 80D170AC  48 00 01 15 */	bl sceneChange__16daObjTobyHouse_cFv
/* 80D170B0  48 00 00 2C */	b lbl_80D170DC
lbl_80D170B4:
/* 80D170B4  7F E3 FB 78 */	mr r3, r31
/* 80D170B8  48 00 01 09 */	bl sceneChange__16daObjTobyHouse_cFv
/* 80D170BC  48 00 00 20 */	b lbl_80D170DC
lbl_80D170C0:
/* 80D170C0  7F 63 DB 78 */	mr r3, r27
/* 80D170C4  80 9F 05 CC */	lwz r4, 0x5cc(r31)
/* 80D170C8  4B 33 10 B5 */	bl cutEnd__16dEvent_manager_cFi
/* 80D170CC  48 00 00 10 */	b lbl_80D170DC
lbl_80D170D0:
/* 80D170D0  7F 63 DB 78 */	mr r3, r27
/* 80D170D4  80 9F 05 CC */	lwz r4, 0x5cc(r31)
/* 80D170D8  4B 33 10 A5 */	bl cutEnd__16dEvent_manager_cFi
lbl_80D170DC:
/* 80D170DC  80 BF 05 F0 */	lwz r5, 0x5f0(r31)
/* 80D170E0  28 05 00 00 */	cmplwi r5, 0
/* 80D170E4  41 82 00 28 */	beq lbl_80D1710C
/* 80D170E8  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D170EC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80D170F0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80D170F4  A0 1F 05 DA */	lhz r0, 0x5da(r31)
/* 80D170F8  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80D170FC  7C 63 02 14 */	add r3, r3, r0
/* 80D17100  38 85 00 68 */	addi r4, r5, 0x68
/* 80D17104  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80D17108  4B 56 96 D9 */	bl func_802807E0
lbl_80D1710C:
/* 80D1710C  80 BF 05 F4 */	lwz r5, 0x5f4(r31)
/* 80D17110  28 05 00 00 */	cmplwi r5, 0
/* 80D17114  41 82 00 28 */	beq lbl_80D1713C
/* 80D17118  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D1711C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80D17120  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80D17124  A0 1F 05 DA */	lhz r0, 0x5da(r31)
/* 80D17128  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80D1712C  7C 63 02 14 */	add r3, r3, r0
/* 80D17130  38 85 00 68 */	addi r4, r5, 0x68
/* 80D17134  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80D17138  4B 56 96 A9 */	bl func_802807E0
lbl_80D1713C:
/* 80D1713C  80 BF 05 F8 */	lwz r5, 0x5f8(r31)
/* 80D17140  28 05 00 00 */	cmplwi r5, 0
/* 80D17144  41 82 00 28 */	beq lbl_80D1716C
/* 80D17148  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D1714C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80D17150  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80D17154  A0 1F 05 DA */	lhz r0, 0x5da(r31)
/* 80D17158  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80D1715C  7C 63 02 14 */	add r3, r3, r0
/* 80D17160  38 85 00 68 */	addi r4, r5, 0x68
/* 80D17164  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80D17168  4B 56 96 79 */	bl func_802807E0
lbl_80D1716C:
/* 80D1716C  80 DF 05 FC */	lwz r6, 0x5fc(r31)
/* 80D17170  28 06 00 00 */	cmplwi r6, 0
/* 80D17174  41 82 00 34 */	beq lbl_80D171A8
/* 80D17178  A8 61 00 34 */	lha r3, 0x34(r1)
/* 80D1717C  A8 81 00 36 */	lha r4, 0x36(r1)
/* 80D17180  A8 A1 00 38 */	lha r5, 0x38(r1)
/* 80D17184  C0 58 00 08 */	lfs f2, 8(r24)
/* 80D17188  C0 38 00 04 */	lfs f1, 4(r24)
/* 80D1718C  C0 18 00 00 */	lfs f0, 0(r24)
/* 80D17190  D0 06 00 A4 */	stfs f0, 0xa4(r6)
/* 80D17194  D0 26 00 A8 */	stfs f1, 0xa8(r6)
/* 80D17198  D0 46 00 AC */	stfs f2, 0xac(r6)
/* 80D1719C  80 DF 05 FC */	lwz r6, 0x5fc(r31)
/* 80D171A0  38 C6 00 68 */	addi r6, r6, 0x68
/* 80D171A4  4B 56 95 91 */	bl JPAGetXYZRotateMtx__FsssPA4_f
lbl_80D171A8:
/* 80D171A8  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80D171AC  4B 64 B0 65 */	bl _restgpr_23
/* 80D171B0  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80D171B4  7C 08 03 A6 */	mtlr r0
/* 80D171B8  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80D171BC  4E 80 00 20 */	blr 
