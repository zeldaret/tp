lbl_80587864:
/* 80587864  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80587868  7C 08 02 A6 */	mflr r0
/* 8058786C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80587870  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80587874  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80587878  39 61 00 70 */	addi r11, r1, 0x70
/* 8058787C  4B DD A9 50 */	b _savegpr_25
/* 80587880  7C 79 1B 78 */	mr r25, r3
/* 80587884  7C BA 2B 78 */	mr r26, r5
/* 80587888  3C 60 80 58 */	lis r3, m__21daObj_KBacket_Param_c@ha
/* 8058788C  3B A3 7D 84 */	addi r29, r3, m__21daObj_KBacket_Param_c@l
/* 80587890  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80587894  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80587898  4B A8 4B 44 */	b mDoMtx_YrotS__FPA4_fs
/* 8058789C  C0 1D 00 64 */	lfs f0, 0x64(r29)
/* 805878A0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805878A4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805878A8  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 805878AC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805878B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805878B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805878B8  38 81 00 14 */	addi r4, r1, 0x14
/* 805878BC  38 A1 00 20 */	addi r5, r1, 0x20
/* 805878C0  4B DB F4 AC */	b PSMTXMultVec
/* 805878C4  38 61 00 20 */	addi r3, r1, 0x20
/* 805878C8  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 805878CC  7C 65 1B 78 */	mr r5, r3
/* 805878D0  4B DB F7 C0 */	b PSVECAdd
/* 805878D4  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 805878D8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805878DC  C0 1D 00 64 */	lfs f0, 0x64(r29)
/* 805878E0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805878E4  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 805878E8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805878EC  3B 60 00 00 */	li r27, 0
/* 805878F0  3B E0 00 00 */	li r31, 0
/* 805878F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805878F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805878FC  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80587900  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80587904  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l
/* 80587908  C3 FD 00 A8 */	lfs f31, 0xa8(r29)
lbl_8058790C:
/* 8058790C  7F C3 F3 78 */	mr r3, r30
/* 80587910  38 81 00 14 */	addi r4, r1, 0x14
/* 80587914  3B A1 00 2C */	addi r29, r1, 0x2c
/* 80587918  7F BD FA 14 */	add r29, r29, r31
/* 8058791C  7F A5 EB 78 */	mr r5, r29
/* 80587920  4B DB F4 4C */	b PSMTXMultVec
/* 80587924  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80587928  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8058792C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80587930  7F A3 EB 78 */	mr r3, r29
/* 80587934  38 81 00 20 */	addi r4, r1, 0x20
/* 80587938  7F A5 EB 78 */	mr r5, r29
/* 8058793C  4B DB F7 54 */	b PSVECAdd
/* 80587940  38 79 09 60 */	addi r3, r25, 0x960
/* 80587944  38 81 00 20 */	addi r4, r1, 0x20
/* 80587948  7F A5 EB 78 */	mr r5, r29
/* 8058794C  7F 26 CB 78 */	mr r6, r25
/* 80587950  4B AF 04 14 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80587954  7F 83 E3 78 */	mr r3, r28
/* 80587958  38 99 09 60 */	addi r4, r25, 0x960
/* 8058795C  4B AE CA 58 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80587960  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80587964  41 82 00 20 */	beq lbl_80587984
/* 80587968  C0 19 09 90 */	lfs f0, 0x990(r25)
/* 8058796C  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80587970  C0 19 09 94 */	lfs f0, 0x994(r25)
/* 80587974  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80587978  C0 19 09 98 */	lfs f0, 0x998(r25)
/* 8058797C  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80587980  48 00 00 0C */	b lbl_8058798C
lbl_80587984:
/* 80587984  38 60 00 00 */	li r3, 0
/* 80587988  48 00 00 4C */	b lbl_805879D4
lbl_8058798C:
/* 8058798C  3B 7B 00 01 */	addi r27, r27, 1
/* 80587990  2C 1B 00 02 */	cmpwi r27, 2
/* 80587994  3B FF 00 0C */	addi r31, r31, 0xc
/* 80587998  41 80 FF 74 */	blt lbl_8058790C
/* 8058799C  38 61 00 08 */	addi r3, r1, 8
/* 805879A0  38 81 00 38 */	addi r4, r1, 0x38
/* 805879A4  38 A1 00 2C */	addi r5, r1, 0x2c
/* 805879A8  4B CD F1 8C */	b __mi__4cXyzCFRC3Vec
/* 805879AC  C0 21 00 08 */	lfs f1, 8(r1)
/* 805879B0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805879B4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805879B8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805879BC  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 805879C0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 805879C4  4B CD FC B0 */	b cM_atan2s__Fff
/* 805879C8  38 03 40 00 */	addi r0, r3, 0x4000
/* 805879CC  B0 1A 00 00 */	sth r0, 0(r26)
/* 805879D0  38 60 00 01 */	li r3, 1
lbl_805879D4:
/* 805879D4  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 805879D8  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 805879DC  39 61 00 70 */	addi r11, r1, 0x70
/* 805879E0  4B DD A8 38 */	b _restgpr_25
/* 805879E4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805879E8  7C 08 03 A6 */	mtlr r0
/* 805879EC  38 21 00 80 */	addi r1, r1, 0x80
/* 805879F0  4E 80 00 20 */	blr 
