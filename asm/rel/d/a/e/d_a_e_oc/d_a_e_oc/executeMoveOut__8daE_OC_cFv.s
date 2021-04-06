lbl_807335B4:
/* 807335B4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 807335B8  7C 08 02 A6 */	mflr r0
/* 807335BC  90 01 00 64 */	stw r0, 0x64(r1)
/* 807335C0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 807335C4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 807335C8  39 61 00 50 */	addi r11, r1, 0x50
/* 807335CC  4B C2 EC 05 */	bl _savegpr_26
/* 807335D0  7C 7A 1B 78 */	mr r26, r3
/* 807335D4  3C 80 80 73 */	lis r4, lit_3911@ha /* 0x80735B28@ha */
/* 807335D8  3B C4 5B 28 */	addi r30, r4, lit_3911@l /* 0x80735B28@l */
/* 807335DC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807335E0  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807335E4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807335E8  4B 8E 71 F9 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807335EC  FF E0 08 90 */	fmr f31, f1
/* 807335F0  7F 43 D3 78 */	mr r3, r26
/* 807335F4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807335F8  4B 8E 71 19 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807335FC  7C 7D 1B 78 */	mr r29, r3
/* 80733600  38 7A 04 A8 */	addi r3, r26, 0x4a8
/* 80733604  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80733608  4B B3 D5 FD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8073360C  7C 7C 1B 78 */	mr r28, r3
/* 80733610  38 00 00 01 */	li r0, 1
/* 80733614  98 1A 06 EA */	stb r0, 0x6ea(r26)
/* 80733618  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 8073361C  B0 1A 06 D4 */	sth r0, 0x6d4(r26)
/* 80733620  80 1A 06 B0 */	lwz r0, 0x6b0(r26)
/* 80733624  2C 00 00 01 */	cmpwi r0, 1
/* 80733628  41 82 00 A0 */	beq lbl_807336C8
/* 8073362C  40 80 00 10 */	bge lbl_8073363C
/* 80733630  2C 00 00 00 */	cmpwi r0, 0
/* 80733634  40 80 00 14 */	bge lbl_80733648
/* 80733638  48 00 07 F0 */	b lbl_80733E28
lbl_8073363C:
/* 8073363C  2C 00 00 03 */	cmpwi r0, 3
/* 80733640  40 80 07 E8 */	bge lbl_80733E28
/* 80733644  48 00 02 08 */	b lbl_8073384C
lbl_80733648:
/* 80733648  88 1A 06 E3 */	lbz r0, 0x6e3(r26)
/* 8073364C  28 00 00 02 */	cmplwi r0, 2
/* 80733650  40 82 00 3C */	bne lbl_8073368C
/* 80733654  7F 43 D3 78 */	mr r3, r26
/* 80733658  38 80 00 1E */	li r4, 0x1e
/* 8073365C  4B FF AC C1 */	bl checkBck__8daE_OC_cFi
/* 80733660  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80733664  40 82 00 1C */	bne lbl_80733680
/* 80733668  7F 43 D3 78 */	mr r3, r26
/* 8073366C  38 80 00 1E */	li r4, 0x1e
/* 80733670  38 A0 00 02 */	li r5, 2
/* 80733674  C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 80733678  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8073367C  4B FF AB F9 */	bl setBck__8daE_OC_cFiUcff
lbl_80733680:
/* 80733680  38 00 00 01 */	li r0, 1
/* 80733684  90 1A 06 B0 */	stw r0, 0x6b0(r26)
/* 80733688  48 00 00 40 */	b lbl_807336C8
lbl_8073368C:
/* 8073368C  7F 43 D3 78 */	mr r3, r26
/* 80733690  38 80 00 1C */	li r4, 0x1c
/* 80733694  4B FF AC 89 */	bl checkBck__8daE_OC_cFi
/* 80733698  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8073369C  40 82 00 1C */	bne lbl_807336B8
/* 807336A0  7F 43 D3 78 */	mr r3, r26
/* 807336A4  38 80 00 1C */	li r4, 0x1c
/* 807336A8  38 A0 00 02 */	li r5, 2
/* 807336AC  C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 807336B0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807336B4  4B FF AB C1 */	bl setBck__8daE_OC_cFiUcff
lbl_807336B8:
/* 807336B8  38 00 00 1E */	li r0, 0x1e
/* 807336BC  B0 1A 06 C0 */	sth r0, 0x6c0(r26)
/* 807336C0  38 00 00 02 */	li r0, 2
/* 807336C4  90 1A 06 B0 */	stw r0, 0x6b0(r26)
lbl_807336C8:
/* 807336C8  38 7A 04 E6 */	addi r3, r26, 0x4e6
/* 807336CC  7F 84 E3 78 */	mr r4, r28
/* 807336D0  38 A0 00 04 */	li r5, 4
/* 807336D4  38 C0 08 00 */	li r6, 0x800
/* 807336D8  38 E0 01 00 */	li r7, 0x100
/* 807336DC  4B B3 CE 65 */	bl cLib_addCalcAngleS__FPsssss
/* 807336E0  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 807336E4  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 807336E8  38 7A 05 2C */	addi r3, r26, 0x52c
/* 807336EC  C0 3E 01 14 */	lfs f1, 0x114(r30)
/* 807336F0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807336F4  4B B3 D0 4D */	bl cLib_chaseF__FPfff
/* 807336F8  C0 5A 04 B0 */	lfs f2, 0x4b0(r26)
/* 807336FC  C0 1A 04 A8 */	lfs f0, 0x4a8(r26)
/* 80733700  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80733704  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80733708  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8073370C  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80733710  C0 5A 04 D8 */	lfs f2, 0x4d8(r26)
/* 80733714  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80733718  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8073371C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80733720  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80733724  38 61 00 1C */	addi r3, r1, 0x1c
/* 80733728  38 81 00 28 */	addi r4, r1, 0x28
/* 8073372C  4B C1 3C 71 */	bl PSVECSquareDistance
/* 80733730  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80733734  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80733738  40 81 00 58 */	ble lbl_80733790
/* 8073373C  FC 00 08 34 */	frsqrte f0, f1
/* 80733740  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 80733744  FC 44 00 32 */	fmul f2, f4, f0
/* 80733748  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8073374C  FC 00 00 32 */	fmul f0, f0, f0
/* 80733750  FC 01 00 32 */	fmul f0, f1, f0
/* 80733754  FC 03 00 28 */	fsub f0, f3, f0
/* 80733758  FC 02 00 32 */	fmul f0, f2, f0
/* 8073375C  FC 44 00 32 */	fmul f2, f4, f0
/* 80733760  FC 00 00 32 */	fmul f0, f0, f0
/* 80733764  FC 01 00 32 */	fmul f0, f1, f0
/* 80733768  FC 03 00 28 */	fsub f0, f3, f0
/* 8073376C  FC 02 00 32 */	fmul f0, f2, f0
/* 80733770  FC 44 00 32 */	fmul f2, f4, f0
/* 80733774  FC 00 00 32 */	fmul f0, f0, f0
/* 80733778  FC 01 00 32 */	fmul f0, f1, f0
/* 8073377C  FC 03 00 28 */	fsub f0, f3, f0
/* 80733780  FC 02 00 32 */	fmul f0, f2, f0
/* 80733784  FC 21 00 32 */	fmul f1, f1, f0
/* 80733788  FC 20 08 18 */	frsp f1, f1
/* 8073378C  48 00 00 88 */	b lbl_80733814
lbl_80733790:
/* 80733790  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 80733794  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80733798  40 80 00 10 */	bge lbl_807337A8
/* 8073379C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807337A0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807337A4  48 00 00 70 */	b lbl_80733814
lbl_807337A8:
/* 807337A8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 807337AC  80 81 00 18 */	lwz r4, 0x18(r1)
/* 807337B0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807337B4  3C 00 7F 80 */	lis r0, 0x7f80
/* 807337B8  7C 03 00 00 */	cmpw r3, r0
/* 807337BC  41 82 00 14 */	beq lbl_807337D0
/* 807337C0  40 80 00 40 */	bge lbl_80733800
/* 807337C4  2C 03 00 00 */	cmpwi r3, 0
/* 807337C8  41 82 00 20 */	beq lbl_807337E8
/* 807337CC  48 00 00 34 */	b lbl_80733800
lbl_807337D0:
/* 807337D0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807337D4  41 82 00 0C */	beq lbl_807337E0
/* 807337D8  38 00 00 01 */	li r0, 1
/* 807337DC  48 00 00 28 */	b lbl_80733804
lbl_807337E0:
/* 807337E0  38 00 00 02 */	li r0, 2
/* 807337E4  48 00 00 20 */	b lbl_80733804
lbl_807337E8:
/* 807337E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807337EC  41 82 00 0C */	beq lbl_807337F8
/* 807337F0  38 00 00 05 */	li r0, 5
/* 807337F4  48 00 00 10 */	b lbl_80733804
lbl_807337F8:
/* 807337F8  38 00 00 03 */	li r0, 3
/* 807337FC  48 00 00 08 */	b lbl_80733804
lbl_80733800:
/* 80733800  38 00 00 04 */	li r0, 4
lbl_80733804:
/* 80733804  2C 00 00 01 */	cmpwi r0, 1
/* 80733808  40 82 00 0C */	bne lbl_80733814
/* 8073380C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80733810  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80733814:
/* 80733814  C0 1A 06 90 */	lfs f0, 0x690(r26)
/* 80733818  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073381C  40 80 06 0C */	bge lbl_80733E28
/* 80733820  7F 43 D3 78 */	mr r3, r26
/* 80733824  38 80 00 1C */	li r4, 0x1c
/* 80733828  38 A0 00 02 */	li r5, 2
/* 8073382C  C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 80733830  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80733834  4B FF AA 41 */	bl setBck__8daE_OC_cFiUcff
/* 80733838  38 00 00 1E */	li r0, 0x1e
/* 8073383C  B0 1A 06 C0 */	sth r0, 0x6c0(r26)
/* 80733840  38 00 00 02 */	li r0, 2
/* 80733844  90 1A 06 B0 */	stw r0, 0x6b0(r26)
/* 80733848  48 00 05 E0 */	b lbl_80733E28
lbl_8073384C:
/* 8073384C  3B 60 00 00 */	li r27, 0
/* 80733850  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80733854  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80733858  41 80 01 08 */	blt lbl_80733960
/* 8073385C  38 7A 04 A8 */	addi r3, r26, 0x4a8
/* 80733860  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80733864  4B C1 3B 39 */	bl PSVECSquareDistance
/* 80733868  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8073386C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80733870  40 81 00 58 */	ble lbl_807338C8
/* 80733874  FC 00 08 34 */	frsqrte f0, f1
/* 80733878  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8073387C  FC 44 00 32 */	fmul f2, f4, f0
/* 80733880  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 80733884  FC 00 00 32 */	fmul f0, f0, f0
/* 80733888  FC 01 00 32 */	fmul f0, f1, f0
/* 8073388C  FC 03 00 28 */	fsub f0, f3, f0
/* 80733890  FC 02 00 32 */	fmul f0, f2, f0
/* 80733894  FC 44 00 32 */	fmul f2, f4, f0
/* 80733898  FC 00 00 32 */	fmul f0, f0, f0
/* 8073389C  FC 01 00 32 */	fmul f0, f1, f0
/* 807338A0  FC 03 00 28 */	fsub f0, f3, f0
/* 807338A4  FC 02 00 32 */	fmul f0, f2, f0
/* 807338A8  FC 44 00 32 */	fmul f2, f4, f0
/* 807338AC  FC 00 00 32 */	fmul f0, f0, f0
/* 807338B0  FC 01 00 32 */	fmul f0, f1, f0
/* 807338B4  FC 03 00 28 */	fsub f0, f3, f0
/* 807338B8  FC 02 00 32 */	fmul f0, f2, f0
/* 807338BC  FC 21 00 32 */	fmul f1, f1, f0
/* 807338C0  FC 20 08 18 */	frsp f1, f1
/* 807338C4  48 00 00 88 */	b lbl_8073394C
lbl_807338C8:
/* 807338C8  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 807338CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807338D0  40 80 00 10 */	bge lbl_807338E0
/* 807338D4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807338D8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807338DC  48 00 00 70 */	b lbl_8073394C
lbl_807338E0:
/* 807338E0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807338E4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 807338E8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807338EC  3C 00 7F 80 */	lis r0, 0x7f80
/* 807338F0  7C 03 00 00 */	cmpw r3, r0
/* 807338F4  41 82 00 14 */	beq lbl_80733908
/* 807338F8  40 80 00 40 */	bge lbl_80733938
/* 807338FC  2C 03 00 00 */	cmpwi r3, 0
/* 80733900  41 82 00 20 */	beq lbl_80733920
/* 80733904  48 00 00 34 */	b lbl_80733938
lbl_80733908:
/* 80733908  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8073390C  41 82 00 0C */	beq lbl_80733918
/* 80733910  38 00 00 01 */	li r0, 1
/* 80733914  48 00 00 28 */	b lbl_8073393C
lbl_80733918:
/* 80733918  38 00 00 02 */	li r0, 2
/* 8073391C  48 00 00 20 */	b lbl_8073393C
lbl_80733920:
/* 80733920  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80733924  41 82 00 0C */	beq lbl_80733930
/* 80733928  38 00 00 05 */	li r0, 5
/* 8073392C  48 00 00 10 */	b lbl_8073393C
lbl_80733930:
/* 80733930  38 00 00 03 */	li r0, 3
/* 80733934  48 00 00 08 */	b lbl_8073393C
lbl_80733938:
/* 80733938  38 00 00 04 */	li r0, 4
lbl_8073393C:
/* 8073393C  2C 00 00 01 */	cmpwi r0, 1
/* 80733940  40 82 00 0C */	bne lbl_8073394C
/* 80733944  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80733948  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8073394C:
/* 8073394C  C0 5E 00 9C */	lfs f2, 0x9c(r30)
/* 80733950  C0 1A 06 90 */	lfs f0, 0x690(r26)
/* 80733954  EC 02 00 2A */	fadds f0, f2, f0
/* 80733958  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073395C  40 81 00 30 */	ble lbl_8073398C
lbl_80733960:
/* 80733960  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 80733964  7C 1C 00 50 */	subf r0, r28, r0
/* 80733968  7C 03 07 34 */	extsh r3, r0
/* 8073396C  4B C3 17 65 */	bl abs
/* 80733970  2C 03 30 00 */	cmpwi r3, 0x3000
/* 80733974  40 80 00 18 */	bge lbl_8073398C
/* 80733978  3B 60 00 01 */	li r27, 1
/* 8073397C  38 7A 05 2C */	addi r3, r26, 0x52c
/* 80733980  C0 3E 01 14 */	lfs f1, 0x114(r30)
/* 80733984  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80733988  4B B3 CD B9 */	bl cLib_chaseF__FPfff
lbl_8073398C:
/* 8073398C  2C 1B 00 00 */	cmpwi r27, 0
/* 80733990  40 82 00 54 */	bne lbl_807339E4
/* 80733994  38 7A 05 2C */	addi r3, r26, 0x52c
/* 80733998  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8073399C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807339A0  4B B3 CD A1 */	bl cLib_chaseF__FPfff
/* 807339A4  C0 3A 05 2C */	lfs f1, 0x52c(r26)
/* 807339A8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807339AC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807339B0  40 82 01 88 */	bne lbl_80733B38
/* 807339B4  7F 43 D3 78 */	mr r3, r26
/* 807339B8  38 80 00 1C */	li r4, 0x1c
/* 807339BC  4B FF A9 61 */	bl checkBck__8daE_OC_cFi
/* 807339C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807339C4  40 82 01 74 */	bne lbl_80733B38
/* 807339C8  7F 43 D3 78 */	mr r3, r26
/* 807339CC  38 80 00 1C */	li r4, 0x1c
/* 807339D0  38 A0 00 02 */	li r5, 2
/* 807339D4  C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 807339D8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807339DC  4B FF A8 99 */	bl setBck__8daE_OC_cFiUcff
/* 807339E0  48 00 01 58 */	b lbl_80733B38
lbl_807339E4:
/* 807339E4  7F 43 D3 78 */	mr r3, r26
/* 807339E8  38 80 00 1E */	li r4, 0x1e
/* 807339EC  4B FF A9 31 */	bl checkBck__8daE_OC_cFi
/* 807339F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807339F4  40 82 00 1C */	bne lbl_80733A10
/* 807339F8  7F 43 D3 78 */	mr r3, r26
/* 807339FC  38 80 00 1E */	li r4, 0x1e
/* 80733A00  38 A0 00 02 */	li r5, 2
/* 80733A04  C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 80733A08  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80733A0C  4B FF A8 69 */	bl setBck__8daE_OC_cFiUcff
lbl_80733A10:
/* 80733A10  38 7A 05 2C */	addi r3, r26, 0x52c
/* 80733A14  C0 3E 01 14 */	lfs f1, 0x114(r30)
/* 80733A18  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80733A1C  4B B3 CD 25 */	bl cLib_chaseF__FPfff
/* 80733A20  38 7A 04 A8 */	addi r3, r26, 0x4a8
/* 80733A24  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80733A28  4B C1 39 75 */	bl PSVECSquareDistance
/* 80733A2C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80733A30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80733A34  40 81 00 58 */	ble lbl_80733A8C
/* 80733A38  FC 00 08 34 */	frsqrte f0, f1
/* 80733A3C  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 80733A40  FC 44 00 32 */	fmul f2, f4, f0
/* 80733A44  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 80733A48  FC 00 00 32 */	fmul f0, f0, f0
/* 80733A4C  FC 01 00 32 */	fmul f0, f1, f0
/* 80733A50  FC 03 00 28 */	fsub f0, f3, f0
/* 80733A54  FC 02 00 32 */	fmul f0, f2, f0
/* 80733A58  FC 44 00 32 */	fmul f2, f4, f0
/* 80733A5C  FC 00 00 32 */	fmul f0, f0, f0
/* 80733A60  FC 01 00 32 */	fmul f0, f1, f0
/* 80733A64  FC 03 00 28 */	fsub f0, f3, f0
/* 80733A68  FC 02 00 32 */	fmul f0, f2, f0
/* 80733A6C  FC 44 00 32 */	fmul f2, f4, f0
/* 80733A70  FC 00 00 32 */	fmul f0, f0, f0
/* 80733A74  FC 01 00 32 */	fmul f0, f1, f0
/* 80733A78  FC 03 00 28 */	fsub f0, f3, f0
/* 80733A7C  FC 02 00 32 */	fmul f0, f2, f0
/* 80733A80  FC 21 00 32 */	fmul f1, f1, f0
/* 80733A84  FC 20 08 18 */	frsp f1, f1
/* 80733A88  48 00 00 88 */	b lbl_80733B10
lbl_80733A8C:
/* 80733A8C  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 80733A90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80733A94  40 80 00 10 */	bge lbl_80733AA4
/* 80733A98  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80733A9C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80733AA0  48 00 00 70 */	b lbl_80733B10
lbl_80733AA4:
/* 80733AA4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80733AA8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80733AAC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80733AB0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80733AB4  7C 03 00 00 */	cmpw r3, r0
/* 80733AB8  41 82 00 14 */	beq lbl_80733ACC
/* 80733ABC  40 80 00 40 */	bge lbl_80733AFC
/* 80733AC0  2C 03 00 00 */	cmpwi r3, 0
/* 80733AC4  41 82 00 20 */	beq lbl_80733AE4
/* 80733AC8  48 00 00 34 */	b lbl_80733AFC
lbl_80733ACC:
/* 80733ACC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80733AD0  41 82 00 0C */	beq lbl_80733ADC
/* 80733AD4  38 00 00 01 */	li r0, 1
/* 80733AD8  48 00 00 28 */	b lbl_80733B00
lbl_80733ADC:
/* 80733ADC  38 00 00 02 */	li r0, 2
/* 80733AE0  48 00 00 20 */	b lbl_80733B00
lbl_80733AE4:
/* 80733AE4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80733AE8  41 82 00 0C */	beq lbl_80733AF4
/* 80733AEC  38 00 00 05 */	li r0, 5
/* 80733AF0  48 00 00 10 */	b lbl_80733B00
lbl_80733AF4:
/* 80733AF4  38 00 00 03 */	li r0, 3
/* 80733AF8  48 00 00 08 */	b lbl_80733B00
lbl_80733AFC:
/* 80733AFC  38 00 00 04 */	li r0, 4
lbl_80733B00:
/* 80733B00  2C 00 00 01 */	cmpwi r0, 1
/* 80733B04  40 82 00 0C */	bne lbl_80733B10
/* 80733B08  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80733B0C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80733B10:
/* 80733B10  C0 5A 06 90 */	lfs f2, 0x690(r26)
/* 80733B14  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80733B18  EC 02 00 28 */	fsubs f0, f2, f0
/* 80733B1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80733B20  40 80 00 18 */	bge lbl_80733B38
/* 80733B24  7F 43 D3 78 */	mr r3, r26
/* 80733B28  38 80 00 03 */	li r4, 3
/* 80733B2C  38 A0 00 00 */	li r5, 0
/* 80733B30  4B FF A1 8D */	bl setActionMode__8daE_OC_cFii
/* 80733B34  48 00 02 F4 */	b lbl_80733E28
lbl_80733B38:
/* 80733B38  A8 7A 04 E6 */	lha r3, 0x4e6(r26)
/* 80733B3C  7F A4 EB 78 */	mr r4, r29
/* 80733B40  4B B3 D2 E5 */	bl cLib_distanceAngleS__Fss
/* 80733B44  7C 60 07 34 */	extsh r0, r3
/* 80733B48  2C 00 04 00 */	cmpwi r0, 0x400
/* 80733B4C  41 80 00 1C */	blt lbl_80733B68
/* 80733B50  38 7A 04 E6 */	addi r3, r26, 0x4e6
/* 80733B54  7F A4 EB 78 */	mr r4, r29
/* 80733B58  38 A0 00 04 */	li r5, 4
/* 80733B5C  38 C0 08 00 */	li r6, 0x800
/* 80733B60  38 E0 01 00 */	li r7, 0x100
/* 80733B64  4B B3 C9 DD */	bl cLib_addCalcAngleS__FPsssss
lbl_80733B68:
/* 80733B68  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 80733B6C  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 80733B70  A8 1A 06 C0 */	lha r0, 0x6c0(r26)
/* 80733B74  2C 00 00 00 */	cmpwi r0, 0
/* 80733B78  40 82 02 B0 */	bne lbl_80733E28
/* 80733B7C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80733B80  38 7A 04 A8 */	addi r3, r26, 0x4a8
/* 80733B84  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80733B88  4B C1 38 15 */	bl PSVECSquareDistance
/* 80733B8C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80733B90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80733B94  40 81 00 58 */	ble lbl_80733BEC
/* 80733B98  FC 00 08 34 */	frsqrte f0, f1
/* 80733B9C  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 80733BA0  FC 44 00 32 */	fmul f2, f4, f0
/* 80733BA4  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 80733BA8  FC 00 00 32 */	fmul f0, f0, f0
/* 80733BAC  FC 01 00 32 */	fmul f0, f1, f0
/* 80733BB0  FC 03 00 28 */	fsub f0, f3, f0
/* 80733BB4  FC 02 00 32 */	fmul f0, f2, f0
/* 80733BB8  FC 44 00 32 */	fmul f2, f4, f0
/* 80733BBC  FC 00 00 32 */	fmul f0, f0, f0
/* 80733BC0  FC 01 00 32 */	fmul f0, f1, f0
/* 80733BC4  FC 03 00 28 */	fsub f0, f3, f0
/* 80733BC8  FC 02 00 32 */	fmul f0, f2, f0
/* 80733BCC  FC 44 00 32 */	fmul f2, f4, f0
/* 80733BD0  FC 00 00 32 */	fmul f0, f0, f0
/* 80733BD4  FC 01 00 32 */	fmul f0, f1, f0
/* 80733BD8  FC 03 00 28 */	fsub f0, f3, f0
/* 80733BDC  FC 02 00 32 */	fmul f0, f2, f0
/* 80733BE0  FC 21 00 32 */	fmul f1, f1, f0
/* 80733BE4  FC 20 08 18 */	frsp f1, f1
/* 80733BE8  48 00 00 88 */	b lbl_80733C70
lbl_80733BEC:
/* 80733BEC  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 80733BF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80733BF4  40 80 00 10 */	bge lbl_80733C04
/* 80733BF8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80733BFC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80733C00  48 00 00 70 */	b lbl_80733C70
lbl_80733C04:
/* 80733C04  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80733C08  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80733C0C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80733C10  3C 00 7F 80 */	lis r0, 0x7f80
/* 80733C14  7C 03 00 00 */	cmpw r3, r0
/* 80733C18  41 82 00 14 */	beq lbl_80733C2C
/* 80733C1C  40 80 00 40 */	bge lbl_80733C5C
/* 80733C20  2C 03 00 00 */	cmpwi r3, 0
/* 80733C24  41 82 00 20 */	beq lbl_80733C44
/* 80733C28  48 00 00 34 */	b lbl_80733C5C
lbl_80733C2C:
/* 80733C2C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80733C30  41 82 00 0C */	beq lbl_80733C3C
/* 80733C34  38 00 00 01 */	li r0, 1
/* 80733C38  48 00 00 28 */	b lbl_80733C60
lbl_80733C3C:
/* 80733C3C  38 00 00 02 */	li r0, 2
/* 80733C40  48 00 00 20 */	b lbl_80733C60
lbl_80733C44:
/* 80733C44  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80733C48  41 82 00 0C */	beq lbl_80733C54
/* 80733C4C  38 00 00 05 */	li r0, 5
/* 80733C50  48 00 00 10 */	b lbl_80733C60
lbl_80733C54:
/* 80733C54  38 00 00 03 */	li r0, 3
/* 80733C58  48 00 00 08 */	b lbl_80733C60
lbl_80733C5C:
/* 80733C5C  38 00 00 04 */	li r0, 4
lbl_80733C60:
/* 80733C60  2C 00 00 01 */	cmpwi r0, 1
/* 80733C64  40 82 00 0C */	bne lbl_80733C70
/* 80733C68  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80733C6C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80733C70:
/* 80733C70  C0 5A 06 90 */	lfs f2, 0x690(r26)
/* 80733C74  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80733C78  EC 02 00 28 */	fsubs f0, f2, f0
/* 80733C7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80733C80  40 80 00 18 */	bge lbl_80733C98
/* 80733C84  7F 43 D3 78 */	mr r3, r26
/* 80733C88  38 80 00 03 */	li r4, 3
/* 80733C8C  38 A0 00 00 */	li r5, 0
/* 80733C90  4B FF A0 2D */	bl setActionMode__8daE_OC_cFii
/* 80733C94  48 00 01 94 */	b lbl_80733E28
lbl_80733C98:
/* 80733C98  3C 60 80 73 */	lis r3, l_HIO@ha /* 0x80736060@ha */
/* 80733C9C  38 63 60 60 */	addi r3, r3, l_HIO@l /* 0x80736060@l */
/* 80733CA0  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80733CA4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80733CA8  40 81 01 20 */	ble lbl_80733DC8
/* 80733CAC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80733CB0  38 7A 04 A8 */	addi r3, r26, 0x4a8
/* 80733CB4  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80733CB8  4B C1 36 E5 */	bl PSVECSquareDistance
/* 80733CBC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80733CC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80733CC4  40 81 00 58 */	ble lbl_80733D1C
/* 80733CC8  FC 00 08 34 */	frsqrte f0, f1
/* 80733CCC  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 80733CD0  FC 44 00 32 */	fmul f2, f4, f0
/* 80733CD4  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 80733CD8  FC 00 00 32 */	fmul f0, f0, f0
/* 80733CDC  FC 01 00 32 */	fmul f0, f1, f0
/* 80733CE0  FC 03 00 28 */	fsub f0, f3, f0
/* 80733CE4  FC 02 00 32 */	fmul f0, f2, f0
/* 80733CE8  FC 44 00 32 */	fmul f2, f4, f0
/* 80733CEC  FC 00 00 32 */	fmul f0, f0, f0
/* 80733CF0  FC 01 00 32 */	fmul f0, f1, f0
/* 80733CF4  FC 03 00 28 */	fsub f0, f3, f0
/* 80733CF8  FC 02 00 32 */	fmul f0, f2, f0
/* 80733CFC  FC 44 00 32 */	fmul f2, f4, f0
/* 80733D00  FC 00 00 32 */	fmul f0, f0, f0
/* 80733D04  FC 01 00 32 */	fmul f0, f1, f0
/* 80733D08  FC 03 00 28 */	fsub f0, f3, f0
/* 80733D0C  FC 02 00 32 */	fmul f0, f2, f0
/* 80733D10  FC 21 00 32 */	fmul f1, f1, f0
/* 80733D14  FC 20 08 18 */	frsp f1, f1
/* 80733D18  48 00 00 88 */	b lbl_80733DA0
lbl_80733D1C:
/* 80733D1C  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 80733D20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80733D24  40 80 00 10 */	bge lbl_80733D34
/* 80733D28  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80733D2C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80733D30  48 00 00 70 */	b lbl_80733DA0
lbl_80733D34:
/* 80733D34  D0 21 00 08 */	stfs f1, 8(r1)
/* 80733D38  80 81 00 08 */	lwz r4, 8(r1)
/* 80733D3C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80733D40  3C 00 7F 80 */	lis r0, 0x7f80
/* 80733D44  7C 03 00 00 */	cmpw r3, r0
/* 80733D48  41 82 00 14 */	beq lbl_80733D5C
/* 80733D4C  40 80 00 40 */	bge lbl_80733D8C
/* 80733D50  2C 03 00 00 */	cmpwi r3, 0
/* 80733D54  41 82 00 20 */	beq lbl_80733D74
/* 80733D58  48 00 00 34 */	b lbl_80733D8C
lbl_80733D5C:
/* 80733D5C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80733D60  41 82 00 0C */	beq lbl_80733D6C
/* 80733D64  38 00 00 01 */	li r0, 1
/* 80733D68  48 00 00 28 */	b lbl_80733D90
lbl_80733D6C:
/* 80733D6C  38 00 00 02 */	li r0, 2
/* 80733D70  48 00 00 20 */	b lbl_80733D90
lbl_80733D74:
/* 80733D74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80733D78  41 82 00 0C */	beq lbl_80733D84
/* 80733D7C  38 00 00 05 */	li r0, 5
/* 80733D80  48 00 00 10 */	b lbl_80733D90
lbl_80733D84:
/* 80733D84  38 00 00 03 */	li r0, 3
/* 80733D88  48 00 00 08 */	b lbl_80733D90
lbl_80733D8C:
/* 80733D8C  38 00 00 04 */	li r0, 4
lbl_80733D90:
/* 80733D90  2C 00 00 01 */	cmpwi r0, 1
/* 80733D94  40 82 00 0C */	bne lbl_80733DA0
/* 80733D98  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80733D9C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80733DA0:
/* 80733DA0  C0 5E 00 9C */	lfs f2, 0x9c(r30)
/* 80733DA4  C0 1A 06 90 */	lfs f0, 0x690(r26)
/* 80733DA8  EC 02 00 2A */	fadds f0, f2, f0
/* 80733DAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80733DB0  40 81 00 18 */	ble lbl_80733DC8
/* 80733DB4  7F 43 D3 78 */	mr r3, r26
/* 80733DB8  38 80 00 00 */	li r4, 0
/* 80733DBC  38 A0 00 00 */	li r5, 0
/* 80733DC0  4B FF 9E FD */	bl setActionMode__8daE_OC_cFii
/* 80733DC4  48 00 00 64 */	b lbl_80733E28
lbl_80733DC8:
/* 80733DC8  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80733DCC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80733DD0  40 80 00 58 */	bge lbl_80733E28
/* 80733DD4  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80733DD8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80733DDC  40 81 00 4C */	ble lbl_80733E28
/* 80733DE0  7F 43 D3 78 */	mr r3, r26
/* 80733DE4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80733DE8  4B 8E 69 29 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80733DEC  7C 63 07 34 */	extsh r3, r3
/* 80733DF0  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 80733DF4  7C 63 00 50 */	subf r3, r3, r0
/* 80733DF8  4B C3 12 D9 */	bl abs
/* 80733DFC  2C 03 10 00 */	cmpwi r3, 0x1000
/* 80733E00  40 80 00 28 */	bge lbl_80733E28
/* 80733E04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80733E08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80733E0C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80733E10  28 00 00 00 */	cmplwi r0, 0
/* 80733E14  40 82 00 14 */	bne lbl_80733E28
/* 80733E18  7F 43 D3 78 */	mr r3, r26
/* 80733E1C  38 80 00 04 */	li r4, 4
/* 80733E20  38 A0 00 00 */	li r5, 0
/* 80733E24  4B FF 9E 99 */	bl setActionMode__8daE_OC_cFii
lbl_80733E28:
/* 80733E28  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80733E2C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80733E30  39 61 00 50 */	addi r11, r1, 0x50
/* 80733E34  4B C2 E3 E9 */	bl _restgpr_26
/* 80733E38  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80733E3C  7C 08 03 A6 */	mtlr r0
/* 80733E40  38 21 00 60 */	addi r1, r1, 0x60
/* 80733E44  4E 80 00 20 */	blr 
