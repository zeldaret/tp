lbl_805CC8A4:
/* 805CC8A4  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 805CC8A8  7C 08 02 A6 */	mflr r0
/* 805CC8AC  90 01 00 94 */	stw r0, 0x94(r1)
/* 805CC8B0  39 61 00 90 */	addi r11, r1, 0x90
/* 805CC8B4  4B D9 59 08 */	b _savegpr_21
/* 805CC8B8  7C 7F 1B 78 */	mr r31, r3
/* 805CC8BC  7C 98 23 78 */	mr r24, r4
/* 805CC8C0  3C 60 80 5E */	lis r3, cNullVec__6Z2Calc@ha
/* 805CC8C4  3B 83 D2 48 */	addi r28, r3, cNullVec__6Z2Calc@l
/* 805CC8C8  3C 60 80 5E */	lis r3, lit_3932@ha
/* 805CC8CC  3B A3 CA 54 */	addi r29, r3, lit_3932@l
/* 805CC8D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805CC8D4  3A A3 61 C0 */	addi r21, r3, g_dComIfG_gameInfo@l
/* 805CC8D8  80 95 5D AC */	lwz r4, 0x5dac(r21)
/* 805CC8DC  88 1F 08 52 */	lbz r0, 0x852(r31)
/* 805CC8E0  28 00 00 00 */	cmplwi r0, 0
/* 805CC8E4  40 82 00 50 */	bne lbl_805CC934
/* 805CC8E8  38 7F 06 90 */	addi r3, r31, 0x690
/* 805CC8EC  48 00 FF F9 */	bl func_805DC8E4
/* 805CC8F0  2C 03 00 00 */	cmpwi r3, 0
/* 805CC8F4  40 82 00 30 */	bne lbl_805CC924
/* 805CC8F8  80 1F 06 94 */	lwz r0, 0x694(r31)
/* 805CC8FC  2C 00 00 00 */	cmpwi r0, 0
/* 805CC900  40 82 00 24 */	bne lbl_805CC924
/* 805CC904  80 1F 06 98 */	lwz r0, 0x698(r31)
/* 805CC908  2C 00 00 00 */	cmpwi r0, 0
/* 805CC90C  40 82 00 18 */	bne lbl_805CC924
/* 805CC910  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 805CC914  2C 00 00 03 */	cmpwi r0, 3
/* 805CC918  41 82 00 0C */	beq lbl_805CC924
/* 805CC91C  2C 00 00 01 */	cmpwi r0, 1
/* 805CC920  40 82 00 A8 */	bne lbl_805CC9C8
lbl_805CC924:
/* 805CC924  7F E3 FB 78 */	mr r3, r31
/* 805CC928  38 80 00 01 */	li r4, 1
/* 805CC92C  4B FF FE E1 */	bl mClearTrap__8daB_DS_cFb
/* 805CC930  48 00 05 6C */	b lbl_805CCE9C
lbl_805CC934:
/* 805CC934  C0 24 04 D4 */	lfs f1, 0x4d4(r4)
/* 805CC938  C0 1D 00 8C */	lfs f0, 0x8c(r29)
/* 805CC93C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CC940  41 80 00 70 */	blt lbl_805CC9B0
/* 805CC944  3C 60 80 5E */	lis r3, l_HIO@ha
/* 805CC948  38 63 DA BC */	addi r3, r3, l_HIO@l
/* 805CC94C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 805CC950  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CC954  41 81 00 5C */	bgt lbl_805CC9B0
/* 805CC958  80 7F 06 80 */	lwz r3, 0x680(r31)
/* 805CC95C  2C 03 00 02 */	cmpwi r3, 2
/* 805CC960  40 82 00 18 */	bne lbl_805CC978
/* 805CC964  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 805CC968  2C 00 00 03 */	cmpwi r0, 3
/* 805CC96C  41 80 00 0C */	blt lbl_805CC978
/* 805CC970  2C 00 00 04 */	cmpwi r0, 4
/* 805CC974  40 81 00 3C */	ble lbl_805CC9B0
lbl_805CC978:
/* 805CC978  80 1F 08 34 */	lwz r0, 0x834(r31)
/* 805CC97C  2C 00 00 00 */	cmpwi r0, 0
/* 805CC980  41 82 00 30 */	beq lbl_805CC9B0
/* 805CC984  A8 04 05 6C */	lha r0, 0x56c(r4)
/* 805CC988  7C 00 07 35 */	extsh. r0, r0
/* 805CC98C  40 82 00 24 */	bne lbl_805CC9B0
/* 805CC990  2C 03 00 00 */	cmpwi r3, 0
/* 805CC994  41 82 00 1C */	beq lbl_805CC9B0
/* 805CC998  2C 03 00 03 */	cmpwi r3, 3
/* 805CC99C  41 82 00 14 */	beq lbl_805CC9B0
/* 805CC9A0  2C 03 00 04 */	cmpwi r3, 4
/* 805CC9A4  41 82 00 0C */	beq lbl_805CC9B0
/* 805CC9A8  2C 03 00 05 */	cmpwi r3, 5
/* 805CC9AC  40 82 00 1C */	bne lbl_805CC9C8
lbl_805CC9B0:
/* 805CC9B0  38 00 00 00 */	li r0, 0
/* 805CC9B4  98 1F 08 60 */	stb r0, 0x860(r31)
/* 805CC9B8  7F E3 FB 78 */	mr r3, r31
/* 805CC9BC  38 80 00 00 */	li r4, 0
/* 805CC9C0  4B FF FE 4D */	bl mClearTrap__8daB_DS_cFb
/* 805CC9C4  48 00 04 D8 */	b lbl_805CCE9C
lbl_805CC9C8:
/* 805CC9C8  7F E3 FB 78 */	mr r3, r31
/* 805CC9CC  4B FF FD 29 */	bl mTrapScale__8daB_DS_cFv
/* 805CC9D0  88 1F 08 52 */	lbz r0, 0x852(r31)
/* 805CC9D4  28 00 00 00 */	cmplwi r0, 0
/* 805CC9D8  40 82 00 20 */	bne lbl_805CC9F8
/* 805CC9DC  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 805CC9E0  40 82 00 18 */	bne lbl_805CC9F8
/* 805CC9E4  7F E3 FB 78 */	mr r3, r31
/* 805CC9E8  80 95 5D AC */	lwz r4, 0x5dac(r21)
/* 805CC9EC  4B A4 DD 24 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805CC9F0  54 60 05 3F */	clrlwi. r0, r3, 0x14
/* 805CC9F4  41 82 04 A8 */	beq lbl_805CCE9C
lbl_805CC9F8:
/* 805CC9F8  C0 1D 00 08 */	lfs f0, 8(r29)
/* 805CC9FC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805CCA00  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805CCA04  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805CCA08  88 1F 08 52 */	lbz r0, 0x852(r31)
/* 805CCA0C  28 00 00 00 */	cmplwi r0, 0
/* 805CCA10  41 82 02 8C */	beq lbl_805CCC9C
/* 805CCA14  A8 9F 05 62 */	lha r4, 0x562(r31)
/* 805CCA18  3C 60 80 5E */	lis r3, l_HIO@ha
/* 805CCA1C  3B C3 DA BC */	addi r30, r3, l_HIO@l
/* 805CCA20  A8 7E 00 4A */	lha r3, 0x4a(r30)
/* 805CCA24  38 00 00 03 */	li r0, 3
/* 805CCA28  7C 03 03 D6 */	divw r0, r3, r0
/* 805CCA2C  54 00 08 3C */	slwi r0, r0, 1
/* 805CCA30  7C 04 00 00 */	cmpw r4, r0
/* 805CCA34  41 81 02 68 */	bgt lbl_805CCC9C
/* 805CCA38  88 1F 08 60 */	lbz r0, 0x860(r31)
/* 805CCA3C  28 00 00 00 */	cmplwi r0, 0
/* 805CCA40  41 82 02 5C */	beq lbl_805CCC9C
/* 805CCA44  3B 20 00 06 */	li r25, 6
/* 805CCA48  3A A0 00 18 */	li r21, 0x18
/* 805CCA4C  3B 00 00 00 */	li r24, 0
/* 805CCA50  48 00 02 34 */	b lbl_805CCC84
lbl_805CCA54:
/* 805CCA54  3B 75 2D 78 */	addi r27, r21, 0x2d78
/* 805CCA58  7C 7F D8 2E */	lwzx r3, r31, r27
/* 805CCA5C  28 03 00 00 */	cmplwi r3, 0
/* 805CCA60  41 82 00 28 */	beq lbl_805CCA88
/* 805CCA64  38 81 00 14 */	addi r4, r1, 0x14
/* 805CCA68  4B A4 CF 54 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 805CCA6C  2C 03 00 00 */	cmpwi r3, 0
/* 805CCA70  41 82 00 10 */	beq lbl_805CCA80
/* 805CCA74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CCA78  28 00 00 00 */	cmplwi r0, 0
/* 805CCA7C  40 82 02 00 */	bne lbl_805CCC7C
lbl_805CCA80:
/* 805CCA80  38 00 00 00 */	li r0, 0
/* 805CCA84  7C 1F D9 2E */	stwx r0, r31, r27
lbl_805CCA88:
/* 805CCA88  3C 60 00 1F */	lis r3, 0x001F /* 0x001F5003@ha */
/* 805CCA8C  3B 43 50 03 */	addi r26, r3, 0x5003 /* 0x001F5003@l */
/* 805CCA90  A8 1E 00 40 */	lha r0, 0x40(r30)
/* 805CCA94  54 00 40 2E */	slwi r0, r0, 8
/* 805CCA98  7F 5A 03 78 */	or r26, r26, r0
/* 805CCA9C  2C 18 00 00 */	cmpwi r24, 0
/* 805CCAA0  40 82 00 18 */	bne lbl_805CCAB8
/* 805CCAA4  A8 1E 00 36 */	lha r0, 0x36(r30)
/* 805CCAA8  7C 16 03 78 */	mr r22, r0
/* 805CCAAC  54 00 C0 0E */	slwi r0, r0, 0x18
/* 805CCAB0  7F 5A 03 78 */	or r26, r26, r0
/* 805CCAB4  48 00 00 14 */	b lbl_805CCAC8
lbl_805CCAB8:
/* 805CCAB8  A8 1E 00 38 */	lha r0, 0x38(r30)
/* 805CCABC  7C 16 03 78 */	mr r22, r0
/* 805CCAC0  54 00 C0 0E */	slwi r0, r0, 0x18
/* 805CCAC4  7F 5A 03 78 */	or r26, r26, r0
lbl_805CCAC8:
/* 805CCAC8  38 60 00 03 */	li r3, 3
/* 805CCACC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805CCAD0  7C 04 07 74 */	extsb r4, r0
/* 805CCAD4  4B A8 4D 18 */	b dPath_GetRoomPath__Fii
/* 805CCAD8  28 03 00 00 */	cmplwi r3, 0
/* 805CCADC  41 82 01 A0 */	beq lbl_805CCC7C
/* 805CCAE0  80 63 00 08 */	lwz r3, 8(r3)
/* 805CCAE4  56 C0 20 36 */	slwi r0, r22, 4
/* 805CCAE8  7C 63 02 14 */	add r3, r3, r0
/* 805CCAEC  C0 03 00 04 */	lfs f0, 4(r3)
/* 805CCAF0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805CCAF4  C0 03 00 08 */	lfs f0, 8(r3)
/* 805CCAF8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805CCAFC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805CCB00  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805CCB04  38 61 00 28 */	addi r3, r1, 0x28
/* 805CCB08  38 81 00 4C */	addi r4, r1, 0x4c
/* 805CCB0C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 805CCB10  4B C9 A0 24 */	b __mi__4cXyzCFRC3Vec
/* 805CCB14  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805CCB18  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805CCB1C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 805CCB20  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805CCB24  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 805CCB28  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805CCB2C  38 61 00 40 */	addi r3, r1, 0x40
/* 805CCB30  4B D7 A6 08 */	b PSVECSquareMag
/* 805CCB34  C0 1D 00 04 */	lfs f0, 4(r29)
/* 805CCB38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CCB3C  40 81 00 58 */	ble lbl_805CCB94
/* 805CCB40  FC 00 08 34 */	frsqrte f0, f1
/* 805CCB44  C8 9D 00 10 */	lfd f4, 0x10(r29)
/* 805CCB48  FC 44 00 32 */	fmul f2, f4, f0
/* 805CCB4C  C8 7D 00 18 */	lfd f3, 0x18(r29)
/* 805CCB50  FC 00 00 32 */	fmul f0, f0, f0
/* 805CCB54  FC 01 00 32 */	fmul f0, f1, f0
/* 805CCB58  FC 03 00 28 */	fsub f0, f3, f0
/* 805CCB5C  FC 02 00 32 */	fmul f0, f2, f0
/* 805CCB60  FC 44 00 32 */	fmul f2, f4, f0
/* 805CCB64  FC 00 00 32 */	fmul f0, f0, f0
/* 805CCB68  FC 01 00 32 */	fmul f0, f1, f0
/* 805CCB6C  FC 03 00 28 */	fsub f0, f3, f0
/* 805CCB70  FC 02 00 32 */	fmul f0, f2, f0
/* 805CCB74  FC 44 00 32 */	fmul f2, f4, f0
/* 805CCB78  FC 00 00 32 */	fmul f0, f0, f0
/* 805CCB7C  FC 01 00 32 */	fmul f0, f1, f0
/* 805CCB80  FC 03 00 28 */	fsub f0, f3, f0
/* 805CCB84  FC 02 00 32 */	fmul f0, f2, f0
/* 805CCB88  FC 21 00 32 */	fmul f1, f1, f0
/* 805CCB8C  FC 20 08 18 */	frsp f1, f1
/* 805CCB90  48 00 00 88 */	b lbl_805CCC18
lbl_805CCB94:
/* 805CCB94  C8 1D 00 20 */	lfd f0, 0x20(r29)
/* 805CCB98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CCB9C  40 80 00 10 */	bge lbl_805CCBAC
/* 805CCBA0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805CCBA4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805CCBA8  48 00 00 70 */	b lbl_805CCC18
lbl_805CCBAC:
/* 805CCBAC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805CCBB0  80 81 00 10 */	lwz r4, 0x10(r1)
/* 805CCBB4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805CCBB8  3C 00 7F 80 */	lis r0, 0x7f80
/* 805CCBBC  7C 03 00 00 */	cmpw r3, r0
/* 805CCBC0  41 82 00 14 */	beq lbl_805CCBD4
/* 805CCBC4  40 80 00 40 */	bge lbl_805CCC04
/* 805CCBC8  2C 03 00 00 */	cmpwi r3, 0
/* 805CCBCC  41 82 00 20 */	beq lbl_805CCBEC
/* 805CCBD0  48 00 00 34 */	b lbl_805CCC04
lbl_805CCBD4:
/* 805CCBD4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805CCBD8  41 82 00 0C */	beq lbl_805CCBE4
/* 805CCBDC  38 00 00 01 */	li r0, 1
/* 805CCBE0  48 00 00 28 */	b lbl_805CCC08
lbl_805CCBE4:
/* 805CCBE4  38 00 00 02 */	li r0, 2
/* 805CCBE8  48 00 00 20 */	b lbl_805CCC08
lbl_805CCBEC:
/* 805CCBEC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805CCBF0  41 82 00 0C */	beq lbl_805CCBFC
/* 805CCBF4  38 00 00 05 */	li r0, 5
/* 805CCBF8  48 00 00 10 */	b lbl_805CCC08
lbl_805CCBFC:
/* 805CCBFC  38 00 00 03 */	li r0, 3
/* 805CCC00  48 00 00 08 */	b lbl_805CCC08
lbl_805CCC04:
/* 805CCC04  38 00 00 04 */	li r0, 4
lbl_805CCC08:
/* 805CCC08  2C 00 00 01 */	cmpwi r0, 1
/* 805CCC0C  40 82 00 0C */	bne lbl_805CCC18
/* 805CCC10  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805CCC14  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805CCC18:
/* 805CCC18  C0 1D 00 64 */	lfs f0, 0x64(r29)
/* 805CCC1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CCC20  4C 40 13 82 */	cror 2, 0, 2
/* 805CCC24  41 82 00 58 */	beq lbl_805CCC7C
/* 805CCC28  38 60 00 00 */	li r3, 0
/* 805CCC2C  B0 61 00 20 */	sth r3, 0x20(r1)
/* 805CCC30  B0 61 00 22 */	sth r3, 0x22(r1)
/* 805CCC34  B0 61 00 24 */	sth r3, 0x24(r1)
/* 805CCC38  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805CCC3C  7C 07 07 74 */	extsb r7, r0
/* 805CCC40  90 61 00 08 */	stw r3, 8(r1)
/* 805CCC44  38 60 00 94 */	li r3, 0x94
/* 805CCC48  28 1F 00 00 */	cmplwi r31, 0
/* 805CCC4C  41 82 00 0C */	beq lbl_805CCC58
/* 805CCC50  80 9F 00 04 */	lwz r4, 4(r31)
/* 805CCC54  48 00 00 08 */	b lbl_805CCC5C
lbl_805CCC58:
/* 805CCC58  38 80 FF FF */	li r4, -1
lbl_805CCC5C:
/* 805CCC5C  7F 45 D3 78 */	mr r5, r26
/* 805CCC60  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 805CCC64  39 01 00 20 */	addi r8, r1, 0x20
/* 805CCC68  39 21 00 34 */	addi r9, r1, 0x34
/* 805CCC6C  39 40 FF FF */	li r10, -1
/* 805CCC70  4B A4 D2 80 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 805CCC74  7C 7F D9 2E */	stwx r3, r31, r27
/* 805CCC78  3B 18 00 01 */	addi r24, r24, 1
lbl_805CCC7C:
/* 805CCC7C  3B 39 00 01 */	addi r25, r25, 1
/* 805CCC80  3A B5 00 04 */	addi r21, r21, 4
lbl_805CCC84:
/* 805CCC84  2C 19 00 14 */	cmpwi r25, 0x14
/* 805CCC88  40 80 00 0C */	bge lbl_805CCC94
/* 805CCC8C  2C 18 00 02 */	cmpwi r24, 2
/* 805CCC90  41 80 FD C4 */	blt lbl_805CCA54
lbl_805CCC94:
/* 805CCC94  38 00 00 00 */	li r0, 0
/* 805CCC98  98 1F 08 60 */	stb r0, 0x860(r31)
lbl_805CCC9C:
/* 805CCC9C  C0 3D 00 04 */	lfs f1, 4(r29)
/* 805CCCA0  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 805CCCA4  C0 1D 00 90 */	lfs f0, 0x90(r29)
/* 805CCCA8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805CCCAC  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 805CCCB0  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 805CCCB4  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 805CCCB8  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 805CCCBC  38 00 00 00 */	li r0, 0
/* 805CCCC0  B0 01 00 1A */	sth r0, 0x1a(r1)
/* 805CCCC4  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 805CCCC8  B0 01 00 18 */	sth r0, 0x18(r1)
/* 805CCCCC  C0 1D 00 94 */	lfs f0, 0x94(r29)
/* 805CCCD0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805CCCD4  88 1F 08 52 */	lbz r0, 0x852(r31)
/* 805CCCD8  28 00 00 00 */	cmplwi r0, 0
/* 805CCCDC  40 82 00 C8 */	bne lbl_805CCDA4
/* 805CCCE0  3B 00 00 06 */	li r24, 6
/* 805CCCE4  88 1F 08 4F */	lbz r0, 0x84f(r31)
/* 805CCCE8  28 00 00 02 */	cmplwi r0, 2
/* 805CCCEC  40 80 00 08 */	bge lbl_805CCCF4
/* 805CCCF0  3B 00 00 04 */	li r24, 4
lbl_805CCCF4:
/* 805CCCF4  3B 20 00 00 */	li r25, 0
/* 805CCCF8  3A A0 00 00 */	li r21, 0
/* 805CCCFC  3A C0 00 00 */	li r22, 0
/* 805CCD00  48 00 00 98 */	b lbl_805CCD98
lbl_805CCD04:
/* 805CCD04  88 1F 08 4F */	lbz r0, 0x84f(r31)
/* 805CCD08  28 00 00 02 */	cmplwi r0, 2
/* 805CCD0C  40 80 00 10 */	bge lbl_805CCD1C
/* 805CCD10  38 7C 02 38 */	addi r3, r28, 0x238
/* 805CCD14  7C 03 B2 AE */	lhax r0, r3, r22
/* 805CCD18  B0 01 00 1A */	sth r0, 0x1a(r1)
lbl_805CCD1C:
/* 805CCD1C  3A F5 2D 78 */	addi r23, r21, 0x2d78
/* 805CCD20  7C 1F B8 2E */	lwzx r0, r31, r23
/* 805CCD24  28 00 00 00 */	cmplwi r0, 0
/* 805CCD28  40 82 00 64 */	bne lbl_805CCD8C
/* 805CCD2C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805CCD30  7C 07 07 74 */	extsb r7, r0
/* 805CCD34  38 00 00 00 */	li r0, 0
/* 805CCD38  90 01 00 08 */	stw r0, 8(r1)
/* 805CCD3C  38 60 00 94 */	li r3, 0x94
/* 805CCD40  28 1F 00 00 */	cmplwi r31, 0
/* 805CCD44  41 82 00 0C */	beq lbl_805CCD50
/* 805CCD48  80 9F 00 04 */	lwz r4, 4(r31)
/* 805CCD4C  48 00 00 08 */	b lbl_805CCD54
lbl_805CCD50:
/* 805CCD50  38 80 FF FF */	li r4, -1
lbl_805CCD54:
/* 805CCD54  3C A0 27 10 */	lis r5, 0x2710 /* 0x27104DFF@ha */
/* 805CCD58  38 A5 4D FF */	addi r5, r5, 0x4DFF /* 0x27104DFF@l */
/* 805CCD5C  38 C1 00 4C */	addi r6, r1, 0x4c
/* 805CCD60  39 01 00 18 */	addi r8, r1, 0x18
/* 805CCD64  39 21 00 34 */	addi r9, r1, 0x34
/* 805CCD68  39 40 FF FF */	li r10, -1
/* 805CCD6C  4B A4 D1 84 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 805CCD70  7C 7F B9 2E */	stwx r3, r31, r23
/* 805CCD74  88 1F 08 4F */	lbz r0, 0x84f(r31)
/* 805CCD78  28 00 00 02 */	cmplwi r0, 2
/* 805CCD7C  40 82 00 10 */	bne lbl_805CCD8C
/* 805CCD80  A8 61 00 1A */	lha r3, 0x1a(r1)
/* 805CCD84  38 03 2A AA */	addi r0, r3, 0x2aaa
/* 805CCD88  B0 01 00 1A */	sth r0, 0x1a(r1)
lbl_805CCD8C:
/* 805CCD8C  3B 39 00 01 */	addi r25, r25, 1
/* 805CCD90  3A B5 00 04 */	addi r21, r21, 4
/* 805CCD94  3A D6 00 02 */	addi r22, r22, 2
lbl_805CCD98:
/* 805CCD98  7C 19 C0 00 */	cmpw r25, r24
/* 805CCD9C  41 80 FF 68 */	blt lbl_805CCD04
/* 805CCDA0  48 00 00 FC */	b lbl_805CCE9C
lbl_805CCDA4:
/* 805CCDA4  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 805CCDA8  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 805CCDAC  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 805CCDB0  A8 BF 05 62 */	lha r5, 0x562(r31)
/* 805CCDB4  3C 60 80 5E */	lis r3, l_HIO@ha
/* 805CCDB8  38 83 DA BC */	addi r4, r3, l_HIO@l
/* 805CCDBC  A8 64 00 4A */	lha r3, 0x4a(r4)
/* 805CCDC0  38 00 00 03 */	li r0, 3
/* 805CCDC4  7C 03 03 D6 */	divw r0, r3, r0
/* 805CCDC8  7C 05 00 00 */	cmpw r5, r0
/* 805CCDCC  41 81 00 D0 */	bgt lbl_805CCE9C
/* 805CCDD0  3C 60 27 10 */	lis r3, 0x2710 /* 0x271040FF@ha */
/* 805CCDD4  3B 43 40 FF */	addi r26, r3, 0x40FF /* 0x271040FF@l */
/* 805CCDD8  A8 04 00 3E */	lha r0, 0x3e(r4)
/* 805CCDDC  54 00 40 2E */	slwi r0, r0, 8
/* 805CCDE0  7F 5A 03 78 */	or r26, r26, r0
/* 805CCDE4  3B 00 00 00 */	li r24, 0
/* 805CCDE8  3A E0 00 00 */	li r23, 0
/* 805CCDEC  3A C0 00 00 */	li r22, 0
/* 805CCDF0  3B BC 02 40 */	addi r29, r28, 0x240
/* 805CCDF4  3B DC 02 48 */	addi r30, r28, 0x248
lbl_805CCDF8:
/* 805CCDF8  3B 20 00 00 */	li r25, 0
/* 805CCDFC  3A A0 00 00 */	li r21, 0
lbl_805CCE00:
/* 805CCE00  7C 16 CA 14 */	add r0, r22, r25
/* 805CCE04  54 03 10 3A */	slwi r3, r0, 2
/* 805CCE08  3B 63 2D 78 */	addi r27, r3, 0x2d78
/* 805CCE0C  7C 1F D8 2E */	lwzx r0, r31, r27
/* 805CCE10  28 00 00 00 */	cmplwi r0, 0
/* 805CCE14  40 82 00 64 */	bne lbl_805CCE78
/* 805CCE18  7C 9D B2 AE */	lhax r4, r29, r22
/* 805CCE1C  38 7C 02 38 */	addi r3, r28, 0x238
/* 805CCE20  7C 03 AA AE */	lhax r0, r3, r21
/* 805CCE24  7C 04 02 14 */	add r0, r4, r0
/* 805CCE28  B0 01 00 1A */	sth r0, 0x1a(r1)
/* 805CCE2C  7C 1E BC 2E */	lfsx f0, r30, r23
/* 805CCE30  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805CCE34  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805CCE38  7C 07 07 74 */	extsb r7, r0
/* 805CCE3C  38 00 00 00 */	li r0, 0
/* 805CCE40  90 01 00 08 */	stw r0, 8(r1)
/* 805CCE44  38 60 00 94 */	li r3, 0x94
/* 805CCE48  28 1F 00 00 */	cmplwi r31, 0
/* 805CCE4C  41 82 00 0C */	beq lbl_805CCE58
/* 805CCE50  80 9F 00 04 */	lwz r4, 4(r31)
/* 805CCE54  48 00 00 08 */	b lbl_805CCE5C
lbl_805CCE58:
/* 805CCE58  38 80 FF FF */	li r4, -1
lbl_805CCE5C:
/* 805CCE5C  7F 45 D3 78 */	mr r5, r26
/* 805CCE60  38 C1 00 4C */	addi r6, r1, 0x4c
/* 805CCE64  39 01 00 18 */	addi r8, r1, 0x18
/* 805CCE68  39 21 00 34 */	addi r9, r1, 0x34
/* 805CCE6C  39 40 FF FF */	li r10, -1
/* 805CCE70  4B A4 D0 80 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 805CCE74  7C 7F D9 2E */	stwx r3, r31, r27
lbl_805CCE78:
/* 805CCE78  3B 39 00 01 */	addi r25, r25, 1
/* 805CCE7C  2C 19 00 02 */	cmpwi r25, 2
/* 805CCE80  3A B5 00 04 */	addi r21, r21, 4
/* 805CCE84  41 80 FF 7C */	blt lbl_805CCE00
/* 805CCE88  3B 18 00 01 */	addi r24, r24, 1
/* 805CCE8C  2C 18 00 03 */	cmpwi r24, 3
/* 805CCE90  3A F7 00 04 */	addi r23, r23, 4
/* 805CCE94  3A D6 00 02 */	addi r22, r22, 2
/* 805CCE98  41 80 FF 60 */	blt lbl_805CCDF8
lbl_805CCE9C:
/* 805CCE9C  39 61 00 90 */	addi r11, r1, 0x90
/* 805CCEA0  4B D9 53 68 */	b _restgpr_21
/* 805CCEA4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 805CCEA8  7C 08 03 A6 */	mtlr r0
/* 805CCEAC  38 21 00 90 */	addi r1, r1, 0x90
/* 805CCEB0  4E 80 00 20 */	blr 
