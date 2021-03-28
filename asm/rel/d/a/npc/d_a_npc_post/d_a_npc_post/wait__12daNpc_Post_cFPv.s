lbl_80AAB61C:
/* 80AAB61C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80AAB620  7C 08 02 A6 */	mflr r0
/* 80AAB624  90 01 00 74 */	stw r0, 0x74(r1)
/* 80AAB628  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80AAB62C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80AAB630  39 61 00 60 */	addi r11, r1, 0x60
/* 80AAB634  4B 8B 6B 94 */	b _savegpr_24
/* 80AAB638  7C 79 1B 78 */	mr r25, r3
/* 80AAB63C  3C 60 80 AB */	lis r3, m__18daNpc_Post_Param_c@ha
/* 80AAB640  3B 83 D1 EC */	addi r28, r3, m__18daNpc_Post_Param_c@l
/* 80AAB644  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AAB648  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80AAB64C  83 7D 5D AC */	lwz r27, 0x5dac(r29)
/* 80AAB650  38 7C 00 00 */	addi r3, r28, 0
/* 80AAB654  A8 03 00 90 */	lha r0, 0x90(r3)
/* 80AAB658  C8 3C 01 00 */	lfd f1, 0x100(r28)
/* 80AAB65C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AAB660  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AAB664  3C 00 43 30 */	lis r0, 0x4330
/* 80AAB668  90 01 00 30 */	stw r0, 0x30(r1)
/* 80AAB66C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80AAB670  EF E0 08 28 */	fsubs f31, f0, f1
/* 80AAB674  A0 19 0E 22 */	lhz r0, 0xe22(r25)
/* 80AAB678  2C 00 00 02 */	cmpwi r0, 2
/* 80AAB67C  41 82 01 10 */	beq lbl_80AAB78C
/* 80AAB680  40 80 05 80 */	bge lbl_80AABC00
/* 80AAB684  2C 00 00 00 */	cmpwi r0, 0
/* 80AAB688  40 80 00 0C */	bge lbl_80AAB694
/* 80AAB68C  48 00 05 74 */	b lbl_80AABC00
/* 80AAB690  48 00 05 70 */	b lbl_80AABC00
lbl_80AAB694:
/* 80AAB694  A8 19 0D 1C */	lha r0, 0xd1c(r25)
/* 80AAB698  2C 00 00 00 */	cmpwi r0, 0
/* 80AAB69C  40 82 00 F0 */	bne lbl_80AAB78C
/* 80AAB6A0  88 19 10 13 */	lbz r0, 0x1013(r25)
/* 80AAB6A4  28 00 00 00 */	cmplwi r0, 0
/* 80AAB6A8  41 82 00 84 */	beq lbl_80AAB72C
/* 80AAB6AC  80 19 0B 58 */	lwz r0, 0xb58(r25)
/* 80AAB6B0  2C 00 00 0E */	cmpwi r0, 0xe
/* 80AAB6B4  41 82 00 24 */	beq lbl_80AAB6D8
/* 80AAB6B8  83 19 0B 5C */	lwz r24, 0xb5c(r25)
/* 80AAB6BC  38 79 0B 50 */	addi r3, r25, 0xb50
/* 80AAB6C0  4B 69 A1 D8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AAB6C4  93 19 0B 5C */	stw r24, 0xb5c(r25)
/* 80AAB6C8  38 00 00 0E */	li r0, 0xe
/* 80AAB6CC  90 19 0B 58 */	stw r0, 0xb58(r25)
/* 80AAB6D0  C0 1C 00 D4 */	lfs f0, 0xd4(r28)
/* 80AAB6D4  D0 19 0B 68 */	stfs f0, 0xb68(r25)
lbl_80AAB6D8:
/* 80AAB6D8  80 19 0B 7C */	lwz r0, 0xb7c(r25)
/* 80AAB6DC  2C 00 00 06 */	cmpwi r0, 6
/* 80AAB6E0  41 82 00 24 */	beq lbl_80AAB704
/* 80AAB6E4  83 19 0B 80 */	lwz r24, 0xb80(r25)
/* 80AAB6E8  38 79 0B 74 */	addi r3, r25, 0xb74
/* 80AAB6EC  4B 69 A1 AC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AAB6F0  93 19 0B 80 */	stw r24, 0xb80(r25)
/* 80AAB6F4  38 00 00 06 */	li r0, 6
/* 80AAB6F8  90 19 0B 7C */	stw r0, 0xb7c(r25)
/* 80AAB6FC  C0 1C 00 D4 */	lfs f0, 0xd4(r28)
/* 80AAB700  D0 19 0B 8C */	stfs f0, 0xb8c(r25)
lbl_80AAB704:
/* 80AAB704  C0 1C 01 58 */	lfs f0, 0x158(r28)
/* 80AAB708  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80AAB70C  C0 1C 01 4C */	lfs f0, 0x14c(r28)
/* 80AAB710  EC 40 07 F2 */	fmuls f2, f0, f31
/* 80AAB714  48 00 18 19 */	bl func_80AACF2C
/* 80AAB718  FC 00 08 1E */	fctiwz f0, f1
/* 80AAB71C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80AAB720  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AAB724  90 19 10 0C */	stw r0, 0x100c(r25)
/* 80AAB728  48 00 00 5C */	b lbl_80AAB784
lbl_80AAB72C:
/* 80AAB72C  80 19 0B 58 */	lwz r0, 0xb58(r25)
/* 80AAB730  2C 00 00 0E */	cmpwi r0, 0xe
/* 80AAB734  41 82 00 24 */	beq lbl_80AAB758
/* 80AAB738  83 19 0B 5C */	lwz r24, 0xb5c(r25)
/* 80AAB73C  38 79 0B 50 */	addi r3, r25, 0xb50
/* 80AAB740  4B 69 A1 58 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AAB744  93 19 0B 5C */	stw r24, 0xb5c(r25)
/* 80AAB748  38 00 00 0E */	li r0, 0xe
/* 80AAB74C  90 19 0B 58 */	stw r0, 0xb58(r25)
/* 80AAB750  C0 1C 00 D4 */	lfs f0, 0xd4(r28)
/* 80AAB754  D0 19 0B 68 */	stfs f0, 0xb68(r25)
lbl_80AAB758:
/* 80AAB758  80 19 0B 7C */	lwz r0, 0xb7c(r25)
/* 80AAB75C  2C 00 00 00 */	cmpwi r0, 0
/* 80AAB760  41 82 00 24 */	beq lbl_80AAB784
/* 80AAB764  83 19 0B 80 */	lwz r24, 0xb80(r25)
/* 80AAB768  38 79 0B 74 */	addi r3, r25, 0xb74
/* 80AAB76C  4B 69 A1 2C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AAB770  93 19 0B 80 */	stw r24, 0xb80(r25)
/* 80AAB774  38 00 00 00 */	li r0, 0
/* 80AAB778  90 19 0B 7C */	stw r0, 0xb7c(r25)
/* 80AAB77C  C0 1C 00 D4 */	lfs f0, 0xd4(r28)
/* 80AAB780  D0 19 0B 8C */	stfs f0, 0xb8c(r25)
lbl_80AAB784:
/* 80AAB784  38 00 00 02 */	li r0, 2
/* 80AAB788  B0 19 0E 22 */	sth r0, 0xe22(r25)
lbl_80AAB78C:
/* 80AAB78C  88 19 0F 8C */	lbz r0, 0xf8c(r25)
/* 80AAB790  28 00 00 01 */	cmplwi r0, 1
/* 80AAB794  40 82 02 60 */	bne lbl_80AAB9F4
/* 80AAB798  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AAB79C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80AAB7A0  80 7E 5D B4 */	lwz r3, 0x5db4(r30)
/* 80AAB7A4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80AAB7A8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80AAB7AC  41 82 00 14 */	beq lbl_80AAB7C0
/* 80AAB7B0  38 60 00 6E */	li r3, 0x6e
/* 80AAB7B4  4B 6A 12 F8 */	b daNpcT_chkEvtBit__FUl
/* 80AAB7B8  2C 03 00 00 */	cmpwi r3, 0
/* 80AAB7BC  41 82 02 38 */	beq lbl_80AAB9F4
lbl_80AAB7C0:
/* 80AAB7C0  3B 40 00 00 */	li r26, 0
/* 80AAB7C4  3B 00 00 00 */	li r24, 0
lbl_80AAB7C8:
/* 80AAB7C8  38 78 0F 90 */	addi r3, r24, 0xf90
/* 80AAB7CC  7C 79 1A 14 */	add r3, r25, r3
/* 80AAB7D0  4B 69 9F 38 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80AAB7D4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AAB7D8  41 82 02 0C */	beq lbl_80AAB9E4
/* 80AAB7DC  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80AAB7E0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80AAB7E4  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80AAB7E8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AAB7EC  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80AAB7F0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80AAB7F4  38 81 00 24 */	addi r4, r1, 0x24
/* 80AAB7F8  48 00 19 81 */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz
/* 80AAB7FC  2C 03 00 00 */	cmpwi r3, 0
/* 80AAB800  41 82 01 E4 */	beq lbl_80AAB9E4
/* 80AAB804  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80AAB808  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80AAB80C  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 80AAB810  7D 89 03 A6 */	mtctr r12
/* 80AAB814  4E 80 04 21 */	bctrl 
/* 80AAB818  28 03 00 00 */	cmplwi r3, 0
/* 80AAB81C  41 82 00 10 */	beq lbl_80AAB82C
/* 80AAB820  38 00 00 01 */	li r0, 1
/* 80AAB824  98 1F 05 6C */	stb r0, 0x56c(r31)
/* 80AAB828  48 00 01 BC */	b lbl_80AAB9E4
lbl_80AAB82C:
/* 80AAB82C  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80AAB830  A0 03 00 FA */	lhz r0, 0xfa(r3)
/* 80AAB834  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80AAB838  41 82 01 AC */	beq lbl_80AAB9E4
/* 80AAB83C  4B 77 2F 18 */	b dMeter2Info_getNewLetterNum__Fv
/* 80AAB840  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AAB844  41 82 01 A0 */	beq lbl_80AAB9E4
/* 80AAB848  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80AAB84C  D0 19 0F F0 */	stfs f0, 0xff0(r25)
/* 80AAB850  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80AAB854  D0 19 0F F4 */	stfs f0, 0xff4(r25)
/* 80AAB858  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80AAB85C  D0 19 0F F8 */	stfs f0, 0xff8(r25)
/* 80AAB860  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 80AAB864  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80AAB868  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AAB86C  C0 3C 00 B4 */	lfs f1, 0xb4(r28)
/* 80AAB870  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80AAB874  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80AAB878  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80AAB87C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80AAB880  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AAB884  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80AAB888  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80AAB88C  38 61 00 0C */	addi r3, r1, 0xc
/* 80AAB890  38 81 00 18 */	addi r4, r1, 0x18
/* 80AAB894  4B 89 BB 08 */	b PSVECSquareDistance
/* 80AAB898  C0 1C 00 B4 */	lfs f0, 0xb4(r28)
/* 80AAB89C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AAB8A0  40 81 00 58 */	ble lbl_80AAB8F8
/* 80AAB8A4  FC 00 08 34 */	frsqrte f0, f1
/* 80AAB8A8  C8 9C 01 08 */	lfd f4, 0x108(r28)
/* 80AAB8AC  FC 44 00 32 */	fmul f2, f4, f0
/* 80AAB8B0  C8 7C 01 10 */	lfd f3, 0x110(r28)
/* 80AAB8B4  FC 00 00 32 */	fmul f0, f0, f0
/* 80AAB8B8  FC 01 00 32 */	fmul f0, f1, f0
/* 80AAB8BC  FC 03 00 28 */	fsub f0, f3, f0
/* 80AAB8C0  FC 02 00 32 */	fmul f0, f2, f0
/* 80AAB8C4  FC 44 00 32 */	fmul f2, f4, f0
/* 80AAB8C8  FC 00 00 32 */	fmul f0, f0, f0
/* 80AAB8CC  FC 01 00 32 */	fmul f0, f1, f0
/* 80AAB8D0  FC 03 00 28 */	fsub f0, f3, f0
/* 80AAB8D4  FC 02 00 32 */	fmul f0, f2, f0
/* 80AAB8D8  FC 44 00 32 */	fmul f2, f4, f0
/* 80AAB8DC  FC 00 00 32 */	fmul f0, f0, f0
/* 80AAB8E0  FC 01 00 32 */	fmul f0, f1, f0
/* 80AAB8E4  FC 03 00 28 */	fsub f0, f3, f0
/* 80AAB8E8  FC 02 00 32 */	fmul f0, f2, f0
/* 80AAB8EC  FC 21 00 32 */	fmul f1, f1, f0
/* 80AAB8F0  FC 20 08 18 */	frsp f1, f1
/* 80AAB8F4  48 00 00 88 */	b lbl_80AAB97C
lbl_80AAB8F8:
/* 80AAB8F8  C8 1C 01 18 */	lfd f0, 0x118(r28)
/* 80AAB8FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AAB900  40 80 00 10 */	bge lbl_80AAB910
/* 80AAB904  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80AAB908  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80AAB90C  48 00 00 70 */	b lbl_80AAB97C
lbl_80AAB910:
/* 80AAB910  D0 21 00 08 */	stfs f1, 8(r1)
/* 80AAB914  80 81 00 08 */	lwz r4, 8(r1)
/* 80AAB918  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80AAB91C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80AAB920  7C 03 00 00 */	cmpw r3, r0
/* 80AAB924  41 82 00 14 */	beq lbl_80AAB938
/* 80AAB928  40 80 00 40 */	bge lbl_80AAB968
/* 80AAB92C  2C 03 00 00 */	cmpwi r3, 0
/* 80AAB930  41 82 00 20 */	beq lbl_80AAB950
/* 80AAB934  48 00 00 34 */	b lbl_80AAB968
lbl_80AAB938:
/* 80AAB938  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AAB93C  41 82 00 0C */	beq lbl_80AAB948
/* 80AAB940  38 00 00 01 */	li r0, 1
/* 80AAB944  48 00 00 28 */	b lbl_80AAB96C
lbl_80AAB948:
/* 80AAB948  38 00 00 02 */	li r0, 2
/* 80AAB94C  48 00 00 20 */	b lbl_80AAB96C
lbl_80AAB950:
/* 80AAB950  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AAB954  41 82 00 0C */	beq lbl_80AAB960
/* 80AAB958  38 00 00 05 */	li r0, 5
/* 80AAB95C  48 00 00 10 */	b lbl_80AAB96C
lbl_80AAB960:
/* 80AAB960  38 00 00 03 */	li r0, 3
/* 80AAB964  48 00 00 08 */	b lbl_80AAB96C
lbl_80AAB968:
/* 80AAB968  38 00 00 04 */	li r0, 4
lbl_80AAB96C:
/* 80AAB96C  2C 00 00 01 */	cmpwi r0, 1
/* 80AAB970  40 82 00 0C */	bne lbl_80AAB97C
/* 80AAB974  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80AAB978  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80AAB97C:
/* 80AAB97C  C0 5F 04 EC */	lfs f2, 0x4ec(r31)
/* 80AAB980  C0 1C 01 5C */	lfs f0, 0x15c(r28)
/* 80AAB984  EC 02 00 28 */	fsubs f0, f2, f0
/* 80AAB988  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80AAB98C  4C 40 13 82 */	cror 2, 0, 2
/* 80AAB990  40 82 00 54 */	bne lbl_80AAB9E4
/* 80AAB994  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80AAB998  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80AAB99C  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80AAB9A0  7D 89 03 A6 */	mtctr r12
/* 80AAB9A4  4E 80 04 21 */	bctrl 
/* 80AAB9A8  28 03 00 00 */	cmplwi r3, 0
/* 80AAB9AC  41 82 00 10 */	beq lbl_80AAB9BC
/* 80AAB9B0  38 00 00 03 */	li r0, 3
/* 80AAB9B4  B0 19 0E 30 */	sth r0, 0xe30(r25)
/* 80AAB9B8  48 00 00 3C */	b lbl_80AAB9F4
lbl_80AAB9BC:
/* 80AAB9BC  80 7E 5D B4 */	lwz r3, 0x5db4(r30)
/* 80AAB9C0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80AAB9C4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80AAB9C8  41 82 00 10 */	beq lbl_80AAB9D8
/* 80AAB9CC  38 00 00 04 */	li r0, 4
/* 80AAB9D0  B0 19 0E 30 */	sth r0, 0xe30(r25)
/* 80AAB9D4  48 00 00 20 */	b lbl_80AAB9F4
lbl_80AAB9D8:
/* 80AAB9D8  38 00 00 02 */	li r0, 2
/* 80AAB9DC  B0 19 0E 30 */	sth r0, 0xe30(r25)
/* 80AAB9E0  48 00 00 14 */	b lbl_80AAB9F4
lbl_80AAB9E4:
/* 80AAB9E4  3B 5A 00 01 */	addi r26, r26, 1
/* 80AAB9E8  2C 1A 00 04 */	cmpwi r26, 4
/* 80AAB9EC  3B 18 00 08 */	addi r24, r24, 8
/* 80AAB9F0  41 80 FD D8 */	blt lbl_80AAB7C8
lbl_80AAB9F4:
/* 80AAB9F4  A8 19 0D 1C */	lha r0, 0xd1c(r25)
/* 80AAB9F8  2C 00 00 00 */	cmpwi r0, 0
/* 80AAB9FC  40 82 02 04 */	bne lbl_80AABC00
/* 80AABA00  88 19 10 13 */	lbz r0, 0x1013(r25)
/* 80AABA04  28 00 00 00 */	cmplwi r0, 0
/* 80AABA08  41 82 00 0C */	beq lbl_80AABA14
/* 80AABA0C  38 79 0B 98 */	addi r3, r25, 0xb98
/* 80AABA10  4B 69 9C EC */	b remove__18daNpcT_ActorMngr_cFv
lbl_80AABA14:
/* 80AABA14  38 79 0B 98 */	addi r3, r25, 0xb98
/* 80AABA18  4B 69 9C F0 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80AABA1C  28 03 00 00 */	cmplwi r3, 0
/* 80AABA20  41 82 00 CC */	beq lbl_80AABAEC
/* 80AABA24  88 19 0A 89 */	lbz r0, 0xa89(r25)
/* 80AABA28  28 00 00 00 */	cmplwi r0, 0
/* 80AABA2C  40 82 00 C0 */	bne lbl_80AABAEC
/* 80AABA30  80 19 0C E0 */	lwz r0, 0xce0(r25)
/* 80AABA34  2C 00 00 01 */	cmpwi r0, 1
/* 80AABA38  41 82 00 28 */	beq lbl_80AABA60
/* 80AABA3C  38 79 0B A8 */	addi r3, r25, 0xba8
/* 80AABA40  4B 69 9C BC */	b remove__18daNpcT_ActorMngr_cFv
/* 80AABA44  38 00 00 00 */	li r0, 0
/* 80AABA48  90 19 0B C8 */	stw r0, 0xbc8(r25)
/* 80AABA4C  C0 1C 00 B4 */	lfs f0, 0xb4(r28)
/* 80AABA50  D0 19 0C F4 */	stfs f0, 0xcf4(r25)
/* 80AABA54  98 19 0C FF */	stb r0, 0xcff(r25)
/* 80AABA58  38 00 00 01 */	li r0, 1
/* 80AABA5C  90 19 0C E0 */	stw r0, 0xce0(r25)
lbl_80AABA60:
/* 80AABA60  38 00 00 00 */	li r0, 0
/* 80AABA64  98 19 0C FF */	stb r0, 0xcff(r25)
/* 80AABA68  38 79 0B 98 */	addi r3, r25, 0xb98
/* 80AABA6C  4B 69 9C 9C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80AABA70  7C 64 1B 78 */	mr r4, r3
/* 80AABA74  7F 23 CB 78 */	mr r3, r25
/* 80AABA78  C0 39 0D F8 */	lfs f1, 0xdf8(r25)
/* 80AABA7C  A8 B9 0D 7A */	lha r5, 0xd7a(r25)
/* 80AABA80  4B 69 F1 50 */	b chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80AABA84  2C 03 00 00 */	cmpwi r3, 0
/* 80AABA88  40 82 00 38 */	bne lbl_80AABAC0
/* 80AABA8C  80 19 0C E0 */	lwz r0, 0xce0(r25)
/* 80AABA90  2C 00 00 00 */	cmpwi r0, 0
/* 80AABA94  41 82 00 24 */	beq lbl_80AABAB8
/* 80AABA98  38 79 0B A8 */	addi r3, r25, 0xba8
/* 80AABA9C  4B 69 9C 60 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AABAA0  38 00 00 00 */	li r0, 0
/* 80AABAA4  90 19 0B C8 */	stw r0, 0xbc8(r25)
/* 80AABAA8  C0 1C 00 B4 */	lfs f0, 0xb4(r28)
/* 80AABAAC  D0 19 0C F4 */	stfs f0, 0xcf4(r25)
/* 80AABAB0  98 19 0C FF */	stb r0, 0xcff(r25)
/* 80AABAB4  90 19 0C E0 */	stw r0, 0xce0(r25)
lbl_80AABAB8:
/* 80AABAB8  38 00 00 00 */	li r0, 0
/* 80AABABC  98 19 0C FF */	stb r0, 0xcff(r25)
lbl_80AABAC0:
/* 80AABAC0  7F 23 CB 78 */	mr r3, r25
/* 80AABAC4  4B 69 F8 74 */	b srchPlayerActor__8daNpcT_cFv
/* 80AABAC8  2C 03 00 00 */	cmpwi r3, 0
/* 80AABACC  40 82 01 34 */	bne lbl_80AABC00
/* 80AABAD0  A8 79 04 B6 */	lha r3, 0x4b6(r25)
/* 80AABAD4  A8 19 0D 7A */	lha r0, 0xd7a(r25)
/* 80AABAD8  7C 03 00 00 */	cmpw r3, r0
/* 80AABADC  40 82 01 24 */	bne lbl_80AABC00
/* 80AABAE0  38 00 00 01 */	li r0, 1
/* 80AABAE4  B0 19 0E 22 */	sth r0, 0xe22(r25)
/* 80AABAE8  48 00 01 18 */	b lbl_80AABC00
lbl_80AABAEC:
/* 80AABAEC  80 19 0C E0 */	lwz r0, 0xce0(r25)
/* 80AABAF0  2C 00 00 00 */	cmpwi r0, 0
/* 80AABAF4  41 82 00 24 */	beq lbl_80AABB18
/* 80AABAF8  38 79 0B A8 */	addi r3, r25, 0xba8
/* 80AABAFC  4B 69 9C 00 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AABB00  38 00 00 00 */	li r0, 0
/* 80AABB04  90 19 0B C8 */	stw r0, 0xbc8(r25)
/* 80AABB08  C0 1C 00 B4 */	lfs f0, 0xb4(r28)
/* 80AABB0C  D0 19 0C F4 */	stfs f0, 0xcf4(r25)
/* 80AABB10  98 19 0C FF */	stb r0, 0xcff(r25)
/* 80AABB14  90 19 0C E0 */	stw r0, 0xce0(r25)
lbl_80AABB18:
/* 80AABB18  38 00 00 00 */	li r0, 0
/* 80AABB1C  98 19 0C FF */	stb r0, 0xcff(r25)
/* 80AABB20  A8 99 04 B6 */	lha r4, 0x4b6(r25)
/* 80AABB24  A8 19 0D 7A */	lha r0, 0xd7a(r25)
/* 80AABB28  7C 04 00 00 */	cmpw r4, r0
/* 80AABB2C  41 82 00 58 */	beq lbl_80AABB84
/* 80AABB30  88 19 0E 34 */	lbz r0, 0xe34(r25)
/* 80AABB34  28 00 00 00 */	cmplwi r0, 0
/* 80AABB38  40 82 00 18 */	bne lbl_80AABB50
/* 80AABB3C  7F 23 CB 78 */	mr r3, r25
/* 80AABB40  4B 69 EE D8 */	b setAngle__8daNpcT_cFs
/* 80AABB44  38 00 00 01 */	li r0, 1
/* 80AABB48  B0 19 0E 22 */	sth r0, 0xe22(r25)
/* 80AABB4C  48 00 00 2C */	b lbl_80AABB78
lbl_80AABB50:
/* 80AABB50  7F 23 CB 78 */	mr r3, r25
/* 80AABB54  38 A0 00 0E */	li r5, 0xe
/* 80AABB58  38 C0 00 0A */	li r6, 0xa
/* 80AABB5C  38 E0 00 0F */	li r7, 0xf
/* 80AABB60  39 00 00 00 */	li r8, 0
/* 80AABB64  4B 69 FA E4 */	b step__8daNpcT_cFsiiii
/* 80AABB68  2C 03 00 00 */	cmpwi r3, 0
/* 80AABB6C  41 82 00 0C */	beq lbl_80AABB78
/* 80AABB70  38 00 00 01 */	li r0, 1
/* 80AABB74  B0 19 0E 22 */	sth r0, 0xe22(r25)
lbl_80AABB78:
/* 80AABB78  38 00 00 00 */	li r0, 0
/* 80AABB7C  90 19 05 5C */	stw r0, 0x55c(r25)
/* 80AABB80  48 00 00 80 */	b lbl_80AABC00
lbl_80AABB84:
/* 80AABB84  88 19 10 13 */	lbz r0, 0x1013(r25)
/* 80AABB88  28 00 00 00 */	cmplwi r0, 0
/* 80AABB8C  41 82 00 6C */	beq lbl_80AABBF8
/* 80AABB90  80 19 10 0C */	lwz r0, 0x100c(r25)
/* 80AABB94  2C 00 00 00 */	cmpwi r0, 0
/* 80AABB98  41 82 00 44 */	beq lbl_80AABBDC
/* 80AABB9C  38 79 10 0C */	addi r3, r25, 0x100c
/* 80AABBA0  48 00 13 71 */	bl func_80AACF10
/* 80AABBA4  2C 03 00 00 */	cmpwi r3, 0
/* 80AABBA8  40 82 00 58 */	bne lbl_80AABC00
/* 80AABBAC  80 19 0B 7C */	lwz r0, 0xb7c(r25)
/* 80AABBB0  2C 00 00 09 */	cmpwi r0, 9
/* 80AABBB4  41 82 00 4C */	beq lbl_80AABC00
/* 80AABBB8  83 19 0B 80 */	lwz r24, 0xb80(r25)
/* 80AABBBC  38 79 0B 74 */	addi r3, r25, 0xb74
/* 80AABBC0  4B 69 9C D8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AABBC4  93 19 0B 80 */	stw r24, 0xb80(r25)
/* 80AABBC8  38 00 00 09 */	li r0, 9
/* 80AABBCC  90 19 0B 7C */	stw r0, 0xb7c(r25)
/* 80AABBD0  C0 1C 00 D4 */	lfs f0, 0xd4(r28)
/* 80AABBD4  D0 19 0B 8C */	stfs f0, 0xb8c(r25)
/* 80AABBD8  48 00 00 28 */	b lbl_80AABC00
lbl_80AABBDC:
/* 80AABBDC  38 79 0B 74 */	addi r3, r25, 0xb74
/* 80AABBE0  4B 69 9E 44 */	b checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80AABBE4  2C 03 00 00 */	cmpwi r3, 0
/* 80AABBE8  41 82 00 18 */	beq lbl_80AABC00
/* 80AABBEC  38 00 00 01 */	li r0, 1
/* 80AABBF0  B0 19 0E 22 */	sth r0, 0xe22(r25)
/* 80AABBF4  48 00 00 0C */	b lbl_80AABC00
lbl_80AABBF8:
/* 80AABBF8  7F 23 CB 78 */	mr r3, r25
/* 80AABBFC  4B 69 F7 3C */	b srchPlayerActor__8daNpcT_cFv
lbl_80AABC00:
/* 80AABC00  38 60 00 01 */	li r3, 1
/* 80AABC04  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80AABC08  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80AABC0C  39 61 00 60 */	addi r11, r1, 0x60
/* 80AABC10  4B 8B 66 04 */	b _restgpr_24
/* 80AABC14  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80AABC18  7C 08 03 A6 */	mtlr r0
/* 80AABC1C  38 21 00 70 */	addi r1, r1, 0x70
/* 80AABC20  4E 80 00 20 */	blr 
