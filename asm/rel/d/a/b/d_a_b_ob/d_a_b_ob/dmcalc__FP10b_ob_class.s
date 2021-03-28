lbl_806147D4:
/* 806147D4  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 806147D8  7C 08 02 A6 */	mflr r0
/* 806147DC  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 806147E0  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 806147E4  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 806147E8  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 806147EC  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 806147F0  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 806147F4  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, 0 /* qr0 */
/* 806147F8  DB 81 00 B0 */	stfd f28, 0xb0(r1)
/* 806147FC  F3 81 00 B8 */	psq_st f28, 184(r1), 0, 0 /* qr0 */
/* 80614800  DB 61 00 A0 */	stfd f27, 0xa0(r1)
/* 80614804  F3 61 00 A8 */	psq_st f27, 168(r1), 0, 0 /* qr0 */
/* 80614808  DB 41 00 90 */	stfd f26, 0x90(r1)
/* 8061480C  F3 41 00 98 */	psq_st f26, 152(r1), 0, 0 /* qr0 */
/* 80614810  DB 21 00 80 */	stfd f25, 0x80(r1)
/* 80614814  F3 21 00 88 */	psq_st f25, 136(r1), 0, 0 /* qr0 */
/* 80614818  DB 01 00 70 */	stfd f24, 0x70(r1)
/* 8061481C  F3 01 00 78 */	psq_st f24, 120(r1), 0, 0 /* qr0 */
/* 80614820  DA E1 00 60 */	stfd f23, 0x60(r1)
/* 80614824  F2 E1 00 68 */	psq_st f23, 104(r1), 0, 0 /* qr0 */
/* 80614828  39 61 00 60 */	addi r11, r1, 0x60
/* 8061482C  4B D4 D9 A0 */	b _savegpr_25
/* 80614830  7C 7C 1B 78 */	mr r28, r3
/* 80614834  3C 60 80 62 */	lis r3, lit_3772@ha
/* 80614838  3B E3 AD 84 */	addi r31, r3, lit_3772@l
/* 8061483C  C3 9F 00 0C */	lfs f28, 0xc(r31)
/* 80614840  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80614844  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80614848  80 63 00 00 */	lwz r3, 0(r3)
/* 8061484C  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80614850  4B 9F 7B 8C */	b mDoMtx_YrotS__FPA4_fs
/* 80614854  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80614858  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8061485C  80 63 00 00 */	lwz r3, 0(r3)
/* 80614860  A8 9C 04 E4 */	lha r4, 0x4e4(r28)
/* 80614864  4B 9F 7B 38 */	b mDoMtx_XrotM__FPA4_fs
/* 80614868  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8061486C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80614870  80 63 00 00 */	lwz r3, 0(r3)
/* 80614874  A8 9C 47 C4 */	lha r4, 0x47c4(r28)
/* 80614878  4B 9F 7B BC */	b mDoMtx_YrotM__FPA4_fs
/* 8061487C  FC 00 E0 90 */	fmr f0, f28
/* 80614880  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80614884  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80614888  A8 1C 47 52 */	lha r0, 0x4752(r28)
/* 8061488C  2C 00 00 66 */	cmpwi r0, 0x66
/* 80614890  40 82 00 14 */	bne lbl_806148A4
/* 80614894  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 80614898  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8061489C  C3 9F 01 14 */	lfs f28, 0x114(r31)
/* 806148A0  48 00 00 0C */	b lbl_806148AC
lbl_806148A4:
/* 806148A4  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 806148A8  D0 01 00 34 */	stfs f0, 0x34(r1)
lbl_806148AC:
/* 806148AC  38 61 00 2C */	addi r3, r1, 0x2c
/* 806148B0  38 81 00 14 */	addi r4, r1, 0x14
/* 806148B4  4B C5 C6 38 */	b MtxPosition__FP4cXyzP4cXyz
/* 806148B8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 806148BC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806148C0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806148C4  A8 1C 05 E2 */	lha r0, 0x5e2(r28)
/* 806148C8  B0 1C 05 E6 */	sth r0, 0x5e6(r28)
/* 806148CC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 806148D0  D0 1C 05 D4 */	stfs f0, 0x5d4(r28)
/* 806148D4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 806148D8  D0 1C 05 D8 */	stfs f0, 0x5d8(r28)
/* 806148DC  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 806148E0  D0 1C 05 DC */	stfs f0, 0x5dc(r28)
/* 806148E4  A8 1C 04 E4 */	lha r0, 0x4e4(r28)
/* 806148E8  B0 1C 05 E0 */	sth r0, 0x5e0(r28)
/* 806148EC  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 806148F0  B0 1C 05 E2 */	sth r0, 0x5e2(r28)
/* 806148F4  A8 1C 04 E8 */	lha r0, 0x4e8(r28)
/* 806148F8  B0 1C 05 E4 */	sth r0, 0x5e4(r28)
/* 806148FC  A8 1C 47 C4 */	lha r0, 0x47c4(r28)
/* 80614900  B0 1C 05 E4 */	sth r0, 0x5e4(r28)
/* 80614904  A8 7C 5D 08 */	lha r3, 0x5d08(r28)
/* 80614908  2C 03 00 00 */	cmpwi r3, 0
/* 8061490C  3B BC 07 38 */	addi r29, r28, 0x738
/* 80614910  41 82 00 0C */	beq lbl_8061491C
/* 80614914  38 03 FF FF */	addi r0, r3, -1
/* 80614918  B0 1C 5D 08 */	sth r0, 0x5d08(r28)
lbl_8061491C:
/* 8061491C  C0 5F 01 1C */	lfs f2, 0x11c(r31)
/* 80614920  A8 1C 5D 08 */	lha r0, 0x5d08(r28)
/* 80614924  C8 3F 00 18 */	lfd f1, 0x18(r31)
/* 80614928  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8061492C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80614930  3C 00 43 30 */	lis r0, 0x4330
/* 80614934  90 01 00 38 */	stw r0, 0x38(r1)
/* 80614938  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8061493C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80614940  EF 62 00 32 */	fmuls f27, f2, f0
/* 80614944  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 80614948  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8061494C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80614950  40 80 00 0C */	bge lbl_8061495C
/* 80614954  C3 5F 01 20 */	lfs f26, 0x120(r31)
/* 80614958  48 00 00 08 */	b lbl_80614960
lbl_8061495C:
/* 8061495C  C3 5F 00 0C */	lfs f26, 0xc(r31)
lbl_80614960:
/* 80614960  3B C0 00 01 */	li r30, 1
/* 80614964  3B 60 13 88 */	li r27, 0x1388
/* 80614968  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8061496C  3B 23 9A 20 */	addi r25, r3, sincosTable___5JMath@l
/* 80614970  C3 DF 00 00 */	lfs f30, 0(r31)
/* 80614974  C3 FF 00 68 */	lfs f31, 0x68(r31)
/* 80614978  C3 3F 00 0C */	lfs f25, 0xc(r31)
/* 8061497C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80614980  3B 43 07 68 */	addi r26, r3, calc_mtx@l
lbl_80614984:
/* 80614984  A8 1C 5D 08 */	lha r0, 0x5d08(r28)
/* 80614988  1C 00 04 B0 */	mulli r0, r0, 0x4b0
/* 8061498C  7C 60 DA 14 */	add r3, r0, r27
/* 80614990  38 03 0B B8 */	addi r0, r3, 0xbb8
/* 80614994  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80614998  7C 19 04 2E */	lfsx f0, r25, r0
/* 8061499C  EC 5B 00 32 */	fmuls f2, f27, f0
/* 806149A0  38 1B 0B B8 */	addi r0, r27, 0xbb8
/* 806149A4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806149A8  7C 19 04 2E */	lfsx f0, r25, r0
/* 806149AC  EC 7A 00 32 */	fmuls f3, f26, f0
/* 806149B0  2C 1E 00 12 */	cmpwi r30, 0x12
/* 806149B4  40 82 00 20 */	bne lbl_806149D4
/* 806149B8  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 806149BC  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 806149C0  EC 00 00 72 */	fmuls f0, f0, f1
/* 806149C4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806149C8  C0 1F 01 28 */	lfs f0, 0x128(r31)
/* 806149CC  EC 80 00 72 */	fmuls f4, f0, f1
/* 806149D0  48 00 00 18 */	b lbl_806149E8
lbl_806149D4:
/* 806149D4  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 806149D8  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 806149DC  EC 00 00 72 */	fmuls f0, f0, f1
/* 806149E0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806149E4  FC 80 08 90 */	fmr f4, f1
lbl_806149E8:
/* 806149E8  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 806149EC  C0 1D FE 9C */	lfs f0, -0x164(r29)
/* 806149F0  EC 21 00 28 */	fsubs f1, f1, f0
/* 806149F4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 806149F8  EC 00 07 B2 */	fmuls f0, f0, f30
/* 806149FC  EC 01 00 2A */	fadds f0, f1, f0
/* 80614A00  EF A3 00 2A */	fadds f29, f3, f0
/* 80614A04  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 80614A08  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80614A0C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80614A10  EC 01 00 2A */	fadds f0, f1, f0
/* 80614A14  EC 1C 00 2A */	fadds f0, f28, f0
/* 80614A18  EC 42 00 2A */	fadds f2, f2, f0
/* 80614A1C  C0 3C 47 A0 */	lfs f1, 0x47a0(r28)
/* 80614A20  EC 1F 01 32 */	fmuls f0, f31, f4
/* 80614A24  EC 01 00 2A */	fadds f0, f1, f0
/* 80614A28  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80614A2C  40 80 00 08 */	bge lbl_80614A34
/* 80614A30  FC 40 00 90 */	fmr f2, f0
lbl_80614A34:
/* 80614A34  C0 1D FE A0 */	lfs f0, -0x160(r29)
/* 80614A38  EF 02 00 28 */	fsubs f24, f2, f0
/* 80614A3C  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 80614A40  C0 1D FE A4 */	lfs f0, -0x15c(r29)
/* 80614A44  EC 21 00 28 */	fsubs f1, f1, f0
/* 80614A48  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80614A4C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80614A50  EE E1 00 2A */	fadds f23, f1, f0
/* 80614A54  A8 1D FE AA */	lha r0, -0x156(r29)
/* 80614A58  B0 1D FE AE */	sth r0, -0x152(r29)
/* 80614A5C  FC 20 E8 90 */	fmr f1, f29
/* 80614A60  FC 40 B8 90 */	fmr f2, f23
/* 80614A64  4B C5 2C 10 */	b cM_atan2s__Fff
/* 80614A68  B0 7D 00 22 */	sth r3, 0x22(r29)
/* 80614A6C  EC 3D 07 72 */	fmuls f1, f29, f29
/* 80614A70  EC 17 05 F2 */	fmuls f0, f23, f23
/* 80614A74  EC 41 00 2A */	fadds f2, f1, f0
/* 80614A78  FC 02 C8 40 */	fcmpo cr0, f2, f25
/* 80614A7C  40 81 00 0C */	ble lbl_80614A88
/* 80614A80  FC 00 10 34 */	frsqrte f0, f2
/* 80614A84  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80614A88:
/* 80614A88  FC 20 C0 90 */	fmr f1, f24
/* 80614A8C  4B C5 2B E8 */	b cM_atan2s__Fff
/* 80614A90  7C 03 00 D0 */	neg r0, r3
/* 80614A94  B0 1D 00 20 */	sth r0, 0x20(r29)
/* 80614A98  80 7A 00 00 */	lwz r3, 0(r26)
/* 80614A9C  A8 9D 00 22 */	lha r4, 0x22(r29)
/* 80614AA0  4B 9F 79 3C */	b mDoMtx_YrotS__FPA4_fs
/* 80614AA4  80 7A 00 00 */	lwz r3, 0(r26)
/* 80614AA8  A8 9D 00 20 */	lha r4, 0x20(r29)
/* 80614AAC  4B 9F 78 F0 */	b mDoMtx_XrotM__FPA4_fs
/* 80614AB0  38 61 00 2C */	addi r3, r1, 0x2c
/* 80614AB4  38 81 00 20 */	addi r4, r1, 0x20
/* 80614AB8  4B C5 C4 34 */	b MtxPosition__FP4cXyzP4cXyz
/* 80614ABC  38 61 00 08 */	addi r3, r1, 8
/* 80614AC0  38 9D FE 9C */	addi r4, r29, -356
/* 80614AC4  38 A1 00 20 */	addi r5, r1, 0x20
/* 80614AC8  4B C5 20 1C */	b __pl__4cXyzCFRC3Vec
/* 80614ACC  C0 01 00 08 */	lfs f0, 8(r1)
/* 80614AD0  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 80614AD4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80614AD8  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 80614ADC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80614AE0  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 80614AE4  A8 7D 00 22 */	lha r3, 0x22(r29)
/* 80614AE8  38 03 80 00 */	addi r0, r3, -32768
/* 80614AEC  B0 1D 00 22 */	sth r0, 0x22(r29)
/* 80614AF0  A8 1D 00 20 */	lha r0, 0x20(r29)
/* 80614AF4  1C 00 FF FF */	mulli r0, r0, -1
/* 80614AF8  B0 1D 00 20 */	sth r0, 0x20(r29)
/* 80614AFC  3B DE 00 01 */	addi r30, r30, 1
/* 80614B00  2C 1E 00 14 */	cmpwi r30, 0x14
/* 80614B04  3B 7B 13 88 */	addi r27, r27, 0x1388
/* 80614B08  3B BD 01 78 */	addi r29, r29, 0x178
/* 80614B0C  41 80 FE 78 */	blt lbl_80614984
/* 80614B10  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 80614B14  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 80614B18  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 80614B1C  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 80614B20  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, 0 /* qr0 */
/* 80614B24  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 80614B28  E3 81 00 B8 */	psq_l f28, 184(r1), 0, 0 /* qr0 */
/* 80614B2C  CB 81 00 B0 */	lfd f28, 0xb0(r1)
/* 80614B30  E3 61 00 A8 */	psq_l f27, 168(r1), 0, 0 /* qr0 */
/* 80614B34  CB 61 00 A0 */	lfd f27, 0xa0(r1)
/* 80614B38  E3 41 00 98 */	psq_l f26, 152(r1), 0, 0 /* qr0 */
/* 80614B3C  CB 41 00 90 */	lfd f26, 0x90(r1)
/* 80614B40  E3 21 00 88 */	psq_l f25, 136(r1), 0, 0 /* qr0 */
/* 80614B44  CB 21 00 80 */	lfd f25, 0x80(r1)
/* 80614B48  E3 01 00 78 */	psq_l f24, 120(r1), 0, 0 /* qr0 */
/* 80614B4C  CB 01 00 70 */	lfd f24, 0x70(r1)
/* 80614B50  E2 E1 00 68 */	psq_l f23, 104(r1), 0, 0 /* qr0 */
/* 80614B54  CA E1 00 60 */	lfd f23, 0x60(r1)
/* 80614B58  39 61 00 60 */	addi r11, r1, 0x60
/* 80614B5C  4B D4 D6 BC */	b _restgpr_25
/* 80614B60  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80614B64  7C 08 03 A6 */	mtlr r0
/* 80614B68  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80614B6C  4E 80 00 20 */	blr 
