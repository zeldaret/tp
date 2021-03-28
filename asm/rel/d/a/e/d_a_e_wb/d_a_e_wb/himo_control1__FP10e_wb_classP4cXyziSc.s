lbl_807D27D4:
/* 807D27D4  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 807D27D8  7C 08 02 A6 */	mflr r0
/* 807D27DC  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 807D27E0  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 807D27E4  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 807D27E8  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 807D27EC  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 807D27F0  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 807D27F4  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, 0 /* qr0 */
/* 807D27F8  DB 81 00 90 */	stfd f28, 0x90(r1)
/* 807D27FC  F3 81 00 98 */	psq_st f28, 152(r1), 0, 0 /* qr0 */
/* 807D2800  DB 61 00 80 */	stfd f27, 0x80(r1)
/* 807D2804  F3 61 00 88 */	psq_st f27, 136(r1), 0, 0 /* qr0 */
/* 807D2808  DB 41 00 70 */	stfd f26, 0x70(r1)
/* 807D280C  F3 41 00 78 */	psq_st f26, 120(r1), 0, 0 /* qr0 */
/* 807D2810  39 61 00 70 */	addi r11, r1, 0x70
/* 807D2814  4B B8 F9 B4 */	b _savegpr_24
/* 807D2818  7C 7F 1B 78 */	mr r31, r3
/* 807D281C  7C BA 2B 78 */	mr r26, r5
/* 807D2820  7C D8 33 78 */	mr r24, r6
/* 807D2824  3C 60 80 7E */	lis r3, lit_3882@ha
/* 807D2828  3B A3 29 8C */	addi r29, r3, lit_3882@l
/* 807D282C  1C 7A 00 C0 */	mulli r3, r26, 0xc0
/* 807D2830  3B 23 14 50 */	addi r25, r3, 0x1450
/* 807D2834  7F 3F CA 14 */	add r25, r31, r25
/* 807D2838  C0 04 00 00 */	lfs f0, 0(r4)
/* 807D283C  D0 19 00 00 */	stfs f0, 0(r25)
/* 807D2840  C0 04 00 04 */	lfs f0, 4(r4)
/* 807D2844  D0 19 00 04 */	stfs f0, 4(r25)
/* 807D2848  C0 04 00 08 */	lfs f0, 8(r4)
/* 807D284C  D0 19 00 08 */	stfs f0, 8(r25)
/* 807D2850  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807D2854  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807D2858  80 63 00 00 */	lwz r3, 0(r3)
/* 807D285C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 807D2860  4B 83 9B 7C */	b mDoMtx_YrotS__FPA4_fs
/* 807D2864  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807D2868  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807D286C  80 63 00 00 */	lwz r3, 0(r3)
/* 807D2870  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 807D2874  4B 83 9B 28 */	b mDoMtx_XrotM__FPA4_fs
/* 807D2878  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 807D287C  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 807D2880  2C 1A 00 00 */	cmpwi r26, 0
/* 807D2884  40 82 00 10 */	bne lbl_807D2894
/* 807D2888  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 807D288C  EC 01 00 32 */	fmuls f0, f1, f0
/* 807D2890  D0 01 00 44 */	stfs f0, 0x44(r1)
lbl_807D2894:
/* 807D2894  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 807D2898  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807D289C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807D28A0  38 61 00 44 */	addi r3, r1, 0x44
/* 807D28A4  38 81 00 2C */	addi r4, r1, 0x2c
/* 807D28A8  4B A9 E6 44 */	b MtxPosition__FP4cXyzP4cXyz
/* 807D28AC  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 807D28B0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807D28B4  C0 1F 16 84 */	lfs f0, 0x1684(r31)
/* 807D28B8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807D28BC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807D28C0  38 61 00 44 */	addi r3, r1, 0x44
/* 807D28C4  38 81 00 14 */	addi r4, r1, 0x14
/* 807D28C8  4B A9 E6 24 */	b MtxPosition__FP4cXyzP4cXyz
/* 807D28CC  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 807D28D0  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 807D28D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D28D8  40 81 00 14 */	ble lbl_807D28EC
/* 807D28DC  C0 3D 00 54 */	lfs f1, 0x54(r29)
/* 807D28E0  C0 1F 16 84 */	lfs f0, 0x1684(r31)
/* 807D28E4  EC 01 00 32 */	fmuls f0, f1, f0
/* 807D28E8  48 00 00 10 */	b lbl_807D28F8
lbl_807D28EC:
/* 807D28EC  C0 3D 00 58 */	lfs f1, 0x58(r29)
/* 807D28F0  C0 1F 16 84 */	lfs f0, 0x1684(r31)
/* 807D28F4  EC 01 00 32 */	fmuls f0, f1, f0
lbl_807D28F8:
/* 807D28F8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807D28FC  2C 1A 00 00 */	cmpwi r26, 0
/* 807D2900  40 82 00 14 */	bne lbl_807D2914
/* 807D2904  FC 20 00 18 */	frsp f1, f0
/* 807D2908  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 807D290C  EC 01 00 32 */	fmuls f0, f1, f0
/* 807D2910  D0 01 00 44 */	stfs f0, 0x44(r1)
lbl_807D2914:
/* 807D2914  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 807D2918  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807D291C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807D2920  38 61 00 44 */	addi r3, r1, 0x44
/* 807D2924  38 81 00 08 */	addi r4, r1, 8
/* 807D2928  4B A9 E5 C4 */	b MtxPosition__FP4cXyzP4cXyz
/* 807D292C  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 807D2930  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807D2934  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807D2938  7F 00 07 75 */	extsb. r0, r24
/* 807D293C  41 82 00 10 */	beq lbl_807D294C
/* 807D2940  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 807D2944  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807D2948  48 00 00 0C */	b lbl_807D2954
lbl_807D294C:
/* 807D294C  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 807D2950  D0 01 00 4C */	stfs f0, 0x4c(r1)
lbl_807D2954:
/* 807D2954  88 1F 07 9D */	lbz r0, 0x79d(r31)
/* 807D2958  7C 00 07 75 */	extsb. r0, r0
/* 807D295C  41 82 00 48 */	beq lbl_807D29A4
/* 807D2960  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 807D2964  3C 60 80 7E */	lis r3, l_HIO@ha
/* 807D2968  3B 83 35 C8 */	addi r28, r3, l_HIO@l
/* 807D296C  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 807D2970  EC 00 00 72 */	fmuls f0, f0, f1
/* 807D2974  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807D2978  38 61 00 2C */	addi r3, r1, 0x2c
/* 807D297C  7C 64 1B 78 */	mr r4, r3
/* 807D2980  4B B7 47 58 */	b PSVECScale
/* 807D2984  38 61 00 14 */	addi r3, r1, 0x14
/* 807D2988  7C 64 1B 78 */	mr r4, r3
/* 807D298C  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 807D2990  4B B7 47 48 */	b PSVECScale
/* 807D2994  38 61 00 08 */	addi r3, r1, 8
/* 807D2998  7C 64 1B 78 */	mr r4, r3
/* 807D299C  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 807D29A0  4B B7 47 38 */	b PSVECScale
lbl_807D29A4:
/* 807D29A4  3B 60 00 01 */	li r27, 1
/* 807D29A8  3B C0 17 70 */	li r30, 0x1770
/* 807D29AC  3B 19 00 0C */	addi r24, r25, 0xc
/* 807D29B0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 807D29B4  3B 83 9A 20 */	addi r28, r3, sincosTable___5JMath@l
/* 807D29B8  C3 DD 00 60 */	lfs f30, 0x60(r29)
/* 807D29BC  C3 FD 00 50 */	lfs f31, 0x50(r29)
/* 807D29C0  C3 7D 00 48 */	lfs f27, 0x48(r29)
/* 807D29C4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807D29C8  3B A3 07 68 */	addi r29, r3, calc_mtx@l
lbl_807D29CC:
/* 807D29CC  A8 1F 16 88 */	lha r0, 0x1688(r31)
/* 807D29D0  7C 00 F2 14 */	add r0, r0, r30
/* 807D29D4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807D29D8  7C 3C 04 2E */	lfsx f1, r28, r0
/* 807D29DC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807D29E0  EC A0 00 72 */	fmuls f5, f0, f1
/* 807D29E4  D0 A1 00 20 */	stfs f5, 0x20(r1)
/* 807D29E8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807D29EC  EC 80 00 72 */	fmuls f4, f0, f1
/* 807D29F0  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 807D29F4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807D29F8  EC 60 00 72 */	fmuls f3, f0, f1
/* 807D29FC  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 807D2A00  C0 41 00 08 */	lfs f2, 8(r1)
/* 807D2A04  C0 38 00 00 */	lfs f1, 0(r24)
/* 807D2A08  C0 18 FF F4 */	lfs f0, -0xc(r24)
/* 807D2A0C  EC 21 00 28 */	fsubs f1, f1, f0
/* 807D2A10  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 807D2A14  EC 00 07 B2 */	fmuls f0, f0, f30
/* 807D2A18  EC 01 00 2A */	fadds f0, f1, f0
/* 807D2A1C  EC 05 00 2A */	fadds f0, f5, f0
/* 807D2A20  EF A2 00 2A */	fadds f29, f2, f0
/* 807D2A24  C0 38 00 04 */	lfs f1, 4(r24)
/* 807D2A28  C0 18 FF F8 */	lfs f0, -8(r24)
/* 807D2A2C  EC 01 00 28 */	fsubs f0, f1, f0
/* 807D2A30  EC 00 F8 28 */	fsubs f0, f0, f31
/* 807D2A34  EF 84 00 2A */	fadds f28, f4, f0
/* 807D2A38  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 807D2A3C  C0 38 00 08 */	lfs f1, 8(r24)
/* 807D2A40  C0 18 FF FC */	lfs f0, -4(r24)
/* 807D2A44  EC 21 00 28 */	fsubs f1, f1, f0
/* 807D2A48  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 807D2A4C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 807D2A50  EC 01 00 2A */	fadds f0, f1, f0
/* 807D2A54  EC 03 00 2A */	fadds f0, f3, f0
/* 807D2A58  EF 42 00 2A */	fadds f26, f2, f0
/* 807D2A5C  FC 20 E8 90 */	fmr f1, f29
/* 807D2A60  FC 40 D0 90 */	fmr f2, f26
/* 807D2A64  4B A9 4C 10 */	b cM_atan2s__Fff
/* 807D2A68  7C 79 07 34 */	extsh r25, r3
/* 807D2A6C  EC 3D 07 72 */	fmuls f1, f29, f29
/* 807D2A70  EC 1A 06 B2 */	fmuls f0, f26, f26
/* 807D2A74  EC 41 00 2A */	fadds f2, f1, f0
/* 807D2A78  FC 02 D8 40 */	fcmpo cr0, f2, f27
/* 807D2A7C  40 81 00 0C */	ble lbl_807D2A88
/* 807D2A80  FC 00 10 34 */	frsqrte f0, f2
/* 807D2A84  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807D2A88:
/* 807D2A88  FC 20 E0 90 */	fmr f1, f28
/* 807D2A8C  4B A9 4B E8 */	b cM_atan2s__Fff
/* 807D2A90  7C 03 00 D0 */	neg r0, r3
/* 807D2A94  7C 1A 07 34 */	extsh r26, r0
/* 807D2A98  80 7D 00 00 */	lwz r3, 0(r29)
/* 807D2A9C  7F 24 CB 78 */	mr r4, r25
/* 807D2AA0  4B 83 99 3C */	b mDoMtx_YrotS__FPA4_fs
/* 807D2AA4  80 7D 00 00 */	lwz r3, 0(r29)
/* 807D2AA8  7F 44 D3 78 */	mr r4, r26
/* 807D2AAC  4B 83 98 F0 */	b mDoMtx_XrotM__FPA4_fs
/* 807D2AB0  38 61 00 44 */	addi r3, r1, 0x44
/* 807D2AB4  38 81 00 38 */	addi r4, r1, 0x38
/* 807D2AB8  4B A9 E4 34 */	b MtxPosition__FP4cXyzP4cXyz
/* 807D2ABC  C0 38 FF F4 */	lfs f1, -0xc(r24)
/* 807D2AC0  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807D2AC4  EC 01 00 2A */	fadds f0, f1, f0
/* 807D2AC8  D0 18 00 00 */	stfs f0, 0(r24)
/* 807D2ACC  C0 38 FF F8 */	lfs f1, -8(r24)
/* 807D2AD0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 807D2AD4  EC 01 00 2A */	fadds f0, f1, f0
/* 807D2AD8  D0 18 00 04 */	stfs f0, 4(r24)
/* 807D2ADC  C0 38 FF FC */	lfs f1, -4(r24)
/* 807D2AE0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 807D2AE4  EC 01 00 2A */	fadds f0, f1, f0
/* 807D2AE8  D0 18 00 08 */	stfs f0, 8(r24)
/* 807D2AEC  3B 7B 00 01 */	addi r27, r27, 1
/* 807D2AF0  2C 1B 00 10 */	cmpwi r27, 0x10
/* 807D2AF4  3B DE 17 70 */	addi r30, r30, 0x1770
/* 807D2AF8  3B 18 00 0C */	addi r24, r24, 0xc
/* 807D2AFC  41 80 FE D0 */	blt lbl_807D29CC
/* 807D2B00  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 807D2B04  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 807D2B08  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 807D2B0C  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 807D2B10  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, 0 /* qr0 */
/* 807D2B14  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 807D2B18  E3 81 00 98 */	psq_l f28, 152(r1), 0, 0 /* qr0 */
/* 807D2B1C  CB 81 00 90 */	lfd f28, 0x90(r1)
/* 807D2B20  E3 61 00 88 */	psq_l f27, 136(r1), 0, 0 /* qr0 */
/* 807D2B24  CB 61 00 80 */	lfd f27, 0x80(r1)
/* 807D2B28  E3 41 00 78 */	psq_l f26, 120(r1), 0, 0 /* qr0 */
/* 807D2B2C  CB 41 00 70 */	lfd f26, 0x70(r1)
/* 807D2B30  39 61 00 70 */	addi r11, r1, 0x70
/* 807D2B34  4B B8 F6 E0 */	b _restgpr_24
/* 807D2B38  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 807D2B3C  7C 08 03 A6 */	mtlr r0
/* 807D2B40  38 21 00 D0 */	addi r1, r1, 0xd0
/* 807D2B44  4E 80 00 20 */	blr 
