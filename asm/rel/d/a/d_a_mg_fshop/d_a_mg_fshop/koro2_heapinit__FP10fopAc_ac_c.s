lbl_8086E7F0:
/* 8086E7F0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8086E7F4  7C 08 02 A6 */	mflr r0
/* 8086E7F8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8086E7FC  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8086E800  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 8086E804  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 8086E808  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 8086E80C  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 8086E810  F3 A1 00 78 */	psq_st f29, 120(r1), 0, 0 /* qr0 */
/* 8086E814  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 8086E818  F3 81 00 68 */	psq_st f28, 104(r1), 0, 0 /* qr0 */
/* 8086E81C  39 61 00 60 */	addi r11, r1, 0x60
/* 8086E820  4B AF 39 80 */	b __save_gpr
/* 8086E824  7C 7F 1B 78 */	mr r31, r3
/* 8086E828  3C 60 80 87 */	lis r3, lit_1109@ha
/* 8086E82C  3A A3 09 58 */	addi r21, r3, lit_1109@l
/* 8086E830  3C 60 80 87 */	lis r3, cNullVec__6Z2Calc@ha
/* 8086E834  3A C3 02 84 */	addi r22, r3, cNullVec__6Z2Calc@l
/* 8086E838  38 60 00 C0 */	li r3, 0xc0
/* 8086E83C  4B A6 04 10 */	b __nw__FUl
/* 8086E840  28 03 00 00 */	cmplwi r3, 0
/* 8086E844  41 82 00 08 */	beq lbl_8086E84C
/* 8086E848  4B 80 D1 28 */	b __ct__4dBgWFv
lbl_8086E84C:
/* 8086E84C  90 7F 40 2C */	stw r3, 0x402c(r31)
/* 8086E850  80 1F 40 2C */	lwz r0, 0x402c(r31)
/* 8086E854  28 00 00 00 */	cmplwi r0, 0
/* 8086E858  40 82 00 0C */	bne lbl_8086E864
/* 8086E85C  38 60 00 00 */	li r3, 0
/* 8086E860  48 00 04 30 */	b lbl_8086EC90
lbl_8086E864:
/* 8086E864  3C 60 80 87 */	lis r3, stringBase0@ha
/* 8086E868  38 63 02 7C */	addi r3, r3, stringBase0@l
/* 8086E86C  38 80 00 25 */	li r4, 0x25
/* 8086E870  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8086E874  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8086E878  3E 85 00 02 */	addis r20, r5, 2
/* 8086E87C  3A 94 C2 F8 */	addi r20, r20, -15624
/* 8086E880  7E 85 A3 78 */	mr r5, r20
/* 8086E884  38 C0 00 80 */	li r6, 0x80
/* 8086E888  4B 7C DA 64 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8086E88C  7C 64 1B 78 */	mr r4, r3
/* 8086E890  80 7F 40 2C */	lwz r3, 0x402c(r31)
/* 8086E894  38 A0 00 01 */	li r5, 1
/* 8086E898  38 DF 40 30 */	addi r6, r31, 0x4030
/* 8086E89C  4B 80 B6 9C */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 8086E8A0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8086E8A4  28 00 00 01 */	cmplwi r0, 1
/* 8086E8A8  40 82 00 0C */	bne lbl_8086E8B4
/* 8086E8AC  38 60 00 00 */	li r3, 0
/* 8086E8B0  48 00 03 E0 */	b lbl_8086EC90
lbl_8086E8B4:
/* 8086E8B4  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 8086E8B8  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 8086E8BC  80 7F 40 2C */	lwz r3, 0x402c(r31)
/* 8086E8C0  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 8086E8C4  3C 60 80 87 */	lis r3, ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha
/* 8086E8C8  38 03 C0 6C */	addi r0, r3, ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l
/* 8086E8CC  80 7F 40 2C */	lwz r3, 0x402c(r31)
/* 8086E8D0  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 8086E8D4  80 15 00 70 */	lwz r0, 0x70(r21)
/* 8086E8D8  90 1F 40 28 */	stw r0, 0x4028(r31)
/* 8086E8DC  3A 40 00 00 */	li r18, 0
/* 8086E8E0  3B 00 00 00 */	li r24, 0
/* 8086E8E4  88 1F 05 67 */	lbz r0, 0x567(r31)
/* 8086E8E8  7C 00 07 74 */	extsb r0, r0
/* 8086E8EC  54 0E 07 38 */	rlwinm r14, r0, 0, 0x1c, 0x1c
/* 8086E8F0  3B A0 00 00 */	li r29, 0
/* 8086E8F4  3B 80 00 00 */	li r28, 0
/* 8086E8F8  3B C0 00 00 */	li r30, 0
/* 8086E8FC  3B 60 00 00 */	li r27, 0
/* 8086E900  3B 40 00 00 */	li r26, 0
/* 8086E904  3B 20 00 00 */	li r25, 0
/* 8086E908  54 00 16 FA */	rlwinm r0, r0, 2, 0x1b, 0x1d
/* 8086E90C  38 76 04 60 */	addi r3, r22, 0x460
/* 8086E910  7D E3 00 2E */	lwzx r15, r3, r0
/* 8086E914  3A 20 00 00 */	li r17, 0
/* 8086E918  3C 60 80 87 */	lis r3, lit_4380@ha
/* 8086E91C  C3 C3 01 20 */	lfs f30, lit_4380@l(r3)
/* 8086E920  3C 60 80 87 */	lis r3, lit_4864@ha
/* 8086E924  CB E3 01 CC */	lfd f31, lit_4864@l(r3)
lbl_8086E928:
/* 8086E928  3A 00 00 00 */	li r16, 0
/* 8086E92C  3A E0 00 00 */	li r23, 0
/* 8086E930  20 11 00 08 */	subfic r0, r17, 8
/* 8086E934  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8086E938  90 01 00 0C */	stw r0, 0xc(r1)
/* 8086E93C  3C 00 43 30 */	lis r0, 0x4330
/* 8086E940  90 01 00 08 */	stw r0, 8(r1)
/* 8086E944  C8 01 00 08 */	lfd f0, 8(r1)
/* 8086E948  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8086E94C  EF BE 00 32 */	fmuls f29, f30, f0
/* 8086E950  6E 20 80 00 */	xoris r0, r17, 0x8000
/* 8086E954  90 01 00 14 */	stw r0, 0x14(r1)
/* 8086E958  3C 00 43 30 */	lis r0, 0x4330
/* 8086E95C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8086E960  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8086E964  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8086E968  EF 9E 00 32 */	fmuls f28, f30, f0
lbl_8086E96C:
/* 8086E96C  7C 11 BA 14 */	add r0, r17, r23
/* 8086E970  7C 6F 00 AE */	lbzx r3, r15, r0
/* 8086E974  7C 60 07 75 */	extsb. r0, r3
/* 8086E978  41 82 02 F8 */	beq lbl_8086EC70
/* 8086E97C  2C 0E 00 00 */	cmpwi r14, 0
/* 8086E980  41 82 00 20 */	beq lbl_8086E9A0
/* 8086E984  7C 60 07 74 */	extsb r0, r3
/* 8086E988  38 76 05 B8 */	addi r3, r22, 0x5b8
/* 8086E98C  7C 03 00 AE */	lbzx r0, r3, r0
/* 8086E990  7C 7F C2 14 */	add r3, r31, r24
/* 8086E994  98 03 42 C4 */	stb r0, 0x42c4(r3)
/* 8086E998  D3 A3 42 C8 */	stfs f29, 0x42c8(r3)
/* 8086E99C  48 00 00 10 */	b lbl_8086E9AC
lbl_8086E9A0:
/* 8086E9A0  7C 9F C2 14 */	add r4, r31, r24
/* 8086E9A4  98 64 42 C4 */	stb r3, 0x42c4(r4)
/* 8086E9A8  D3 84 42 C8 */	stfs f28, 0x42c8(r4)
lbl_8086E9AC:
/* 8086E9AC  3C 60 80 87 */	lis r3, lit_3829@ha
/* 8086E9B0  C0 03 00 94 */	lfs f0, lit_3829@l(r3)
/* 8086E9B4  7E 7F C2 14 */	add r19, r31, r24
/* 8086E9B8  D0 13 42 CC */	stfs f0, 0x42cc(r19)
/* 8086E9BC  3C 60 80 87 */	lis r3, lit_4380@ha
/* 8086E9C0  C0 43 01 20 */	lfs f2, lit_4380@l(r3)
/* 8086E9C4  3C 60 80 87 */	lis r3, lit_4864@ha
/* 8086E9C8  C8 23 01 CC */	lfd f1, lit_4864@l(r3)
/* 8086E9CC  6E 00 80 00 */	xoris r0, r16, 0x8000
/* 8086E9D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8086E9D4  3C 00 43 30 */	lis r0, 0x4330
/* 8086E9D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8086E9DC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8086E9E0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8086E9E4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8086E9E8  D0 13 42 D0 */	stfs f0, 0x42d0(r19)
/* 8086E9EC  88 13 42 C4 */	lbz r0, 0x42c4(r19)
/* 8086E9F0  7C 00 07 74 */	extsb r0, r0
/* 8086E9F4  2C 00 00 06 */	cmpwi r0, 6
/* 8086E9F8  40 82 00 14 */	bne lbl_8086EA0C
/* 8086E9FC  C0 13 42 D0 */	lfs f0, 0x42d0(r19)
/* 8086EA00  EC 00 10 28 */	fsubs f0, f0, f2
/* 8086EA04  D0 13 42 D0 */	stfs f0, 0x42d0(r19)
/* 8086EA08  48 00 00 48 */	b lbl_8086EA50
lbl_8086EA0C:
/* 8086EA0C  2C 00 00 08 */	cmpwi r0, 8
/* 8086EA10  40 82 00 20 */	bne lbl_8086EA30
/* 8086EA14  C0 13 42 D0 */	lfs f0, 0x42d0(r19)
/* 8086EA18  EC 00 10 28 */	fsubs f0, f0, f2
/* 8086EA1C  D0 13 42 D0 */	stfs f0, 0x42d0(r19)
/* 8086EA20  C0 13 42 C8 */	lfs f0, 0x42c8(r19)
/* 8086EA24  EC 00 10 28 */	fsubs f0, f0, f2
/* 8086EA28  D0 13 42 C8 */	stfs f0, 0x42c8(r19)
/* 8086EA2C  48 00 00 24 */	b lbl_8086EA50
lbl_8086EA30:
/* 8086EA30  2C 00 00 0B */	cmpwi r0, 0xb
/* 8086EA34  40 82 00 1C */	bne lbl_8086EA50
/* 8086EA38  C0 13 42 D0 */	lfs f0, 0x42d0(r19)
/* 8086EA3C  EC 00 10 2A */	fadds f0, f0, f2
/* 8086EA40  D0 13 42 D0 */	stfs f0, 0x42d0(r19)
/* 8086EA44  C0 13 42 C8 */	lfs f0, 0x42c8(r19)
/* 8086EA48  EC 00 10 2A */	fadds f0, f0, f2
/* 8086EA4C  D0 13 42 C8 */	stfs f0, 0x42c8(r19)
lbl_8086EA50:
/* 8086EA50  3C 60 80 87 */	lis r3, lit_4380@ha
/* 8086EA54  C0 03 01 20 */	lfs f0, lit_4380@l(r3)
/* 8086EA58  D0 13 42 D4 */	stfs f0, 0x42d4(r19)
/* 8086EA5C  D0 13 42 D8 */	stfs f0, 0x42d8(r19)
/* 8086EA60  D0 13 42 DC */	stfs f0, 0x42dc(r19)
/* 8086EA64  88 13 42 C4 */	lbz r0, 0x42c4(r19)
/* 8086EA68  7C 00 07 74 */	extsb r0, r0
/* 8086EA6C  2C 00 00 02 */	cmpwi r0, 2
/* 8086EA70  41 82 00 0C */	beq lbl_8086EA7C
/* 8086EA74  2C 00 00 08 */	cmpwi r0, 8
/* 8086EA78  40 82 00 10 */	bne lbl_8086EA88
lbl_8086EA7C:
/* 8086EA7C  38 00 C0 00 */	li r0, -16384
/* 8086EA80  B0 13 42 E0 */	sth r0, 0x42e0(r19)
/* 8086EA84  48 00 00 74 */	b lbl_8086EAF8
lbl_8086EA88:
/* 8086EA88  2C 00 00 04 */	cmpwi r0, 4
/* 8086EA8C  41 82 00 0C */	beq lbl_8086EA98
/* 8086EA90  2C 00 00 0A */	cmpwi r0, 0xa
/* 8086EA94  40 82 00 10 */	bne lbl_8086EAA4
lbl_8086EA98:
/* 8086EA98  38 00 80 00 */	li r0, -32768
/* 8086EA9C  B0 13 42 E0 */	sth r0, 0x42e0(r19)
/* 8086EAA0  48 00 00 58 */	b lbl_8086EAF8
lbl_8086EAA4:
/* 8086EAA4  2C 00 00 05 */	cmpwi r0, 5
/* 8086EAA8  41 82 00 0C */	beq lbl_8086EAB4
/* 8086EAAC  2C 00 00 0B */	cmpwi r0, 0xb
/* 8086EAB0  40 82 00 10 */	bne lbl_8086EAC0
lbl_8086EAB4:
/* 8086EAB4  38 00 40 00 */	li r0, 0x4000
/* 8086EAB8  B0 13 42 E0 */	sth r0, 0x42e0(r19)
/* 8086EABC  48 00 00 3C */	b lbl_8086EAF8
lbl_8086EAC0:
/* 8086EAC0  2C 00 00 0C */	cmpwi r0, 0xc
/* 8086EAC4  40 82 00 10 */	bne lbl_8086EAD4
/* 8086EAC8  38 00 80 00 */	li r0, -32768
/* 8086EACC  B0 13 42 E0 */	sth r0, 0x42e0(r19)
/* 8086EAD0  48 00 00 28 */	b lbl_8086EAF8
lbl_8086EAD4:
/* 8086EAD4  2C 00 00 0E */	cmpwi r0, 0xe
/* 8086EAD8  40 82 00 10 */	bne lbl_8086EAE8
/* 8086EADC  38 00 C0 00 */	li r0, -16384
/* 8086EAE0  B0 13 42 E0 */	sth r0, 0x42e0(r19)
/* 8086EAE4  48 00 00 14 */	b lbl_8086EAF8
lbl_8086EAE8:
/* 8086EAE8  2C 00 00 0F */	cmpwi r0, 0xf
/* 8086EAEC  40 82 00 0C */	bne lbl_8086EAF8
/* 8086EAF0  38 00 40 00 */	li r0, 0x4000
/* 8086EAF4  B0 13 42 E0 */	sth r0, 0x42e0(r19)
lbl_8086EAF8:
/* 8086EAF8  88 13 42 C4 */	lbz r0, 0x42c4(r19)
/* 8086EAFC  7C 00 07 74 */	extsb r0, r0
/* 8086EB00  54 04 10 3A */	slwi r4, r0, 2
/* 8086EB04  38 76 05 40 */	addi r3, r22, 0x540
/* 8086EB08  38 04 FF FC */	addi r0, r4, -4
/* 8086EB0C  7C 03 00 2E */	lwzx r0, r3, r0
/* 8086EB10  2C 00 00 0A */	cmpwi r0, 0xa
/* 8086EB14  40 82 00 18 */	bne lbl_8086EB2C
/* 8086EB18  38 75 00 7C */	addi r3, r21, 0x7c
/* 8086EB1C  7C 03 F0 2E */	lwzx r0, r3, r30
/* 8086EB20  90 13 42 90 */	stw r0, 0x4290(r19)
/* 8086EB24  3B DE 00 04 */	addi r30, r30, 4
/* 8086EB28  48 00 00 8C */	b lbl_8086EBB4
lbl_8086EB2C:
/* 8086EB2C  2C 00 00 0F */	cmpwi r0, 0xf
/* 8086EB30  40 82 00 18 */	bne lbl_8086EB48
/* 8086EB34  38 75 00 74 */	addi r3, r21, 0x74
/* 8086EB38  7C 03 E8 2E */	lwzx r0, r3, r29
/* 8086EB3C  90 13 42 90 */	stw r0, 0x4290(r19)
/* 8086EB40  3B BD 00 04 */	addi r29, r29, 4
/* 8086EB44  48 00 00 70 */	b lbl_8086EBB4
lbl_8086EB48:
/* 8086EB48  2C 00 00 0D */	cmpwi r0, 0xd
/* 8086EB4C  40 82 00 18 */	bne lbl_8086EB64
/* 8086EB50  38 75 00 78 */	addi r3, r21, 0x78
/* 8086EB54  7C 03 E0 2E */	lwzx r0, r3, r28
/* 8086EB58  90 13 42 90 */	stw r0, 0x4290(r19)
/* 8086EB5C  3B 9C 00 04 */	addi r28, r28, 4
/* 8086EB60  48 00 00 54 */	b lbl_8086EBB4
lbl_8086EB64:
/* 8086EB64  2C 00 00 0B */	cmpwi r0, 0xb
/* 8086EB68  40 82 00 18 */	bne lbl_8086EB80
/* 8086EB6C  38 75 00 F8 */	addi r3, r21, 0xf8
/* 8086EB70  7C 03 D8 2E */	lwzx r0, r3, r27
/* 8086EB74  90 13 42 90 */	stw r0, 0x4290(r19)
/* 8086EB78  3B 7B 00 04 */	addi r27, r27, 4
/* 8086EB7C  48 00 00 38 */	b lbl_8086EBB4
lbl_8086EB80:
/* 8086EB80  2C 00 00 0C */	cmpwi r0, 0xc
/* 8086EB84  40 82 00 18 */	bne lbl_8086EB9C
/* 8086EB88  38 75 01 38 */	addi r3, r21, 0x138
/* 8086EB8C  7C 03 D0 2E */	lwzx r0, r3, r26
/* 8086EB90  90 13 42 90 */	stw r0, 0x4290(r19)
/* 8086EB94  3B 5A 00 04 */	addi r26, r26, 4
/* 8086EB98  48 00 00 1C */	b lbl_8086EBB4
lbl_8086EB9C:
/* 8086EB9C  2C 00 00 0E */	cmpwi r0, 0xe
/* 8086EBA0  40 82 00 14 */	bne lbl_8086EBB4
/* 8086EBA4  38 75 01 48 */	addi r3, r21, 0x148
/* 8086EBA8  7C 03 C8 2E */	lwzx r0, r3, r25
/* 8086EBAC  90 13 42 90 */	stw r0, 0x4290(r19)
/* 8086EBB0  3B 39 00 04 */	addi r25, r25, 4
lbl_8086EBB4:
/* 8086EBB4  80 13 42 90 */	lwz r0, 0x4290(r19)
/* 8086EBB8  28 00 00 00 */	cmplwi r0, 0
/* 8086EBBC  40 82 00 0C */	bne lbl_8086EBC8
/* 8086EBC0  38 60 00 00 */	li r3, 0
/* 8086EBC4  48 00 00 CC */	b lbl_8086EC90
lbl_8086EBC8:
/* 8086EBC8  38 60 00 C0 */	li r3, 0xc0
/* 8086EBCC  4B A6 00 80 */	b __nw__FUl
/* 8086EBD0  28 03 00 00 */	cmplwi r3, 0
/* 8086EBD4  41 82 00 08 */	beq lbl_8086EBDC
/* 8086EBD8  4B 80 CD 98 */	b __ct__4dBgWFv
lbl_8086EBDC:
/* 8086EBDC  90 73 42 F4 */	stw r3, 0x42f4(r19)
/* 8086EBE0  80 13 42 F4 */	lwz r0, 0x42f4(r19)
/* 8086EBE4  28 00 00 00 */	cmplwi r0, 0
/* 8086EBE8  40 82 00 0C */	bne lbl_8086EBF4
/* 8086EBEC  38 60 00 00 */	li r3, 0
/* 8086EBF0  48 00 00 A0 */	b lbl_8086EC90
lbl_8086EBF4:
/* 8086EBF4  3C 60 80 87 */	lis r3, stringBase0@ha
/* 8086EBF8  38 63 02 7C */	addi r3, r3, stringBase0@l
/* 8086EBFC  88 13 42 C4 */	lbz r0, 0x42c4(r19)
/* 8086EC00  7C 00 07 74 */	extsb r0, r0
/* 8086EC04  54 05 10 3A */	slwi r5, r0, 2
/* 8086EC08  38 96 05 7C */	addi r4, r22, 0x57c
/* 8086EC0C  38 05 FF FC */	addi r0, r5, -4
/* 8086EC10  7C 84 00 2E */	lwzx r4, r4, r0
/* 8086EC14  7E 85 A3 78 */	mr r5, r20
/* 8086EC18  38 C0 00 80 */	li r6, 0x80
/* 8086EC1C  4B 7C D6 D0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8086EC20  7C 64 1B 78 */	mr r4, r3
/* 8086EC24  80 73 42 F4 */	lwz r3, 0x42f4(r19)
/* 8086EC28  38 A0 00 01 */	li r5, 1
/* 8086EC2C  38 D3 42 94 */	addi r6, r19, 0x4294
/* 8086EC30  4B 80 B3 08 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 8086EC34  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8086EC38  28 00 00 01 */	cmplwi r0, 1
/* 8086EC3C  40 82 00 0C */	bne lbl_8086EC48
/* 8086EC40  38 60 00 00 */	li r3, 0
/* 8086EC44  48 00 00 4C */	b lbl_8086EC90
lbl_8086EC48:
/* 8086EC48  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 8086EC4C  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 8086EC50  80 73 42 F4 */	lwz r3, 0x42f4(r19)
/* 8086EC54  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 8086EC58  3A 52 00 01 */	addi r18, r18, 1
/* 8086EC5C  2C 12 00 64 */	cmpwi r18, 0x64
/* 8086EC60  3B 18 00 68 */	addi r24, r24, 0x68
/* 8086EC64  41 80 00 0C */	blt lbl_8086EC70
/* 8086EC68  38 60 00 00 */	li r3, 0
/* 8086EC6C  48 00 00 24 */	b lbl_8086EC90
lbl_8086EC70:
/* 8086EC70  3A 10 00 01 */	addi r16, r16, 1
/* 8086EC74  2C 10 00 0F */	cmpwi r16, 0xf
/* 8086EC78  3A F7 00 09 */	addi r23, r23, 9
/* 8086EC7C  41 80 FC F0 */	blt lbl_8086E96C
/* 8086EC80  3A 31 00 01 */	addi r17, r17, 1
/* 8086EC84  2C 11 00 09 */	cmpwi r17, 9
/* 8086EC88  41 80 FC A0 */	blt lbl_8086E928
/* 8086EC8C  38 60 00 01 */	li r3, 1
lbl_8086EC90:
/* 8086EC90  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 8086EC94  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8086EC98  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 8086EC9C  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 8086ECA0  E3 A1 00 78 */	psq_l f29, 120(r1), 0, 0 /* qr0 */
/* 8086ECA4  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 8086ECA8  E3 81 00 68 */	psq_l f28, 104(r1), 0, 0 /* qr0 */
/* 8086ECAC  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 8086ECB0  39 61 00 60 */	addi r11, r1, 0x60
/* 8086ECB4  4B AF 35 38 */	b __restore_gpr
/* 8086ECB8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8086ECBC  7C 08 03 A6 */	mtlr r0
/* 8086ECC0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8086ECC4  4E 80 00 20 */	blr 
