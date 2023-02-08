lbl_80CEBF1C:
/* 80CEBF1C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CEBF20  7C 08 02 A6 */	mflr r0
/* 80CEBF24  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CEBF28  39 61 00 50 */	addi r11, r1, 0x50
/* 80CEBF2C  4B 67 62 A5 */	bl _savegpr_26
/* 80CEBF30  7C 7E 1B 78 */	mr r30, r3
/* 80CEBF34  3C 80 80 CF */	lis r4, l_bmdIdx@ha /* 0x80CECAB4@ha */
/* 80CEBF38  3B E4 CA B4 */	addi r31, r4, l_bmdIdx@l /* 0x80CECAB4@l */
/* 80CEBF3C  88 03 09 07 */	lbz r0, 0x907(r3)
/* 80CEBF40  28 00 00 05 */	cmplwi r0, 5
/* 80CEBF44  41 82 02 24 */	beq lbl_80CEC168
/* 80CEBF48  4B 33 0C 59 */	bl fopAcM_cancelCarryNow__FP10fopAc_ac_c
/* 80CEBF4C  88 1E 09 4E */	lbz r0, 0x94e(r30)
/* 80CEBF50  28 00 00 00 */	cmplwi r0, 0
/* 80CEBF54  40 82 00 AC */	bne lbl_80CEC000
/* 80CEBF58  88 1E 09 06 */	lbz r0, 0x906(r30)
/* 80CEBF5C  28 00 00 01 */	cmplwi r0, 1
/* 80CEBF60  40 82 00 54 */	bne lbl_80CEBFB4
/* 80CEBF64  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CEBF68  7C 03 07 74 */	extsb r3, r0
/* 80CEBF6C  4B 34 11 01 */	bl dComIfGp_getReverb__Fi
/* 80CEBF70  7C 67 1B 78 */	mr r7, r3
/* 80CEBF74  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008022D@ha */
/* 80CEBF78  38 03 02 2D */	addi r0, r3, 0x022D /* 0x0008022D@l */
/* 80CEBF7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CEBF80  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CEBF84  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CEBF88  80 63 00 00 */	lwz r3, 0(r3)
/* 80CEBF8C  38 81 00 24 */	addi r4, r1, 0x24
/* 80CEBF90  38 BE 05 38 */	addi r5, r30, 0x538
/* 80CEBF94  38 C0 00 00 */	li r6, 0
/* 80CEBF98  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 80CEBF9C  FC 40 08 90 */	fmr f2, f1
/* 80CEBFA0  C0 7F 01 2C */	lfs f3, 0x12c(r31)
/* 80CEBFA4  FC 80 18 90 */	fmr f4, f3
/* 80CEBFA8  39 00 00 00 */	li r8, 0
/* 80CEBFAC  4B 5B F9 D9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CEBFB0  48 00 00 50 */	b lbl_80CEC000
lbl_80CEBFB4:
/* 80CEBFB4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CEBFB8  7C 03 07 74 */	extsb r3, r0
/* 80CEBFBC  4B 34 10 B1 */	bl dComIfGp_getReverb__Fi
/* 80CEBFC0  7C 67 1B 78 */	mr r7, r3
/* 80CEBFC4  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080225@ha */
/* 80CEBFC8  38 03 02 25 */	addi r0, r3, 0x0225 /* 0x00080225@l */
/* 80CEBFCC  90 01 00 20 */	stw r0, 0x20(r1)
/* 80CEBFD0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CEBFD4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CEBFD8  80 63 00 00 */	lwz r3, 0(r3)
/* 80CEBFDC  38 81 00 20 */	addi r4, r1, 0x20
/* 80CEBFE0  38 BE 05 38 */	addi r5, r30, 0x538
/* 80CEBFE4  38 C0 00 00 */	li r6, 0
/* 80CEBFE8  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 80CEBFEC  FC 40 08 90 */	fmr f2, f1
/* 80CEBFF0  C0 7F 01 2C */	lfs f3, 0x12c(r31)
/* 80CEBFF4  FC 80 18 90 */	fmr f4, f3
/* 80CEBFF8  39 00 00 00 */	li r8, 0
/* 80CEBFFC  4B 5B F9 89 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CEC000:
/* 80CEC000  88 1E 09 06 */	lbz r0, 0x906(r30)
/* 80CEC004  28 00 00 01 */	cmplwi r0, 1
/* 80CEC008  40 82 00 18 */	bne lbl_80CEC020
/* 80CEC00C  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80CEC010  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CEC014  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CEC018  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CEC01C  48 00 00 14 */	b lbl_80CEC030
lbl_80CEC020:
/* 80CEC020  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 80CEC024  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CEC028  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CEC02C  D0 01 00 30 */	stfs f0, 0x30(r1)
lbl_80CEC030:
/* 80CEC030  3C 60 80 CF */	lis r3, d_a_obj_stone__stringBase0@ha /* 0x80CECC3C@ha */
/* 80CEC034  38 63 CC 3C */	addi r3, r3, d_a_obj_stone__stringBase0@l /* 0x80CECC3C@l */
/* 80CEC038  38 63 00 10 */	addi r3, r3, 0x10
/* 80CEC03C  38 80 00 1B */	li r4, 0x1b
/* 80CEC040  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CEC044  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CEC048  3C A5 00 02 */	addis r5, r5, 2
/* 80CEC04C  38 C0 00 80 */	li r6, 0x80
/* 80CEC050  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CEC054  4B 35 02 99 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CEC058  7C 7C 1B 78 */	mr r28, r3
/* 80CEC05C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CEC060  7C 05 07 74 */	extsb r5, r0
/* 80CEC064  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CEC068  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CEC06C  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80CEC070  3C 80 80 45 */	lis r4, mEcallback__18dPa_modelEcallBack@ha /* 0x80450E90@ha */
/* 80CEC074  38 04 0E 90 */	addi r0, r4, mEcallback__18dPa_modelEcallBack@l /* 0x80450E90@l */
/* 80CEC078  90 01 00 08 */	stw r0, 8(r1)
/* 80CEC07C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80CEC080  38 00 00 00 */	li r0, 0
/* 80CEC084  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CEC088  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEC08C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CEC090  38 80 00 00 */	li r4, 0
/* 80CEC094  38 A0 01 5C */	li r5, 0x15c
/* 80CEC098  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80CEC09C  38 E0 00 00 */	li r7, 0
/* 80CEC0A0  39 00 00 00 */	li r8, 0
/* 80CEC0A4  39 21 00 28 */	addi r9, r1, 0x28
/* 80CEC0A8  39 40 00 FF */	li r10, 0xff
/* 80CEC0AC  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 80CEC0B0  4B 36 09 E1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CEC0B4  7F 84 E3 78 */	mr r4, r28
/* 80CEC0B8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CEC0BC  38 C0 00 03 */	li r6, 3
/* 80CEC0C0  38 E0 00 00 */	li r7, 0
/* 80CEC0C4  39 00 00 00 */	li r8, 0
/* 80CEC0C8  39 20 00 00 */	li r9, 0
/* 80CEC0CC  4B 35 EB 35 */	bl setModel__18dPa_modelEcallBackFP14JPABaseEmitterP12J3DModelDataRC12dKy_tevstr_cUcPvUcUc
/* 80CEC0D0  3B 40 00 00 */	li r26, 0
/* 80CEC0D4  3B A0 00 00 */	li r29, 0
/* 80CEC0D8  3B 9F 01 6C */	addi r28, r31, 0x16c
lbl_80CEC0DC:
/* 80CEC0DC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CEC0E0  7C 04 07 74 */	extsb r4, r0
/* 80CEC0E4  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80CEC0E8  38 00 00 00 */	li r0, 0
/* 80CEC0EC  90 01 00 08 */	stw r0, 8(r1)
/* 80CEC0F0  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CEC0F4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CEC0F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEC0FC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CEC100  38 80 00 00 */	li r4, 0
/* 80CEC104  7C BC EA 2E */	lhzx r5, r28, r29
/* 80CEC108  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80CEC10C  38 E0 00 00 */	li r7, 0
/* 80CEC110  39 00 00 00 */	li r8, 0
/* 80CEC114  39 21 00 28 */	addi r9, r1, 0x28
/* 80CEC118  39 40 00 FF */	li r10, 0xff
/* 80CEC11C  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 80CEC120  4B 36 09 71 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CEC124  3B 5A 00 01 */	addi r26, r26, 1
/* 80CEC128  2C 1A 00 03 */	cmpwi r26, 3
/* 80CEC12C  3B BD 00 02 */	addi r29, r29, 2
/* 80CEC130  41 80 FF AC */	blt lbl_80CEC0DC
/* 80CEC134  88 1E 09 08 */	lbz r0, 0x908(r30)
/* 80CEC138  28 00 00 00 */	cmplwi r0, 0
/* 80CEC13C  40 82 00 14 */	bne lbl_80CEC150
/* 80CEC140  7F C3 F3 78 */	mr r3, r30
/* 80CEC144  48 00 01 21 */	bl createItem__12daObjStone_cFv
/* 80CEC148  38 00 00 01 */	li r0, 1
/* 80CEC14C  98 1E 09 08 */	stb r0, 0x908(r30)
lbl_80CEC150:
/* 80CEC150  38 00 00 00 */	li r0, 0
/* 80CEC154  90 1E 09 0C */	stw r0, 0x90c(r30)
/* 80CEC158  38 00 00 05 */	li r0, 5
/* 80CEC15C  98 1E 09 07 */	stb r0, 0x907(r30)
/* 80CEC160  7F C3 F3 78 */	mr r3, r30
/* 80CEC164  4B 32 DB 19 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80CEC168:
/* 80CEC168  39 61 00 50 */	addi r11, r1, 0x50
/* 80CEC16C  4B 67 60 B1 */	bl _restgpr_26
/* 80CEC170  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CEC174  7C 08 03 A6 */	mtlr r0
/* 80CEC178  38 21 00 50 */	addi r1, r1, 0x50
/* 80CEC17C  4E 80 00 20 */	blr 
