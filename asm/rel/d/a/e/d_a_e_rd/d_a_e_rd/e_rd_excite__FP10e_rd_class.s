lbl_8050D6B4:
/* 8050D6B4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8050D6B8  7C 08 02 A6 */	mflr r0
/* 8050D6BC  90 01 00 54 */	stw r0, 0x54(r1)
/* 8050D6C0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8050D6C4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8050D6C8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8050D6CC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8050D6D0  7C 7E 1B 78 */	mr r30, r3
/* 8050D6D4  3C 80 80 52 */	lis r4, lit_4208@ha
/* 8050D6D8  3B E4 85 84 */	addi r31, r4, lit_4208@l
/* 8050D6DC  C3 FF 00 04 */	lfs f31, 4(r31)
/* 8050D6E0  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8050D6E4  2C 00 00 02 */	cmpwi r0, 2
/* 8050D6E8  41 82 01 84 */	beq lbl_8050D86C
/* 8050D6EC  40 80 00 14 */	bge lbl_8050D700
/* 8050D6F0  2C 00 00 00 */	cmpwi r0, 0
/* 8050D6F4  41 82 00 18 */	beq lbl_8050D70C
/* 8050D6F8  40 80 00 78 */	bge lbl_8050D770
/* 8050D6FC  48 00 03 50 */	b lbl_8050DA4C
lbl_8050D700:
/* 8050D700  2C 00 00 04 */	cmpwi r0, 4
/* 8050D704  40 80 03 48 */	bge lbl_8050DA4C
/* 8050D708  48 00 03 14 */	b lbl_8050DA1C
lbl_8050D70C:
/* 8050D70C  38 80 00 40 */	li r4, 0x40
/* 8050D710  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 8050D714  38 A0 00 02 */	li r5, 2
/* 8050D718  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050D71C  4B FF 74 B9 */	bl anm_init__FP10e_rd_classifUcf
/* 8050D720  38 00 00 01 */	li r0, 1
/* 8050D724  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050D728  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 8050D72C  4B D5 A2 28 */	b cM_rndF__Ff
/* 8050D730  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 8050D734  EC 00 08 2A */	fadds f0, f0, f1
/* 8050D738  FC 00 00 1E */	fctiwz f0, f0
/* 8050D73C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8050D740  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8050D744  B0 1E 09 90 */	sth r0, 0x990(r30)
/* 8050D748  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8050D74C  B0 1E 05 CC */	sth r0, 0x5cc(r30)
/* 8050D750  3C 60 80 52 */	lis r3, S_find_pos@ha
/* 8050D754  C4 03 91 F4 */	lfsu f0, S_find_pos@l(r3)
/* 8050D758  D0 1E 05 C0 */	stfs f0, 0x5c0(r30)
/* 8050D75C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8050D760  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 8050D764  C0 03 00 08 */	lfs f0, 8(r3)
/* 8050D768  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 8050D76C  48 00 02 E0 */	b lbl_8050DA4C
lbl_8050D770:
/* 8050D770  38 00 00 0B */	li r0, 0xb
/* 8050D774  98 1E 09 C8 */	stb r0, 0x9c8(r30)
/* 8050D778  3C 80 80 52 */	lis r4, S_find_pos@ha
/* 8050D77C  C4 04 91 F4 */	lfsu f0, S_find_pos@l(r4)
/* 8050D780  D0 1E 09 D4 */	stfs f0, 0x9d4(r30)
/* 8050D784  C0 04 00 04 */	lfs f0, 4(r4)
/* 8050D788  D0 1E 09 D8 */	stfs f0, 0x9d8(r30)
/* 8050D78C  C0 04 00 08 */	lfs f0, 8(r4)
/* 8050D790  D0 1E 09 DC */	stfs f0, 0x9dc(r30)
/* 8050D794  A8 1E 09 90 */	lha r0, 0x990(r30)
/* 8050D798  2C 00 00 00 */	cmpwi r0, 0
/* 8050D79C  40 82 02 B0 */	bne lbl_8050DA4C
/* 8050D7A0  88 1E 12 95 */	lbz r0, 0x1295(r30)
/* 8050D7A4  7C 00 07 75 */	extsb. r0, r0
/* 8050D7A8  41 82 00 44 */	beq lbl_8050D7EC
/* 8050D7AC  38 00 00 03 */	li r0, 3
/* 8050D7B0  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050D7B4  38 80 00 1D */	li r4, 0x1d
/* 8050D7B8  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8050D7BC  38 A0 00 02 */	li r5, 2
/* 8050D7C0  C0 5F 01 3C */	lfs f2, 0x13c(r31)
/* 8050D7C4  4B FF 74 11 */	bl anm_init__FP10e_rd_classifUcf
/* 8050D7C8  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 8050D7CC  4B D5 A1 88 */	b cM_rndF__Ff
/* 8050D7D0  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 8050D7D4  EC 00 08 2A */	fadds f0, f0, f1
/* 8050D7D8  FC 00 00 1E */	fctiwz f0, f0
/* 8050D7DC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8050D7E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8050D7E4  B0 1E 09 90 */	sth r0, 0x990(r30)
/* 8050D7E8  48 00 00 50 */	b lbl_8050D838
lbl_8050D7EC:
/* 8050D7EC  38 00 00 02 */	li r0, 2
/* 8050D7F0  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050D7F4  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 8050D7F8  4B D5 A1 94 */	b cM_rndFX__Ff
/* 8050D7FC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8050D800  EC 40 08 2A */	fadds f2, f0, f1
/* 8050D804  7F C3 F3 78 */	mr r3, r30
/* 8050D808  38 80 00 32 */	li r4, 0x32
/* 8050D80C  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 8050D810  38 A0 00 02 */	li r5, 2
/* 8050D814  4B FF 73 C1 */	bl anm_init__FP10e_rd_classifUcf
/* 8050D818  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 8050D81C  4B D5 A1 38 */	b cM_rndF__Ff
/* 8050D820  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8050D824  EC 00 08 2A */	fadds f0, f0, f1
/* 8050D828  FC 00 00 1E */	fctiwz f0, f0
/* 8050D82C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8050D830  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8050D834  B0 1E 09 90 */	sth r0, 0x990(r30)
lbl_8050D838:
/* 8050D838  38 61 00 18 */	addi r3, r1, 0x18
/* 8050D83C  38 9E 05 C0 */	addi r4, r30, 0x5c0
/* 8050D840  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8050D844  4B D5 92 F0 */	b __mi__4cXyzCFRC3Vec
/* 8050D848  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8050D84C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8050D850  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8050D854  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8050D858  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8050D85C  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8050D860  4B D5 9E 14 */	b cM_atan2s__Fff
/* 8050D864  B0 7E 05 CC */	sth r3, 0x5cc(r30)
/* 8050D868  48 00 01 E4 */	b lbl_8050DA4C
lbl_8050D86C:
/* 8050D86C  38 00 00 0B */	li r0, 0xb
/* 8050D870  98 1E 09 C8 */	stb r0, 0x9c8(r30)
/* 8050D874  C0 1E 05 C0 */	lfs f0, 0x5c0(r30)
/* 8050D878  D0 1E 09 D4 */	stfs f0, 0x9d4(r30)
/* 8050D87C  C0 1E 05 C4 */	lfs f0, 0x5c4(r30)
/* 8050D880  D0 1E 09 D8 */	stfs f0, 0x9d8(r30)
/* 8050D884  C0 1E 05 C8 */	lfs f0, 0x5c8(r30)
/* 8050D888  D0 1E 09 DC */	stfs f0, 0x9dc(r30)
/* 8050D88C  3C 60 80 52 */	lis r3, l_HIO@ha
/* 8050D890  38 63 91 94 */	addi r3, r3, l_HIO@l
/* 8050D894  C3 E3 00 14 */	lfs f31, 0x14(r3)
/* 8050D898  38 61 00 0C */	addi r3, r1, 0xc
/* 8050D89C  38 9E 05 C0 */	addi r4, r30, 0x5c0
/* 8050D8A0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8050D8A4  4B D5 92 90 */	b __mi__4cXyzCFRC3Vec
/* 8050D8A8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8050D8AC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8050D8B0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8050D8B4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8050D8B8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8050D8BC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8050D8C0  A8 1E 09 90 */	lha r0, 0x990(r30)
/* 8050D8C4  2C 00 00 00 */	cmpwi r0, 0
/* 8050D8C8  41 82 01 10 */	beq lbl_8050D9D8
/* 8050D8CC  7F C3 F3 78 */	mr r3, r30
/* 8050D8D0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8050D8D4  4B FF 8E CD */	bl move_gake_check__FP10e_rd_classf
/* 8050D8D8  2C 03 00 00 */	cmpwi r3, 0
/* 8050D8DC  40 82 00 FC */	bne lbl_8050D9D8
/* 8050D8E0  38 61 00 24 */	addi r3, r1, 0x24
/* 8050D8E4  4B E3 98 54 */	b PSVECSquareMag
/* 8050D8E8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8050D8EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050D8F0  40 81 00 58 */	ble lbl_8050D948
/* 8050D8F4  FC 00 08 34 */	frsqrte f0, f1
/* 8050D8F8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8050D8FC  FC 44 00 32 */	fmul f2, f4, f0
/* 8050D900  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8050D904  FC 00 00 32 */	fmul f0, f0, f0
/* 8050D908  FC 01 00 32 */	fmul f0, f1, f0
/* 8050D90C  FC 03 00 28 */	fsub f0, f3, f0
/* 8050D910  FC 02 00 32 */	fmul f0, f2, f0
/* 8050D914  FC 44 00 32 */	fmul f2, f4, f0
/* 8050D918  FC 00 00 32 */	fmul f0, f0, f0
/* 8050D91C  FC 01 00 32 */	fmul f0, f1, f0
/* 8050D920  FC 03 00 28 */	fsub f0, f3, f0
/* 8050D924  FC 02 00 32 */	fmul f0, f2, f0
/* 8050D928  FC 44 00 32 */	fmul f2, f4, f0
/* 8050D92C  FC 00 00 32 */	fmul f0, f0, f0
/* 8050D930  FC 01 00 32 */	fmul f0, f1, f0
/* 8050D934  FC 03 00 28 */	fsub f0, f3, f0
/* 8050D938  FC 02 00 32 */	fmul f0, f2, f0
/* 8050D93C  FC 21 00 32 */	fmul f1, f1, f0
/* 8050D940  FC 20 08 18 */	frsp f1, f1
/* 8050D944  48 00 00 88 */	b lbl_8050D9CC
lbl_8050D948:
/* 8050D948  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8050D94C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050D950  40 80 00 10 */	bge lbl_8050D960
/* 8050D954  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8050D958  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8050D95C  48 00 00 70 */	b lbl_8050D9CC
lbl_8050D960:
/* 8050D960  D0 21 00 08 */	stfs f1, 8(r1)
/* 8050D964  80 81 00 08 */	lwz r4, 8(r1)
/* 8050D968  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8050D96C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8050D970  7C 03 00 00 */	cmpw r3, r0
/* 8050D974  41 82 00 14 */	beq lbl_8050D988
/* 8050D978  40 80 00 40 */	bge lbl_8050D9B8
/* 8050D97C  2C 03 00 00 */	cmpwi r3, 0
/* 8050D980  41 82 00 20 */	beq lbl_8050D9A0
/* 8050D984  48 00 00 34 */	b lbl_8050D9B8
lbl_8050D988:
/* 8050D988  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8050D98C  41 82 00 0C */	beq lbl_8050D998
/* 8050D990  38 00 00 01 */	li r0, 1
/* 8050D994  48 00 00 28 */	b lbl_8050D9BC
lbl_8050D998:
/* 8050D998  38 00 00 02 */	li r0, 2
/* 8050D99C  48 00 00 20 */	b lbl_8050D9BC
lbl_8050D9A0:
/* 8050D9A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8050D9A4  41 82 00 0C */	beq lbl_8050D9B0
/* 8050D9A8  38 00 00 05 */	li r0, 5
/* 8050D9AC  48 00 00 10 */	b lbl_8050D9BC
lbl_8050D9B0:
/* 8050D9B0  38 00 00 03 */	li r0, 3
/* 8050D9B4  48 00 00 08 */	b lbl_8050D9BC
lbl_8050D9B8:
/* 8050D9B8  38 00 00 04 */	li r0, 4
lbl_8050D9BC:
/* 8050D9BC  2C 00 00 01 */	cmpwi r0, 1
/* 8050D9C0  40 82 00 0C */	bne lbl_8050D9CC
/* 8050D9C4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8050D9C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8050D9CC:
/* 8050D9CC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8050D9D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050D9D4  40 80 00 78 */	bge lbl_8050DA4C
lbl_8050D9D8:
/* 8050D9D8  38 00 00 03 */	li r0, 3
/* 8050D9DC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050D9E0  7F C3 F3 78 */	mr r3, r30
/* 8050D9E4  38 80 00 1D */	li r4, 0x1d
/* 8050D9E8  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8050D9EC  38 A0 00 02 */	li r5, 2
/* 8050D9F0  C0 5F 01 3C */	lfs f2, 0x13c(r31)
/* 8050D9F4  4B FF 71 E1 */	bl anm_init__FP10e_rd_classifUcf
/* 8050D9F8  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 8050D9FC  4B D5 9F 58 */	b cM_rndF__Ff
/* 8050DA00  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 8050DA04  EC 00 08 2A */	fadds f0, f0, f1
/* 8050DA08  FC 00 00 1E */	fctiwz f0, f0
/* 8050DA0C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8050DA10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8050DA14  B0 1E 09 90 */	sth r0, 0x990(r30)
/* 8050DA18  48 00 00 34 */	b lbl_8050DA4C
lbl_8050DA1C:
/* 8050DA1C  A8 1E 09 90 */	lha r0, 0x990(r30)
/* 8050DA20  2C 00 00 00 */	cmpwi r0, 0
/* 8050DA24  40 82 00 28 */	bne lbl_8050DA4C
/* 8050DA28  A8 1E 09 74 */	lha r0, 0x974(r30)
/* 8050DA2C  B0 1E 09 72 */	sth r0, 0x972(r30)
/* 8050DA30  A8 1E 09 72 */	lha r0, 0x972(r30)
/* 8050DA34  2C 00 00 18 */	cmpwi r0, 0x18
/* 8050DA38  40 82 00 0C */	bne lbl_8050DA44
/* 8050DA3C  38 00 00 00 */	li r0, 0
/* 8050DA40  B0 1E 09 72 */	sth r0, 0x972(r30)
lbl_8050DA44:
/* 8050DA44  38 00 00 00 */	li r0, 0
/* 8050DA48  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8050DA4C:
/* 8050DA4C  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8050DA50  A8 9E 05 CC */	lha r4, 0x5cc(r30)
/* 8050DA54  38 A0 00 02 */	li r5, 2
/* 8050DA58  38 C0 08 00 */	li r6, 0x800
/* 8050DA5C  4B D6 2B AC */	b cLib_addCalcAngleS2__FPssss
/* 8050DA60  A8 7E 05 CC */	lha r3, 0x5cc(r30)
/* 8050DA64  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8050DA68  7C 03 00 50 */	subf r0, r3, r0
/* 8050DA6C  7C 00 07 34 */	extsh r0, r0
/* 8050DA70  2C 00 04 00 */	cmpwi r0, 0x400
/* 8050DA74  41 81 00 0C */	bgt lbl_8050DA80
/* 8050DA78  2C 00 FC 00 */	cmpwi r0, -1024
/* 8050DA7C  40 80 00 08 */	bge lbl_8050DA84
lbl_8050DA80:
/* 8050DA80  C3 FF 00 04 */	lfs f31, 4(r31)
lbl_8050DA84:
/* 8050DA84  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8050DA88  FC 20 F8 90 */	fmr f1, f31
/* 8050DA8C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050DA90  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 8050DA94  4B D6 1F A8 */	b cLib_addCalc2__FPffff
/* 8050DA98  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8050DA9C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8050DAA0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8050DAA4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8050DAA8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8050DAAC  7C 08 03 A6 */	mtlr r0
/* 8050DAB0  38 21 00 50 */	addi r1, r1, 0x50
/* 8050DAB4  4E 80 00 20 */	blr 
