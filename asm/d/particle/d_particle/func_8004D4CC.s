lbl_8004D4CC:
/* 8004D4CC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8004D4D0  7C 08 02 A6 */	mflr r0
/* 8004D4D4  90 01 00 74 */	stw r0, 0x74(r1)
/* 8004D4D8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8004D4DC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8004D4E0  39 61 00 60 */	addi r11, r1, 0x60
/* 8004D4E4  48 31 4C C9 */	bl _savegpr_17
/* 8004D4E8  7C 75 1B 78 */	mr r21, r3
/* 8004D4EC  7C B6 2B 78 */	mr r22, r5
/* 8004D4F0  7C D7 33 78 */	mr r23, r6
/* 8004D4F4  7C F8 3B 78 */	mr r24, r7
/* 8004D4F8  7D 19 43 78 */	mr r25, r8
/* 8004D4FC  7D 3A 4B 78 */	mr r26, r9
/* 8004D500  7D 5B 53 78 */	mr r27, r10
/* 8004D504  8B 81 00 7B */	lbz r28, 0x7b(r1)
/* 8004D508  83 A1 00 7C */	lwz r29, 0x7c(r1)
/* 8004D50C  8A 21 00 83 */	lbz r17, 0x83(r1)
/* 8004D510  83 C1 00 84 */	lwz r30, 0x84(r1)
/* 8004D514  83 E1 00 88 */	lwz r31, 0x88(r1)
/* 8004D518  82 41 00 8C */	lwz r18, 0x8c(r1)
/* 8004D51C  FF E0 08 90 */	fmr f31, f1
/* 8004D520  38 75 02 10 */	addi r3, r21, 0x210
/* 8004D524  4B FF E3 51 */	bl get__Q213dPa_control_c7level_cFUl
/* 8004D528  7C 74 1B 78 */	mr r20, r3
/* 8004D52C  7E E3 BB 78 */	mr r3, r23
/* 8004D530  4B FF E6 41 */	bl getRM_ID__13dPa_control_cFUs
/* 8004D534  80 8D 89 20 */	lwz r4, mEmitterMng__13dPa_control_c(r13)
/* 8004D538  80 84 00 1C */	lwz r4, 0x1c(r4)
/* 8004D53C  54 60 15 BA */	rlwinm r0, r3, 2, 0x16, 0x1d
/* 8004D540  7C 64 00 2E */	lwzx r3, r4, r0
/* 8004D544  7E E4 BB 78 */	mr r4, r23
/* 8004D548  48 22 6A 85 */	bl getResUserWork__18JPAResourceManagerCFUs
/* 8004D54C  7C 73 1B 78 */	mr r19, r3
/* 8004D550  28 14 00 00 */	cmplwi r20, 0
/* 8004D554  41 82 00 B8 */	beq lbl_8004D60C
/* 8004D558  56 E3 04 3E */	clrlwi r3, r23, 0x10
/* 8004D55C  A0 14 00 04 */	lhz r0, 4(r20)
/* 8004D560  7C 03 00 40 */	cmplw r3, r0
/* 8004D564  40 82 00 9C */	bne lbl_8004D600
/* 8004D568  7E 83 A3 78 */	mr r3, r20
/* 8004D56C  4B FF DF 99 */	bl onActive__Q313dPa_control_c7level_c9emitter_cFv
/* 8004D570  82 34 00 08 */	lwz r17, 8(r20)
/* 8004D574  80 11 00 F4 */	lwz r0, 0xf4(r17)
/* 8004D578  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8004D57C  90 11 00 F4 */	stw r0, 0xf4(r17)
/* 8004D580  80 14 00 0C */	lwz r0, 0xc(r20)
/* 8004D584  28 00 00 00 */	cmplwi r0, 0
/* 8004D588  40 82 00 38 */	bne lbl_8004D5C0
/* 8004D58C  C0 58 00 08 */	lfs f2, 8(r24)
/* 8004D590  C0 38 00 04 */	lfs f1, 4(r24)
/* 8004D594  C0 18 00 00 */	lfs f0, 0(r24)
/* 8004D598  D0 11 00 A4 */	stfs f0, 0xa4(r17)
/* 8004D59C  D0 31 00 A8 */	stfs f1, 0xa8(r17)
/* 8004D5A0  D0 51 00 AC */	stfs f2, 0xac(r17)
/* 8004D5A4  28 1A 00 00 */	cmplwi r26, 0
/* 8004D5A8  41 82 00 18 */	beq lbl_8004D5C0
/* 8004D5AC  A8 7A 00 00 */	lha r3, 0(r26)
/* 8004D5B0  A8 9A 00 02 */	lha r4, 2(r26)
/* 8004D5B4  A8 BA 00 04 */	lha r5, 4(r26)
/* 8004D5B8  38 D1 00 68 */	addi r6, r17, 0x68
/* 8004D5BC  48 23 31 79 */	bl JPAGetXYZRotateMtx__FsssPA4_f
lbl_8004D5C0:
/* 8004D5C0  80 11 00 F4 */	lwz r0, 0xf4(r17)
/* 8004D5C4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8004D5C8  41 82 00 10 */	beq lbl_8004D5D8
/* 8004D5CC  80 11 00 F4 */	lwz r0, 0xf4(r17)
/* 8004D5D0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8004D5D4  90 11 00 F4 */	stw r0, 0xf4(r17)
lbl_8004D5D8:
/* 8004D5D8  FC 20 F8 90 */	fmr f1, f31
/* 8004D5DC  7E 23 8B 78 */	mr r3, r17
/* 8004D5E0  7F 24 CB 78 */	mr r4, r25
/* 8004D5E4  7E 65 9B 78 */	mr r5, r19
/* 8004D5E8  7F 06 C3 78 */	mr r6, r24
/* 8004D5EC  7F C7 F3 78 */	mr r7, r30
/* 8004D5F0  7F E8 FB 78 */	mr r8, r31
/* 8004D5F4  4B FF FC 85 */	bl dPa_kankyocolor_set__FfP14JPABaseEmitterPC12dKy_tevstr_cUlPC4cXyzPC8_GXColorPC8_GXColor
/* 8004D5F8  80 74 00 00 */	lwz r3, 0(r20)
/* 8004D5FC  48 00 00 88 */	b lbl_8004D684
lbl_8004D600:
/* 8004D600  38 75 02 10 */	addi r3, r21, 0x210
/* 8004D604  7E 84 A3 78 */	mr r4, r20
/* 8004D608  4B FF E4 6D */	bl cutTable__Q213dPa_control_c7level_cFPQ313dPa_control_c7level_c9emitter_c
lbl_8004D60C:
/* 8004D60C  28 1D 00 00 */	cmplwi r29, 0
/* 8004D610  41 82 00 18 */	beq lbl_8004D628
/* 8004D614  7F A3 EB 78 */	mr r3, r29
/* 8004D618  81 9D 00 00 */	lwz r12, 0(r29)
/* 8004D61C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8004D620  7D 89 03 A6 */	mtctr r12
/* 8004D624  4E 80 04 21 */	bctrl 
lbl_8004D628:
/* 8004D628  93 A1 00 08 */	stw r29, 8(r1)
/* 8004D62C  92 21 00 0C */	stw r17, 0xc(r1)
/* 8004D630  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8004D634  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8004D638  92 41 00 18 */	stw r18, 0x18(r1)
/* 8004D63C  7E A3 AB 78 */	mr r3, r21
/* 8004D640  7E C4 B3 78 */	mr r4, r22
/* 8004D644  7E E5 BB 78 */	mr r5, r23
/* 8004D648  7F 06 C3 78 */	mr r6, r24
/* 8004D64C  7F 27 CB 78 */	mr r7, r25
/* 8004D650  7F 48 D3 78 */	mr r8, r26
/* 8004D654  7F 69 DB 78 */	mr r9, r27
/* 8004D658  7F 8A E3 78 */	mr r10, r28
/* 8004D65C  FC 20 F8 90 */	fmr f1, f31
/* 8004D660  4B FF F4 31 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8004D664  7C 65 1B 79 */	or. r5, r3, r3
/* 8004D668  40 82 00 0C */	bne lbl_8004D674
/* 8004D66C  38 60 00 00 */	li r3, 0
/* 8004D670  48 00 00 14 */	b lbl_8004D684
lbl_8004D674:
/* 8004D674  38 75 02 10 */	addi r3, r21, 0x210
/* 8004D678  7E E4 BB 78 */	mr r4, r23
/* 8004D67C  7F A6 EB 78 */	mr r6, r29
/* 8004D680  4B FF E2 CD */	bl entry__Q213dPa_control_c7level_cFUsP14JPABaseEmitterP18dPa_levelEcallBack
lbl_8004D684:
/* 8004D684  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8004D688  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8004D68C  39 61 00 60 */	addi r11, r1, 0x60
/* 8004D690  48 31 4B 69 */	bl _restgpr_17
/* 8004D694  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8004D698  7C 08 03 A6 */	mtlr r0
/* 8004D69C  38 21 00 70 */	addi r1, r1, 0x70
/* 8004D6A0  4E 80 00 20 */	blr 
