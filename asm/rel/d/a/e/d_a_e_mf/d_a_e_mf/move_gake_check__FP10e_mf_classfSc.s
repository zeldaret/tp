lbl_8070B848:
/* 8070B848  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8070B84C  7C 08 02 A6 */	mflr r0
/* 8070B850  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8070B854  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8070B858  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 8070B85C  39 61 00 90 */	addi r11, r1, 0x90
/* 8070B860  4B C5 69 7C */	b _savegpr_29
/* 8070B864  7C 7D 1B 78 */	mr r29, r3
/* 8070B868  FF E0 08 90 */	fmr f31, f1
/* 8070B86C  7C 9E 23 78 */	mr r30, r4
/* 8070B870  3C 60 80 71 */	lis r3, lit_3828@ha
/* 8070B874  3B E3 39 74 */	addi r31, r3, lit_3828@l
/* 8070B878  38 61 00 20 */	addi r3, r1, 0x20
/* 8070B87C  4B 96 BD 00 */	b __ct__11dBgS_GndChkFv
/* 8070B880  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8070B884  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8070B888  80 63 00 00 */	lwz r3, 0(r3)
/* 8070B88C  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8070B890  4B 90 0B 4C */	b mDoMtx_YrotS__FPA4_fs
/* 8070B894  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8070B898  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8070B89C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8070B8A0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8070B8A4  7F C0 07 75 */	extsb. r0, r30
/* 8070B8A8  41 82 00 10 */	beq lbl_8070B8B8
/* 8070B8AC  FC 00 F8 50 */	fneg f0, f31
/* 8070B8B0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8070B8B4  48 00 00 08 */	b lbl_8070B8BC
lbl_8070B8B8:
/* 8070B8B8  D3 E1 00 1C */	stfs f31, 0x1c(r1)
lbl_8070B8BC:
/* 8070B8BC  38 61 00 14 */	addi r3, r1, 0x14
/* 8070B8C0  38 81 00 08 */	addi r4, r1, 8
/* 8070B8C4  4B B6 56 28 */	b MtxPosition__FP4cXyzP4cXyz
/* 8070B8C8  38 61 00 08 */	addi r3, r1, 8
/* 8070B8CC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8070B8D0  7C 65 1B 78 */	mr r5, r3
/* 8070B8D4  4B C3 B7 BC */	b PSVECAdd
/* 8070B8D8  38 61 00 20 */	addi r3, r1, 0x20
/* 8070B8DC  38 81 00 08 */	addi r4, r1, 8
/* 8070B8E0  4B B5 C4 48 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 8070B8E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8070B8E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8070B8EC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8070B8F0  38 81 00 20 */	addi r4, r1, 0x20
/* 8070B8F4  4B 96 8B AC */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 8070B8F8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8070B8FC  EC 20 08 28 */	fsubs f1, f0, f1
/* 8070B900  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8070B904  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070B908  40 81 00 18 */	ble lbl_8070B920
/* 8070B90C  38 61 00 20 */	addi r3, r1, 0x20
/* 8070B910  38 80 FF FF */	li r4, -1
/* 8070B914  4B 96 BC DC */	b __dt__11dBgS_GndChkFv
/* 8070B918  38 60 00 01 */	li r3, 1
/* 8070B91C  48 00 00 14 */	b lbl_8070B930
lbl_8070B920:
/* 8070B920  38 61 00 20 */	addi r3, r1, 0x20
/* 8070B924  38 80 FF FF */	li r4, -1
/* 8070B928  4B 96 BC C8 */	b __dt__11dBgS_GndChkFv
/* 8070B92C  38 60 00 00 */	li r3, 0
lbl_8070B930:
/* 8070B930  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 8070B934  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8070B938  39 61 00 90 */	addi r11, r1, 0x90
/* 8070B93C  4B C5 68 EC */	b _restgpr_29
/* 8070B940  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8070B944  7C 08 03 A6 */	mtlr r0
/* 8070B948  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8070B94C  4E 80 00 20 */	blr 
