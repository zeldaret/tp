lbl_804E97EC:
/* 804E97EC  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 804E97F0  7C 08 02 A6 */	mflr r0
/* 804E97F4  90 01 01 14 */	stw r0, 0x114(r1)
/* 804E97F8  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 804E97FC  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 804E9800  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 804E9804  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 804E9808  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 804E980C  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, 0 /* qr0 */
/* 804E9810  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 804E9814  F3 81 00 D8 */	psq_st f28, 216(r1), 0, 0 /* qr0 */
/* 804E9818  DB 61 00 C0 */	stfd f27, 0xc0(r1)
/* 804E981C  F3 61 00 C8 */	psq_st f27, 200(r1), 0, 0 /* qr0 */
/* 804E9820  39 61 00 C0 */	addi r11, r1, 0xc0
/* 804E9824  4B E7 89 AC */	b _savegpr_26
/* 804E9828  7C 7A 1B 78 */	mr r26, r3
/* 804E982C  3C 60 80 4F */	lis r3, lit_3789@ha
/* 804E9830  3B C3 E8 AC */	addi r30, r3, lit_3789@l
/* 804E9834  7F 5C D3 78 */	mr r28, r26
/* 804E9838  38 61 00 2C */	addi r3, r1, 0x2c
/* 804E983C  4B B8 E4 2C */	b __ct__11dBgS_LinChkFv
/* 804E9840  3B 60 00 00 */	li r27, 0
/* 804E9844  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E9848  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E984C  80 63 00 00 */	lwz r3, 0(r3)
/* 804E9850  A8 9A 07 26 */	lha r4, 0x726(r26)
/* 804E9854  4B B2 2B 88 */	b mDoMtx_YrotS__FPA4_fs
/* 804E9858  3B 40 00 00 */	li r26, 0
/* 804E985C  3B E0 00 00 */	li r31, 0
/* 804E9860  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804E9864  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804E9868  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 804E986C  C3 7E 00 00 */	lfs f27, 0(r30)
/* 804E9870  C3 9E 00 04 */	lfs f28, 4(r30)
/* 804E9874  C3 BE 00 F0 */	lfs f29, 0xf0(r30)
/* 804E9878  C3 DE 00 44 */	lfs f30, 0x44(r30)
/* 804E987C  C3 FE 00 F4 */	lfs f31, 0xf4(r30)
/* 804E9880  3C 60 80 4F */	lis r3, kado_check_x@ha
/* 804E9884  3B C3 EB 00 */	addi r30, r3, kado_check_x@l
lbl_804E9888:
/* 804E9888  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 804E988C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804E9890  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 804E9894  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804E9898  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 804E989C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804E98A0  EC 01 D8 2A */	fadds f0, f1, f27
/* 804E98A4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804E98A8  D3 81 00 20 */	stfs f28, 0x20(r1)
/* 804E98AC  D3 81 00 24 */	stfs f28, 0x24(r1)
/* 804E98B0  D3 A1 00 28 */	stfs f29, 0x28(r1)
/* 804E98B4  38 61 00 20 */	addi r3, r1, 0x20
/* 804E98B8  38 81 00 08 */	addi r4, r1, 8
/* 804E98BC  4B D8 76 30 */	b MtxPosition__FP4cXyzP4cXyz
/* 804E98C0  38 61 00 14 */	addi r3, r1, 0x14
/* 804E98C4  38 81 00 08 */	addi r4, r1, 8
/* 804E98C8  7C 65 1B 78 */	mr r5, r3
/* 804E98CC  4B E5 D7 C4 */	b PSVECAdd
/* 804E98D0  D3 C1 00 24 */	stfs f30, 0x24(r1)
/* 804E98D4  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 804E98D8  7C 1E FC 2E */	lfsx f0, r30, r31
/* 804E98DC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804E98E0  38 61 00 20 */	addi r3, r1, 0x20
/* 804E98E4  38 81 00 08 */	addi r4, r1, 8
/* 804E98E8  4B D8 76 04 */	b MtxPosition__FP4cXyzP4cXyz
/* 804E98EC  38 61 00 08 */	addi r3, r1, 8
/* 804E98F0  38 81 00 14 */	addi r4, r1, 0x14
/* 804E98F4  7C 65 1B 78 */	mr r5, r3
/* 804E98F8  4B E5 D7 98 */	b PSVECAdd
/* 804E98FC  38 61 00 2C */	addi r3, r1, 0x2c
/* 804E9900  38 81 00 14 */	addi r4, r1, 0x14
/* 804E9904  38 A1 00 08 */	addi r5, r1, 8
/* 804E9908  7F 86 E3 78 */	mr r6, r28
/* 804E990C  4B B8 E4 58 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804E9910  7F A3 EB 78 */	mr r3, r29
/* 804E9914  38 81 00 2C */	addi r4, r1, 0x2c
/* 804E9918  4B B8 AA 9C */	b LineCross__4cBgSFP11cBgS_LinChk
/* 804E991C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804E9920  41 82 00 14 */	beq lbl_804E9934
/* 804E9924  3C 60 80 4F */	lis r3, kado_bit@ha
/* 804E9928  38 63 EA F8 */	addi r3, r3, kado_bit@l
/* 804E992C  7C 03 F8 2E */	lwzx r0, r3, r31
/* 804E9930  7F 7B 03 78 */	or r27, r27, r0
lbl_804E9934:
/* 804E9934  3B 5A 00 01 */	addi r26, r26, 1
/* 804E9938  2C 1A 00 02 */	cmpwi r26, 2
/* 804E993C  3B FF 00 04 */	addi r31, r31, 4
/* 804E9940  41 80 FF 48 */	blt lbl_804E9888
/* 804E9944  2C 1B 00 03 */	cmpwi r27, 3
/* 804E9948  40 82 00 08 */	bne lbl_804E9950
/* 804E994C  3B 60 00 00 */	li r27, 0
lbl_804E9950:
/* 804E9950  38 61 00 2C */	addi r3, r1, 0x2c
/* 804E9954  38 80 FF FF */	li r4, -1
/* 804E9958  4B B8 E3 84 */	b __dt__11dBgS_LinChkFv
/* 804E995C  7F 63 DB 78 */	mr r3, r27
/* 804E9960  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 804E9964  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 804E9968  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 804E996C  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 804E9970  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, 0 /* qr0 */
/* 804E9974  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 804E9978  E3 81 00 D8 */	psq_l f28, 216(r1), 0, 0 /* qr0 */
/* 804E997C  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 804E9980  E3 61 00 C8 */	psq_l f27, 200(r1), 0, 0 /* qr0 */
/* 804E9984  CB 61 00 C0 */	lfd f27, 0xc0(r1)
/* 804E9988  39 61 00 C0 */	addi r11, r1, 0xc0
/* 804E998C  4B E7 88 90 */	b _restgpr_26
/* 804E9990  80 01 01 14 */	lwz r0, 0x114(r1)
/* 804E9994  7C 08 03 A6 */	mtlr r0
/* 804E9998  38 21 01 10 */	addi r1, r1, 0x110
/* 804E999C  4E 80 00 20 */	blr 
