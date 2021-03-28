lbl_80D52E7C:
/* 80D52E7C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80D52E80  7C 08 02 A6 */	mflr r0
/* 80D52E84  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D52E88  39 61 00 50 */	addi r11, r1, 0x50
/* 80D52E8C  4B 60 F3 44 */	b _savegpr_26
/* 80D52E90  7C 7B 1B 78 */	mr r27, r3
/* 80D52E94  3C 60 80 D5 */	lis r3, mAttr__13daTagTWGate_c@ha
/* 80D52E98  3B C3 57 AC */	addi r30, r3, mAttr__13daTagTWGate_c@l
/* 80D52E9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D52EA0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80D52EA4  3B BF 4F F8 */	addi r29, r31, 0x4ff8
/* 80D52EA8  7F A3 EB 78 */	mr r3, r29
/* 80D52EAC  3C 80 80 D5 */	lis r4, l_myName@ha
/* 80D52EB0  38 84 59 94 */	addi r4, r4, l_myName@l
/* 80D52EB4  80 84 00 00 */	lwz r4, 0(r4)
/* 80D52EB8  38 A0 00 00 */	li r5, 0
/* 80D52EBC  38 C0 00 00 */	li r6, 0
/* 80D52EC0  4B 2F 4C 5C */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D52EC4  7C 7C 1B 78 */	mr r28, r3
/* 80D52EC8  2C 1C FF FF */	cmpwi r28, -1
/* 80D52ECC  41 82 03 6C */	beq lbl_80D53238
/* 80D52ED0  7F A3 EB 78 */	mr r3, r29
/* 80D52ED4  7F 84 E3 78 */	mr r4, r28
/* 80D52ED8  4B 2F 50 84 */	b getMyNowCutName__16dEvent_manager_cFi
/* 80D52EDC  7C 7A 1B 78 */	mr r26, r3
/* 80D52EE0  7F A3 EB 78 */	mr r3, r29
/* 80D52EE4  7F 84 E3 78 */	mr r4, r28
/* 80D52EE8  4B 2F 4E 64 */	b getIsAddvance__16dEvent_manager_cFi
/* 80D52EEC  2C 03 00 00 */	cmpwi r3, 0
/* 80D52EF0  41 82 00 70 */	beq lbl_80D52F60
/* 80D52EF4  80 9A 00 00 */	lwz r4, 0(r26)
/* 80D52EF8  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80D52EFC  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80D52F00  7C 04 00 00 */	cmpw r4, r0
/* 80D52F04  41 82 00 1C */	beq lbl_80D52F20
/* 80D52F08  40 80 00 08 */	bge lbl_80D52F10
/* 80D52F0C  48 00 00 54 */	b lbl_80D52F60
lbl_80D52F10:
/* 80D52F10  38 03 30 34 */	addi r0, r3, 0x3034
/* 80D52F14  7C 04 00 00 */	cmpw r4, r0
/* 80D52F18  40 80 00 48 */	bge lbl_80D52F60
/* 80D52F1C  48 00 00 28 */	b lbl_80D52F44
lbl_80D52F20:
/* 80D52F20  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D52F24  7F 64 DB 78 */	mr r4, r27
/* 80D52F28  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha
/* 80D52F2C  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l
/* 80D52F30  38 C0 00 00 */	li r6, 0
/* 80D52F34  4B 2E F9 E0 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80D52F38  38 00 00 00 */	li r0, 0
/* 80D52F3C  98 1B 05 E1 */	stb r0, 0x5e1(r27)
/* 80D52F40  48 00 00 20 */	b lbl_80D52F60
lbl_80D52F44:
/* 80D52F44  7F 63 DB 78 */	mr r3, r27
/* 80D52F48  48 00 1F 85 */	bl initBaseMtx__13daTagTWGate_cFv
/* 80D52F4C  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80D52F50  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80D52F54  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80D52F58  38 00 00 01 */	li r0, 1
/* 80D52F5C  98 1B 05 E0 */	stb r0, 0x5e0(r27)
lbl_80D52F60:
/* 80D52F60  80 9A 00 00 */	lwz r4, 0(r26)
/* 80D52F64  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80D52F68  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80D52F6C  7C 04 00 00 */	cmpw r4, r0
/* 80D52F70  41 82 00 80 */	beq lbl_80D52FF0
/* 80D52F74  40 80 00 14 */	bge lbl_80D52F88
/* 80D52F78  38 03 30 31 */	addi r0, r3, 0x3031
/* 80D52F7C  7C 04 00 00 */	cmpw r4, r0
/* 80D52F80  40 80 00 18 */	bge lbl_80D52F98
/* 80D52F84  48 00 02 50 */	b lbl_80D531D4
lbl_80D52F88:
/* 80D52F88  38 03 30 34 */	addi r0, r3, 0x3034
/* 80D52F8C  7C 04 00 00 */	cmpw r4, r0
/* 80D52F90  40 80 02 44 */	bge lbl_80D531D4
/* 80D52F94  48 00 01 C4 */	b lbl_80D53158
lbl_80D52F98:
/* 80D52F98  7F 63 DB 78 */	mr r3, r27
/* 80D52F9C  48 00 1F ED */	bl downloadModels__13daTagTWGate_cFv
/* 80D52FA0  2C 03 00 01 */	cmpwi r3, 1
/* 80D52FA4  40 82 00 14 */	bne lbl_80D52FB8
/* 80D52FA8  7F A3 EB 78 */	mr r3, r29
/* 80D52FAC  7F 84 E3 78 */	mr r4, r28
/* 80D52FB0  4B 2F 51 CC */	b cutEnd__16dEvent_manager_cFi
/* 80D52FB4  48 00 02 20 */	b lbl_80D531D4
lbl_80D52FB8:
/* 80D52FB8  2C 03 FF FF */	cmpwi r3, -1
/* 80D52FBC  40 82 02 18 */	bne lbl_80D531D4
/* 80D52FC0  88 1B 05 E2 */	lbz r0, 0x5e2(r27)
/* 80D52FC4  1C 60 00 1C */	mulli r3, r0, 0x1c
/* 80D52FC8  38 1E 00 04 */	addi r0, r30, 4
/* 80D52FCC  7C C0 1A 14 */	add r6, r0, r3
/* 80D52FD0  80 66 00 14 */	lwz r3, 0x14(r6)
/* 80D52FD4  A8 86 00 18 */	lha r4, 0x18(r6)
/* 80D52FD8  88 06 00 1A */	lbz r0, 0x1a(r6)
/* 80D52FDC  7C 05 07 74 */	extsb r5, r0
/* 80D52FE0  88 06 00 1B */	lbz r0, 0x1b(r6)
/* 80D52FE4  7C 06 07 74 */	extsb r6, r0
/* 80D52FE8  4B 2D A5 6C */	b dComIfGp_setNextStage__FPCcsScSc
/* 80D52FEC  48 00 01 E8 */	b lbl_80D531D4
lbl_80D52FF0:
/* 80D52FF0  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D52FF4  A0 1F 4F A2 */	lhz r0, 0x4fa2(r31)
/* 80D52FF8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D52FFC  41 82 00 34 */	beq lbl_80D53030
/* 80D53000  4B 2E F9 A8 */	b onSkipFade__14dEvt_control_cFv
/* 80D53004  88 1B 05 E2 */	lbz r0, 0x5e2(r27)
/* 80D53008  1C 60 00 1C */	mulli r3, r0, 0x1c
/* 80D5300C  38 1E 00 04 */	addi r0, r30, 4
/* 80D53010  7C C0 1A 14 */	add r6, r0, r3
/* 80D53014  80 66 00 14 */	lwz r3, 0x14(r6)
/* 80D53018  A8 86 00 18 */	lha r4, 0x18(r6)
/* 80D5301C  88 06 00 1A */	lbz r0, 0x1a(r6)
/* 80D53020  7C 05 07 74 */	extsb r5, r0
/* 80D53024  88 06 00 1B */	lbz r0, 0x1b(r6)
/* 80D53028  7C 06 07 74 */	extsb r6, r0
/* 80D5302C  4B 2D A5 28 */	b dComIfGp_setNextStage__FPCcsScSc
lbl_80D53030:
/* 80D53030  88 7B 05 E1 */	lbz r3, 0x5e1(r27)
/* 80D53034  38 03 00 01 */	addi r0, r3, 1
/* 80D53038  98 1B 05 E1 */	stb r0, 0x5e1(r27)
/* 80D5303C  28 03 00 2B */	cmplwi r3, 0x2b
/* 80D53040  40 82 01 94 */	bne lbl_80D531D4
/* 80D53044  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D53048  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5304C  83 43 5D AC */	lwz r26, 0x5dac(r3)
/* 80D53050  38 61 00 24 */	addi r3, r1, 0x24
/* 80D53054  38 80 00 00 */	li r4, 0
/* 80D53058  A8 BA 04 E6 */	lha r5, 0x4e6(r26)
/* 80D5305C  3C A5 00 01 */	addis r5, r5, 1
/* 80D53060  38 05 80 00 */	addi r0, r5, -32768
/* 80D53064  7C 05 07 34 */	extsh r5, r0
/* 80D53068  38 C0 00 00 */	li r6, 0
/* 80D5306C  4B 51 43 88 */	b __ct__5csXyzFsss
/* 80D53070  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 80D53074  4B 2B 9C F0 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80D53078  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D5307C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D53080  A8 81 00 26 */	lha r4, 0x26(r1)
/* 80D53084  4B 2B 93 B0 */	b mDoMtx_YrotM__FPA4_fs
/* 80D53088  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80D5308C  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 80D53090  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 80D53094  4B 2B 9D 08 */	b transM__14mDoMtx_stack_cFfff
/* 80D53098  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D5309C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D530A0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80D530A4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D530A8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80D530AC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D530B0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80D530B4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D530B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D530BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D530C0  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80D530C4  38 80 00 00 */	li r4, 0
/* 80D530C8  90 81 00 08 */	stw r4, 8(r1)
/* 80D530CC  38 00 FF FF */	li r0, -1
/* 80D530D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D530D4  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D530D8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D530DC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D530E0  38 80 00 00 */	li r4, 0
/* 80D530E4  3C A0 00 01 */	lis r5, 0x0001 /* 0x000086C5@ha */
/* 80D530E8  38 A5 86 C5 */	addi r5, r5, 0x86C5 /* 0x000086C5@l */
/* 80D530EC  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80D530F0  38 E0 00 00 */	li r7, 0
/* 80D530F4  39 01 00 24 */	addi r8, r1, 0x24
/* 80D530F8  39 20 00 00 */	li r9, 0
/* 80D530FC  39 40 00 FF */	li r10, 0xff
/* 80D53100  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80D53104  4B 2F 99 8C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D53108  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080277@ha */
/* 80D5310C  38 03 02 77 */	addi r0, r3, 0x0277 /* 0x00080277@l */
/* 80D53110  90 01 00 20 */	stw r0, 0x20(r1)
/* 80D53114  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D53118  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D5311C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D53120  38 81 00 20 */	addi r4, r1, 0x20
/* 80D53124  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80D53128  38 C0 00 00 */	li r6, 0
/* 80D5312C  38 E0 00 00 */	li r7, 0
/* 80D53130  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80D53134  FC 40 08 90 */	fmr f2, f1
/* 80D53138  C0 7E 00 90 */	lfs f3, 0x90(r30)
/* 80D5313C  FC 80 18 90 */	fmr f4, f3
/* 80D53140  39 00 00 00 */	li r8, 0
/* 80D53144  4B 55 88 40 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D53148  7F A3 EB 78 */	mr r3, r29
/* 80D5314C  7F 84 E3 78 */	mr r4, r28
/* 80D53150  4B 2F 50 2C */	b cutEnd__16dEvent_manager_cFi
/* 80D53154  48 00 00 80 */	b lbl_80D531D4
lbl_80D53158:
/* 80D53158  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D5315C  A0 1F 4F A2 */	lhz r0, 0x4fa2(r31)
/* 80D53160  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D53164  41 82 00 34 */	beq lbl_80D53198
/* 80D53168  4B 2E F8 40 */	b onSkipFade__14dEvt_control_cFv
/* 80D5316C  88 1B 05 E2 */	lbz r0, 0x5e2(r27)
/* 80D53170  1C 60 00 1C */	mulli r3, r0, 0x1c
/* 80D53174  38 1E 00 04 */	addi r0, r30, 4
/* 80D53178  7C C0 1A 14 */	add r6, r0, r3
/* 80D5317C  80 66 00 14 */	lwz r3, 0x14(r6)
/* 80D53180  A8 86 00 18 */	lha r4, 0x18(r6)
/* 80D53184  88 06 00 1A */	lbz r0, 0x1a(r6)
/* 80D53188  7C 05 07 74 */	extsb r5, r0
/* 80D5318C  88 06 00 1B */	lbz r0, 0x1b(r6)
/* 80D53190  7C 06 07 74 */	extsb r6, r0
/* 80D53194  4B 2D A3 C0 */	b dComIfGp_setNextStage__FPCcsScSc
lbl_80D53198:
/* 80D53198  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80D5319C  38 80 00 01 */	li r4, 1
/* 80D531A0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80D531A4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80D531A8  40 82 00 18 */	bne lbl_80D531C0
/* 80D531AC  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80D531B0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80D531B4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D531B8  41 82 00 08 */	beq lbl_80D531C0
/* 80D531BC  38 80 00 00 */	li r4, 0
lbl_80D531C0:
/* 80D531C0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80D531C4  41 82 00 10 */	beq lbl_80D531D4
/* 80D531C8  7F A3 EB 78 */	mr r3, r29
/* 80D531CC  7F 84 E3 78 */	mr r4, r28
/* 80D531D0  4B 2F 4F AC */	b cutEnd__16dEvent_manager_cFi
lbl_80D531D4:
/* 80D531D4  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80D531D8  28 00 00 02 */	cmplwi r0, 2
/* 80D531DC  40 82 00 5C */	bne lbl_80D53238
/* 80D531E0  A8 9B 05 DC */	lha r4, 0x5dc(r27)
/* 80D531E4  2C 04 FF FF */	cmpwi r4, -1
/* 80D531E8  41 82 00 50 */	beq lbl_80D53238
/* 80D531EC  7F A3 EB 78 */	mr r3, r29
/* 80D531F0  4B 2F 48 88 */	b endCheck__16dEvent_manager_cFs
/* 80D531F4  2C 03 00 00 */	cmpwi r3, 0
/* 80D531F8  41 82 00 40 */	beq lbl_80D53238
/* 80D531FC  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D53200  4B 2E F2 68 */	b reset__14dEvt_control_cFv
/* 80D53204  38 00 00 00 */	li r0, 0
/* 80D53208  98 1B 05 E0 */	stb r0, 0x5e0(r27)
/* 80D5320C  90 1B 05 88 */	stw r0, 0x588(r27)
/* 80D53210  80 1B 05 88 */	lwz r0, 0x588(r27)
/* 80D53214  1C 80 00 18 */	mulli r4, r0, 0x18
/* 80D53218  3C 60 80 D5 */	lis r3, ActionTable__13daTagTWGate_c@ha
/* 80D5321C  38 03 5A D0 */	addi r0, r3, ActionTable__13daTagTWGate_c@l
/* 80D53220  7C 00 22 14 */	add r0, r0, r4
/* 80D53224  90 1B 05 84 */	stw r0, 0x584(r27)
/* 80D53228  7F 63 DB 78 */	mr r3, r27
/* 80D5322C  81 9B 05 84 */	lwz r12, 0x584(r27)
/* 80D53230  4B 60 EE 54 */	b __ptmf_scall
/* 80D53234  60 00 00 00 */	nop 
lbl_80D53238:
/* 80D53238  39 61 00 50 */	addi r11, r1, 0x50
/* 80D5323C  4B 60 EF E0 */	b _restgpr_26
/* 80D53240  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80D53244  7C 08 03 A6 */	mtlr r0
/* 80D53248  38 21 00 50 */	addi r1, r1, 0x50
/* 80D5324C  4E 80 00 20 */	blr 
