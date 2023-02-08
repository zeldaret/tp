lbl_804A9130:
/* 804A9130  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804A9134  7C 08 02 A6 */	mflr r0
/* 804A9138  90 01 00 74 */	stw r0, 0x74(r1)
/* 804A913C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 804A9140  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 804A9144  39 61 00 60 */	addi r11, r1, 0x60
/* 804A9148  4B EB 90 89 */	bl _savegpr_26
/* 804A914C  7C 7E 1B 79 */	or. r30, r3, r3
/* 804A9150  FF E0 08 90 */	fmr f31, f1
/* 804A9154  3C 60 80 4B */	lis r3, lit_3704@ha /* 0x804A9460@ha */
/* 804A9158  3B E3 94 60 */	addi r31, r3, lit_3704@l /* 0x804A9460@l */
/* 804A915C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 804A9160  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804A9164  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804A9168  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804A916C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 804A9170  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804A9174  38 61 00 2C */	addi r3, r1, 0x2c
/* 804A9178  38 80 00 78 */	li r4, 0x78
/* 804A917C  41 82 00 0C */	beq lbl_804A9188
/* 804A9180  80 BE 00 04 */	lwz r5, 4(r30)
/* 804A9184  48 00 00 08 */	b lbl_804A918C
lbl_804A9188:
/* 804A9188  38 A0 FF FF */	li r5, -1
lbl_804A918C:
/* 804A918C  38 C0 00 0A */	li r6, 0xa
/* 804A9190  4B CF F0 31 */	bl dKy_Sound_set__F4cXyziUii
/* 804A9194  3C 60 80 4B */	lis r3, s_ks_sub__FPvPv@ha /* 0x804A8F20@ha */
/* 804A9198  38 63 8F 20 */	addi r3, r3, s_ks_sub__FPvPv@l /* 0x804A8F20@l */
/* 804A919C  7F C4 F3 78 */	mr r4, r30
/* 804A91A0  4B B7 81 99 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 804A91A4  88 1E 05 67 */	lbz r0, 0x567(r30)
/* 804A91A8  7C 00 07 74 */	extsb r0, r0
/* 804A91AC  2C 00 00 03 */	cmpwi r0, 3
/* 804A91B0  40 82 00 60 */	bne lbl_804A9210
/* 804A91B4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804A91B8  7C 03 07 74 */	extsb r3, r0
/* 804A91BC  4B B8 3E B1 */	bl dComIfGp_getReverb__Fi
/* 804A91C0  7C 67 1B 78 */	mr r7, r3
/* 804A91C4  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006000A@ha */
/* 804A91C8  38 03 00 0A */	addi r0, r3, 0x000A /* 0x0006000A@l */
/* 804A91CC  90 01 00 28 */	stw r0, 0x28(r1)
/* 804A91D0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804A91D4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804A91D8  80 63 00 00 */	lwz r3, 0(r3)
/* 804A91DC  38 81 00 28 */	addi r4, r1, 0x28
/* 804A91E0  38 BE 05 38 */	addi r5, r30, 0x538
/* 804A91E4  38 C0 00 00 */	li r6, 0
/* 804A91E8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804A91EC  FC 40 08 90 */	fmr f2, f1
/* 804A91F0  C0 7F 00 04 */	lfs f3, 4(r31)
/* 804A91F4  FC 80 18 90 */	fmr f4, f3
/* 804A91F8  39 00 00 00 */	li r8, 0
/* 804A91FC  4B E0 27 89 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804A9200  7F C3 F3 78 */	mr r3, r30
/* 804A9204  FC 20 F8 90 */	fmr f1, f31
/* 804A9208  4B FF FE 79 */	bl ghost_disappear__FP15disappear_classf
/* 804A920C  48 00 01 38 */	b lbl_804A9344
lbl_804A9210:
/* 804A9210  2C 00 00 01 */	cmpwi r0, 1
/* 804A9214  41 80 00 64 */	blt lbl_804A9278
/* 804A9218  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804A921C  7C 03 07 74 */	extsb r3, r0
/* 804A9220  4B B8 3E 4D */	bl dComIfGp_getReverb__Fi
/* 804A9224  7C 67 1B 78 */	mr r7, r3
/* 804A9228  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060028@ha */
/* 804A922C  38 03 00 28 */	addi r0, r3, 0x0028 /* 0x00060028@l */
/* 804A9230  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A9234  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804A9238  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804A923C  80 63 00 00 */	lwz r3, 0(r3)
/* 804A9240  38 81 00 24 */	addi r4, r1, 0x24
/* 804A9244  38 BE 05 38 */	addi r5, r30, 0x538
/* 804A9248  38 C0 00 00 */	li r6, 0
/* 804A924C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804A9250  FC 40 08 90 */	fmr f2, f1
/* 804A9254  C0 7F 00 04 */	lfs f3, 4(r31)
/* 804A9258  FC 80 18 90 */	fmr f4, f3
/* 804A925C  39 00 00 00 */	li r8, 0
/* 804A9260  4B E0 27 25 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804A9264  7F C3 F3 78 */	mr r3, r30
/* 804A9268  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804A926C  EC 20 07 F2 */	fmuls f1, f0, f31
/* 804A9270  4B FF FD 49 */	bl yami_disappear__FP15disappear_classf
/* 804A9274  48 00 00 D0 */	b lbl_804A9344
lbl_804A9278:
/* 804A9278  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804A927C  7C 03 07 74 */	extsb r3, r0
/* 804A9280  4B B8 3D ED */	bl dComIfGp_getReverb__Fi
/* 804A9284  7C 67 1B 78 */	mr r7, r3
/* 804A9288  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006000A@ha */
/* 804A928C  38 03 00 0A */	addi r0, r3, 0x000A /* 0x0006000A@l */
/* 804A9290  90 01 00 20 */	stw r0, 0x20(r1)
/* 804A9294  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804A9298  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804A929C  80 63 00 00 */	lwz r3, 0(r3)
/* 804A92A0  38 81 00 20 */	addi r4, r1, 0x20
/* 804A92A4  38 BE 05 38 */	addi r5, r30, 0x538
/* 804A92A8  38 C0 00 00 */	li r6, 0
/* 804A92AC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804A92B0  FC 40 08 90 */	fmr f2, f1
/* 804A92B4  C0 7F 00 04 */	lfs f3, 4(r31)
/* 804A92B8  FC 80 18 90 */	fmr f4, f3
/* 804A92BC  39 00 00 00 */	li r8, 0
/* 804A92C0  4B E0 26 C5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804A92C4  D3 E1 00 38 */	stfs f31, 0x38(r1)
/* 804A92C8  D3 E1 00 3C */	stfs f31, 0x3c(r1)
/* 804A92CC  D3 E1 00 40 */	stfs f31, 0x40(r1)
/* 804A92D0  38 00 00 3A */	li r0, 0x3a
/* 804A92D4  B0 1E 05 74 */	sth r0, 0x574(r30)
/* 804A92D8  3B 40 00 00 */	li r26, 0
/* 804A92DC  3B A0 00 00 */	li r29, 0
/* 804A92E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A92E4  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A92E8  3C 60 80 4B */	lis r3, da_name_3736@ha /* 0x804A9494@ha */
/* 804A92EC  3B 83 94 94 */	addi r28, r3, da_name_3736@l /* 0x804A9494@l */
lbl_804A92F0:
/* 804A92F0  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 804A92F4  38 80 00 00 */	li r4, 0
/* 804A92F8  90 81 00 08 */	stw r4, 8(r1)
/* 804A92FC  38 00 FF FF */	li r0, -1
/* 804A9300  90 01 00 0C */	stw r0, 0xc(r1)
/* 804A9304  90 81 00 10 */	stw r4, 0x10(r1)
/* 804A9308  90 81 00 14 */	stw r4, 0x14(r1)
/* 804A930C  90 81 00 18 */	stw r4, 0x18(r1)
/* 804A9310  38 80 00 00 */	li r4, 0
/* 804A9314  7C BC EA 2E */	lhzx r5, r28, r29
/* 804A9318  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 804A931C  38 E0 00 00 */	li r7, 0
/* 804A9320  39 00 00 00 */	li r8, 0
/* 804A9324  39 21 00 38 */	addi r9, r1, 0x38
/* 804A9328  39 40 00 FF */	li r10, 0xff
/* 804A932C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804A9330  4B BA 37 61 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804A9334  3B 5A 00 01 */	addi r26, r26, 1
/* 804A9338  2C 1A 00 07 */	cmpwi r26, 7
/* 804A933C  3B BD 00 02 */	addi r29, r29, 2
/* 804A9340  41 80 FF B0 */	blt lbl_804A92F0
lbl_804A9344:
/* 804A9344  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 804A9348  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 804A934C  39 61 00 60 */	addi r11, r1, 0x60
/* 804A9350  4B EB 8E CD */	bl _restgpr_26
/* 804A9354  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804A9358  7C 08 03 A6 */	mtlr r0
/* 804A935C  38 21 00 70 */	addi r1, r1, 0x70
/* 804A9360  4E 80 00 20 */	blr 
