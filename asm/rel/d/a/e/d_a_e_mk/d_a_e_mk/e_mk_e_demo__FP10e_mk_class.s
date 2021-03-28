lbl_80716780:
/* 80716780  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80716784  7C 08 02 A6 */	mflr r0
/* 80716788  90 01 00 94 */	stw r0, 0x94(r1)
/* 8071678C  39 61 00 90 */	addi r11, r1, 0x90
/* 80716790  4B C4 BA 44 */	b _savegpr_27
/* 80716794  7C 7B 1B 78 */	mr r27, r3
/* 80716798  3C 80 80 72 */	lis r4, lit_1109@ha
/* 8071679C  3B C4 CA 68 */	addi r30, r4, lit_1109@l
/* 807167A0  3C 80 80 72 */	lis r4, lit_3777@ha
/* 807167A4  3B E4 C5 44 */	addi r31, r4, lit_3777@l
/* 807167A8  80 83 05 C8 */	lwz r4, 0x5c8(r3)
/* 807167AC  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 807167B0  FC 00 00 1E */	fctiwz f0, f0
/* 807167B4  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 807167B8  80 A1 00 6C */	lwz r5, 0x6c(r1)
/* 807167BC  3B A0 00 01 */	li r29, 1
/* 807167C0  3B 80 00 00 */	li r28, 0
/* 807167C4  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 807167C8  2C 00 00 03 */	cmpwi r0, 3
/* 807167CC  41 82 02 EC */	beq lbl_80716AB8
/* 807167D0  40 80 00 34 */	bge lbl_80716804
/* 807167D4  2C 00 00 00 */	cmpwi r0, 0
/* 807167D8  41 82 00 78 */	beq lbl_80716850
/* 807167DC  40 80 00 1C */	bge lbl_807167F8
/* 807167E0  2C 00 FF 9D */	cmpwi r0, -99
/* 807167E4  41 82 06 7C */	beq lbl_80716E60
/* 807167E8  40 80 06 78 */	bge lbl_80716E60
/* 807167EC  2C 00 FF 9C */	cmpwi r0, -100
/* 807167F0  40 80 00 3C */	bge lbl_8071682C
/* 807167F4  48 00 06 6C */	b lbl_80716E60
lbl_807167F8:
/* 807167F8  2C 00 00 02 */	cmpwi r0, 2
/* 807167FC  40 80 01 90 */	bge lbl_8071698C
/* 80716800  48 00 00 94 */	b lbl_80716894
lbl_80716804:
/* 80716804  2C 00 00 07 */	cmpwi r0, 7
/* 80716808  41 82 04 CC */	beq lbl_80716CD4
/* 8071680C  40 80 00 14 */	bge lbl_80716820
/* 80716810  2C 00 00 05 */	cmpwi r0, 5
/* 80716814  41 82 04 28 */	beq lbl_80716C3C
/* 80716818  40 80 04 50 */	bge lbl_80716C68
/* 8071681C  48 00 03 4C */	b lbl_80716B68
lbl_80716820:
/* 80716820  2C 00 00 64 */	cmpwi r0, 0x64
/* 80716824  41 82 06 3C */	beq lbl_80716E60
/* 80716828  48 00 06 38 */	b lbl_80716E60
lbl_8071682C:
/* 8071682C  38 80 00 0A */	li r4, 0xa
/* 80716830  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80716834  38 A0 00 02 */	li r5, 2
/* 80716838  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8071683C  4B FF D9 41 */	bl anm_init__FP10e_mk_classifUcf
/* 80716840  A8 7B 05 B4 */	lha r3, 0x5b4(r27)
/* 80716844  38 03 00 01 */	addi r0, r3, 1
/* 80716848  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 8071684C  48 00 06 14 */	b lbl_80716E60
lbl_80716850:
/* 80716850  38 80 00 12 */	li r4, 0x12
/* 80716854  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80716858  38 A0 00 00 */	li r5, 0
/* 8071685C  FC 40 08 90 */	fmr f2, f1
/* 80716860  4B FF D9 1D */	bl anm_init__FP10e_mk_classifUcf
/* 80716864  38 60 00 01 */	li r3, 1
/* 80716868  B0 7B 05 B4 */	sth r3, 0x5b4(r27)
/* 8071686C  38 00 00 02 */	li r0, 2
/* 80716870  B0 1B 0C 30 */	sth r0, 0xc30(r27)
/* 80716874  B0 7B 0C 32 */	sth r3, 0xc32(r27)
/* 80716878  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8071687C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80716880  38 80 00 6C */	li r4, 0x6c
/* 80716884  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80716888  7C 05 07 74 */	extsb r5, r0
/* 8071688C  4B 91 E9 74 */	b onSwitch__10dSv_info_cFii
/* 80716890  48 00 05 D0 */	b lbl_80716E60
lbl_80716894:
/* 80716894  38 60 00 01 */	li r3, 1
/* 80716898  88 04 00 11 */	lbz r0, 0x11(r4)
/* 8071689C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807168A0  40 82 00 18 */	bne lbl_807168B8
/* 807168A4  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 807168A8  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 807168AC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807168B0  41 82 00 08 */	beq lbl_807168B8
/* 807168B4  38 60 00 00 */	li r3, 0
lbl_807168B8:
/* 807168B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807168BC  41 82 05 A4 */	beq lbl_80716E60
/* 807168C0  7F 63 DB 78 */	mr r3, r27
/* 807168C4  38 80 00 11 */	li r4, 0x11
/* 807168C8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807168CC  38 A0 00 02 */	li r5, 2
/* 807168D0  FC 40 08 90 */	fmr f2, f1
/* 807168D4  4B FF D8 A9 */	bl anm_init__FP10e_mk_classifUcf
/* 807168D8  38 00 00 02 */	li r0, 2
/* 807168DC  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 807168E0  A8 7E 00 A0 */	lha r3, 0xa0(r30)
/* 807168E4  38 03 C0 00 */	addi r0, r3, -16384
/* 807168E8  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 807168EC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807168F0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807168F4  80 63 00 00 */	lwz r3, 0(r3)
/* 807168F8  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 807168FC  4B 8F 5A E0 */	b mDoMtx_YrotS__FPA4_fs
/* 80716900  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80716904  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80716908  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8071690C  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80716910  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80716914  38 61 00 5C */	addi r3, r1, 0x5c
/* 80716918  38 81 00 50 */	addi r4, r1, 0x50
/* 8071691C  4B B5 A5 D0 */	b MtxPosition__FP4cXyzP4cXyz
/* 80716920  38 61 00 44 */	addi r3, r1, 0x44
/* 80716924  38 9E 00 94 */	addi r4, r30, 0x94
/* 80716928  38 A1 00 50 */	addi r5, r1, 0x50
/* 8071692C  4B B5 01 B8 */	b __pl__4cXyzCFRC3Vec
/* 80716930  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80716934  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 80716938  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8071693C  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 80716940  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80716944  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 80716948  38 61 00 38 */	addi r3, r1, 0x38
/* 8071694C  38 9E 00 94 */	addi r4, r30, 0x94
/* 80716950  38 A1 00 50 */	addi r5, r1, 0x50
/* 80716954  4B B5 01 90 */	b __pl__4cXyzCFRC3Vec
/* 80716958  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8071695C  D0 1B 04 BC */	stfs f0, 0x4bc(r27)
/* 80716960  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80716964  D0 1B 04 C0 */	stfs f0, 0x4c0(r27)
/* 80716968  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8071696C  D0 1B 04 C4 */	stfs f0, 0x4c4(r27)
/* 80716970  38 00 00 04 */	li r0, 4
/* 80716974  B0 1B 0C 32 */	sth r0, 0xc32(r27)
/* 80716978  38 00 00 00 */	li r0, 0
/* 8071697C  B0 1B 0C 34 */	sth r0, 0xc34(r27)
/* 80716980  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80716984  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 80716988  48 00 04 D8 */	b lbl_80716E60
lbl_8071698C:
/* 8071698C  80 1B 07 8C */	lwz r0, 0x78c(r27)
/* 80716990  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80716994  41 82 00 0C */	beq lbl_807169A0
/* 80716998  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8071699C  D0 1B 05 2C */	stfs f0, 0x52c(r27)
lbl_807169A0:
/* 807169A0  2C 05 00 01 */	cmpwi r5, 1
/* 807169A4  41 82 00 0C */	beq lbl_807169B0
/* 807169A8  2C 05 00 12 */	cmpwi r5, 0x12
/* 807169AC  40 82 00 40 */	bne lbl_807169EC
lbl_807169B0:
/* 807169B0  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 807169B4  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 807169B8  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 807169BC  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 807169C0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070078@ha */
/* 807169C4  38 03 00 78 */	addi r0, r3, 0x0078 /* 0x00070078@l */
/* 807169C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 807169CC  38 7B 06 10 */	addi r3, r27, 0x610
/* 807169D0  38 81 00 10 */	addi r4, r1, 0x10
/* 807169D4  38 A0 00 00 */	li r5, 0
/* 807169D8  38 C0 FF FF */	li r6, -1
/* 807169DC  81 9B 06 10 */	lwz r12, 0x610(r27)
/* 807169E0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807169E4  7D 89 03 A6 */	mtctr r12
/* 807169E8  4E 80 04 21 */	bctrl 
lbl_807169EC:
/* 807169EC  38 61 00 2C */	addi r3, r1, 0x2c
/* 807169F0  38 9E 00 94 */	addi r4, r30, 0x94
/* 807169F4  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 807169F8  4B B5 01 3C */	b __mi__4cXyzCFRC3Vec
/* 807169FC  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80716A00  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80716A04  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80716A08  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80716A0C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80716A10  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80716A14  EC 21 00 72 */	fmuls f1, f1, f1
/* 80716A18  EC 00 00 32 */	fmuls f0, f0, f0
/* 80716A1C  EC 21 00 2A */	fadds f1, f1, f0
/* 80716A20  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80716A24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80716A28  40 81 00 0C */	ble lbl_80716A34
/* 80716A2C  FC 00 08 34 */	frsqrte f0, f1
/* 80716A30  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80716A34:
/* 80716A34  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80716A38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80716A3C  40 80 04 24 */	bge lbl_80716E60
/* 80716A40  3B A0 00 02 */	li r29, 2
/* 80716A44  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80716A48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80716A4C  40 80 04 14 */	bge lbl_80716E60
/* 80716A50  38 00 00 03 */	li r0, 3
/* 80716A54  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 80716A58  7F 63 DB 78 */	mr r3, r27
/* 80716A5C  38 80 00 10 */	li r4, 0x10
/* 80716A60  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80716A64  38 A0 00 00 */	li r5, 0
/* 80716A68  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80716A6C  4B FF D7 11 */	bl anm_init__FP10e_mk_classifUcf
/* 80716A70  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80716A74  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80716A78  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 80716A7C  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80716A80  38 00 00 28 */	li r0, 0x28
/* 80716A84  B0 1B 06 FC */	sth r0, 0x6fc(r27)
/* 80716A88  3B 80 00 3C */	li r28, 0x3c
/* 80716A8C  38 00 00 00 */	li r0, 0
/* 80716A90  90 1E 01 24 */	stw r0, 0x124(r30)
/* 80716A94  3C 60 80 71 */	lis r3, s_h_sub__FPvPv@ha
/* 80716A98  38 63 45 34 */	addi r3, r3, s_h_sub__FPvPv@l
/* 80716A9C  7F 64 DB 78 */	mr r4, r27
/* 80716AA0  4B 90 A8 98 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80716AA4  38 00 00 01 */	li r0, 1
/* 80716AA8  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80716AAC  80 63 00 20 */	lwz r3, 0x20(r3)
/* 80716AB0  90 03 07 38 */	stw r0, 0x738(r3)
/* 80716AB4  48 00 03 AC */	b lbl_80716E60
lbl_80716AB8:
/* 80716AB8  3B A0 00 02 */	li r29, 2
/* 80716ABC  38 00 00 00 */	li r0, 0
/* 80716AC0  B0 1B 05 D4 */	sth r0, 0x5d4(r27)
/* 80716AC4  A8 1B 06 FC */	lha r0, 0x6fc(r27)
/* 80716AC8  2C 00 00 0C */	cmpwi r0, 0xc
/* 80716ACC  40 80 00 44 */	bge lbl_80716B10
/* 80716AD0  54 00 08 3C */	slwi r0, r0, 1
/* 80716AD4  C8 3F 00 B0 */	lfd f1, 0xb0(r31)
/* 80716AD8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80716ADC  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80716AE0  3C 00 43 30 */	lis r0, 0x4330
/* 80716AE4  90 01 00 68 */	stw r0, 0x68(r1)
/* 80716AE8  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 80716AEC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80716AF0  D0 1B 05 D8 */	stfs f0, 0x5d8(r27)
/* 80716AF4  C0 3B 05 D8 */	lfs f1, 0x5d8(r27)
/* 80716AF8  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80716AFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80716B00  4C 41 13 82 */	cror 2, 1, 2
/* 80716B04  40 82 00 0C */	bne lbl_80716B10
/* 80716B08  EC 01 00 28 */	fsubs f0, f1, f0
/* 80716B0C  D0 1B 05 D8 */	stfs f0, 0x5d8(r27)
lbl_80716B10:
/* 80716B10  A8 1B 06 FC */	lha r0, 0x6fc(r27)
/* 80716B14  2C 00 00 00 */	cmpwi r0, 0
/* 80716B18  40 82 03 48 */	bne lbl_80716E60
/* 80716B1C  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80716B20  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 80716B24  C0 3B 04 FC */	lfs f1, 0x4fc(r27)
/* 80716B28  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80716B2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80716B30  40 80 03 30 */	bge lbl_80716E60
/* 80716B34  7F 63 DB 78 */	mr r3, r27
/* 80716B38  38 80 00 0E */	li r4, 0xe
/* 80716B3C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80716B40  38 A0 00 00 */	li r5, 0
/* 80716B44  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80716B48  4B FF D6 35 */	bl anm_init__FP10e_mk_classifUcf
/* 80716B4C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80716B50  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80716B54  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80716B58  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 80716B5C  38 00 00 04 */	li r0, 4
/* 80716B60  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 80716B64  48 00 02 FC */	b lbl_80716E60
lbl_80716B68:
/* 80716B68  80 1B 07 8C */	lwz r0, 0x78c(r27)
/* 80716B6C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80716B70  41 82 02 F0 */	beq lbl_80716E60
/* 80716B74  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80716B78  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80716B7C  38 00 00 02 */	li r0, 2
/* 80716B80  98 1B 07 1B */	stb r0, 0x71b(r27)
/* 80716B84  3B 80 00 1E */	li r28, 0x1e
/* 80716B88  38 00 00 64 */	li r0, 0x64
/* 80716B8C  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 80716B90  38 00 00 01 */	li r0, 1
/* 80716B94  98 1B 05 E0 */	stb r0, 0x5e0(r27)
/* 80716B98  38 80 00 2B */	li r4, 0x2b
/* 80716B9C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80716BA0  38 A0 00 02 */	li r5, 2
/* 80716BA4  FC 40 08 90 */	fmr f2, f1
/* 80716BA8  4B FF D6 81 */	bl ok_anm_init__FP10e_mk_classifUcf
/* 80716BAC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80716BB0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80716BB4  80 63 00 00 */	lwz r3, 0(r3)
/* 80716BB8  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 80716BBC  4B 8F 58 20 */	b mDoMtx_YrotS__FPA4_fs
/* 80716BC0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80716BC4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80716BC8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80716BCC  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80716BD0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80716BD4  38 61 00 5C */	addi r3, r1, 0x5c
/* 80716BD8  38 81 00 50 */	addi r4, r1, 0x50
/* 80716BDC  4B B5 A3 10 */	b MtxPosition__FP4cXyzP4cXyz
/* 80716BE0  38 7B 05 E4 */	addi r3, r27, 0x5e4
/* 80716BE4  38 81 00 50 */	addi r4, r1, 0x50
/* 80716BE8  7C 65 1B 78 */	mr r5, r3
/* 80716BEC  4B C3 04 A4 */	b PSVECAdd
/* 80716BF0  A8 1B 04 E4 */	lha r0, 0x4e4(r27)
/* 80716BF4  B0 1B 05 F0 */	sth r0, 0x5f0(r27)
/* 80716BF8  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 80716BFC  B0 1B 05 F2 */	sth r0, 0x5f2(r27)
/* 80716C00  A8 1B 04 E8 */	lha r0, 0x4e8(r27)
/* 80716C04  B0 1B 05 F4 */	sth r0, 0x5f4(r27)
/* 80716C08  38 00 40 00 */	li r0, 0x4000
/* 80716C0C  B0 1B 05 F0 */	sth r0, 0x5f0(r27)
/* 80716C10  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80716C14  D0 1B 05 FC */	stfs f0, 0x5fc(r27)
/* 80716C18  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80716C1C  D0 1B 06 00 */	stfs f0, 0x600(r27)
/* 80716C20  38 00 00 05 */	li r0, 5
/* 80716C24  B0 1B 0C 32 */	sth r0, 0xc32(r27)
/* 80716C28  38 00 00 00 */	li r0, 0
/* 80716C2C  B0 1B 0C 34 */	sth r0, 0xc34(r27)
/* 80716C30  38 00 00 01 */	li r0, 1
/* 80716C34  98 1B 06 0E */	stb r0, 0x60e(r27)
/* 80716C38  48 00 02 28 */	b lbl_80716E60
lbl_80716C3C:
/* 80716C3C  38 80 00 16 */	li r4, 0x16
/* 80716C40  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80716C44  38 A0 00 00 */	li r5, 0
/* 80716C48  FC 40 08 90 */	fmr f2, f1
/* 80716C4C  4B FF D5 31 */	bl anm_init__FP10e_mk_classifUcf
/* 80716C50  38 00 00 3C */	li r0, 0x3c
/* 80716C54  B0 1B 05 D4 */	sth r0, 0x5d4(r27)
/* 80716C58  A8 7B 05 B4 */	lha r3, 0x5b4(r27)
/* 80716C5C  38 03 00 01 */	addi r0, r3, 1
/* 80716C60  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 80716C64  48 00 01 FC */	b lbl_80716E60
lbl_80716C68:
/* 80716C68  38 60 00 01 */	li r3, 1
/* 80716C6C  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80716C70  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80716C74  40 82 00 18 */	bne lbl_80716C8C
/* 80716C78  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80716C7C  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80716C80  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80716C84  41 82 00 08 */	beq lbl_80716C8C
/* 80716C88  38 60 00 00 */	li r3, 0
lbl_80716C8C:
/* 80716C8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80716C90  41 82 01 D0 */	beq lbl_80716E60
/* 80716C94  7F 63 DB 78 */	mr r3, r27
/* 80716C98  38 80 00 0D */	li r4, 0xd
/* 80716C9C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80716CA0  38 A0 00 00 */	li r5, 0
/* 80716CA4  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80716CA8  4B FF D4 D5 */	bl anm_init__FP10e_mk_classifUcf
/* 80716CAC  A8 7B 05 B4 */	lha r3, 0x5b4(r27)
/* 80716CB0  38 03 00 01 */	addi r0, r3, 1
/* 80716CB4  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 80716CB8  38 00 00 7D */	li r0, 0x7d
/* 80716CBC  B0 1B 05 D4 */	sth r0, 0x5d4(r27)
/* 80716CC0  38 00 00 08 */	li r0, 8
/* 80716CC4  B0 1B 0C 32 */	sth r0, 0xc32(r27)
/* 80716CC8  38 00 00 00 */	li r0, 0
/* 80716CCC  B0 1B 0C 34 */	sth r0, 0xc34(r27)
/* 80716CD0  48 00 01 90 */	b lbl_80716E60
lbl_80716CD4:
/* 80716CD4  2C 05 00 90 */	cmpwi r5, 0x90
/* 80716CD8  40 82 01 88 */	bne lbl_80716E60
/* 80716CDC  38 00 00 00 */	li r0, 0
/* 80716CE0  98 1B 07 18 */	stb r0, 0x718(r27)
/* 80716CE4  38 00 00 64 */	li r0, 0x64
/* 80716CE8  B0 1B 06 FA */	sth r0, 0x6fa(r27)
/* 80716CEC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80716CF0  D0 1B 06 DC */	stfs f0, 0x6dc(r27)
/* 80716CF4  D0 1B 06 E0 */	stfs f0, 0x6e0(r27)
/* 80716CF8  D0 1B 06 E4 */	stfs f0, 0x6e4(r27)
/* 80716CFC  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 80716D00  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80716D04  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 80716D08  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 80716D0C  D0 1B 05 B8 */	stfs f0, 0x5b8(r27)
/* 80716D10  38 7E 00 94 */	addi r3, r30, 0x94
/* 80716D14  C0 03 00 04 */	lfs f0, 4(r3)
/* 80716D18  D0 1B 05 BC */	stfs f0, 0x5bc(r27)
/* 80716D1C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80716D20  D0 1B 05 C0 */	stfs f0, 0x5c0(r27)
/* 80716D24  C0 3B 05 BC */	lfs f1, 0x5bc(r27)
/* 80716D28  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80716D2C  EC 01 00 2A */	fadds f0, f1, f0
/* 80716D30  D0 1B 05 BC */	stfs f0, 0x5bc(r27)
/* 80716D34  38 61 00 20 */	addi r3, r1, 0x20
/* 80716D38  38 9B 05 B8 */	addi r4, r27, 0x5b8
/* 80716D3C  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80716D40  4B B4 FD F4 */	b __mi__4cXyzCFRC3Vec
/* 80716D44  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80716D48  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80716D4C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80716D50  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80716D54  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80716D58  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 80716D5C  4B B5 09 18 */	b cM_atan2s__Fff
/* 80716D60  B0 7B 04 DE */	sth r3, 0x4de(r27)
/* 80716D64  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80716D68  EC 20 00 32 */	fmuls f1, f0, f0
/* 80716D6C  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80716D70  EC 00 00 32 */	fmuls f0, f0, f0
/* 80716D74  EC 41 00 2A */	fadds f2, f1, f0
/* 80716D78  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80716D7C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80716D80  40 81 00 0C */	ble lbl_80716D8C
/* 80716D84  FC 00 10 34 */	frsqrte f0, f2
/* 80716D88  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80716D8C:
/* 80716D8C  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 80716D90  4B B5 08 E4 */	b cM_atan2s__Fff
/* 80716D94  7C 03 00 D0 */	neg r0, r3
/* 80716D98  B0 1B 04 DC */	sth r0, 0x4dc(r27)
/* 80716D9C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80716DA0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80716DA4  80 63 00 00 */	lwz r3, 0(r3)
/* 80716DA8  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 80716DAC  4B 8F 56 30 */	b mDoMtx_YrotS__FPA4_fs
/* 80716DB0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80716DB4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80716DB8  80 63 00 00 */	lwz r3, 0(r3)
/* 80716DBC  A8 9B 04 DC */	lha r4, 0x4dc(r27)
/* 80716DC0  4B 8F 55 DC */	b mDoMtx_XrotM__FPA4_fs
/* 80716DC4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80716DC8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80716DCC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80716DD0  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80716DD4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80716DD8  38 61 00 5C */	addi r3, r1, 0x5c
/* 80716DDC  38 9B 04 F8 */	addi r4, r27, 0x4f8
/* 80716DE0  4B B5 A1 0C */	b MtxPosition__FP4cXyzP4cXyz
/* 80716DE4  38 00 00 01 */	li r0, 1
/* 80716DE8  98 1B 06 BE */	stb r0, 0x6be(r27)
/* 80716DEC  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80716DF0  D0 1B 06 C0 */	stfs f0, 0x6c0(r27)
/* 80716DF4  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80716DF8  D0 1B 06 C4 */	stfs f0, 0x6c4(r27)
/* 80716DFC  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80716E00  D0 1B 06 C8 */	stfs f0, 0x6c8(r27)
/* 80716E04  C0 1B 05 B8 */	lfs f0, 0x5b8(r27)
/* 80716E08  D0 1B 06 CC */	stfs f0, 0x6cc(r27)
/* 80716E0C  C0 1B 05 BC */	lfs f0, 0x5bc(r27)
/* 80716E10  D0 1B 06 D0 */	stfs f0, 0x6d0(r27)
/* 80716E14  C0 1B 05 C0 */	lfs f0, 0x5c0(r27)
/* 80716E18  D0 1B 06 D4 */	stfs f0, 0x6d4(r27)
/* 80716E1C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007007D@ha */
/* 80716E20  38 03 00 7D */	addi r0, r3, 0x007D /* 0x0007007D@l */
/* 80716E24  90 01 00 0C */	stw r0, 0xc(r1)
/* 80716E28  38 7B 06 10 */	addi r3, r27, 0x610
/* 80716E2C  38 81 00 0C */	addi r4, r1, 0xc
/* 80716E30  38 A0 00 00 */	li r5, 0
/* 80716E34  38 C0 FF FF */	li r6, -1
/* 80716E38  81 9B 06 10 */	lwz r12, 0x610(r27)
/* 80716E3C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80716E40  7D 89 03 A6 */	mtctr r12
/* 80716E44  4E 80 04 21 */	bctrl 
/* 80716E48  38 00 00 01 */	li r0, 1
/* 80716E4C  B0 1B 06 B6 */	sth r0, 0x6b6(r27)
/* 80716E50  38 00 00 04 */	li r0, 4
/* 80716E54  B0 1B 05 B4 */	sth r0, 0x5b4(r27)
/* 80716E58  38 60 00 00 */	li r3, 0
/* 80716E5C  48 00 00 D4 */	b lbl_80716F30
lbl_80716E60:
/* 80716E60  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80716E64  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80716E68  80 63 00 00 */	lwz r3, 0(r3)
/* 80716E6C  A8 9B 04 DE */	lha r4, 0x4de(r27)
/* 80716E70  4B 8F 55 6C */	b mDoMtx_YrotS__FPA4_fs
/* 80716E74  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80716E78  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80716E7C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80716E80  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 80716E84  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80716E88  38 61 00 5C */	addi r3, r1, 0x5c
/* 80716E8C  38 81 00 50 */	addi r4, r1, 0x50
/* 80716E90  4B B5 A0 5C */	b MtxPosition__FP4cXyzP4cXyz
/* 80716E94  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80716E98  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 80716E9C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80716EA0  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 80716EA4  7F 80 07 75 */	extsb. r0, r28
/* 80716EA8  41 82 00 84 */	beq lbl_80716F2C
/* 80716EAC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80716EB0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80716EB4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80716EB8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80716EBC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80716EC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80716EC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80716EC8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80716ECC  38 80 00 05 */	li r4, 5
/* 80716ED0  38 A0 00 01 */	li r5, 1
/* 80716ED4  38 C1 00 14 */	addi r6, r1, 0x14
/* 80716ED8  4B 95 8B 4C */	b StartShock__12dVibration_cFii4cXyz
/* 80716EDC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070001@ha */
/* 80716EE0  38 03 00 01 */	addi r0, r3, 0x0001 /* 0x00070001@l */
/* 80716EE4  90 01 00 08 */	stw r0, 8(r1)
/* 80716EE8  38 7B 06 10 */	addi r3, r27, 0x610
/* 80716EEC  38 81 00 08 */	addi r4, r1, 8
/* 80716EF0  38 A0 00 00 */	li r5, 0
/* 80716EF4  38 C0 FF FF */	li r6, -1
/* 80716EF8  81 9B 06 10 */	lwz r12, 0x610(r27)
/* 80716EFC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80716F00  7D 89 03 A6 */	mtctr r12
/* 80716F04  4E 80 04 21 */	bctrl 
/* 80716F08  7F 80 07 74 */	extsb r0, r28
/* 80716F0C  C8 3F 00 B0 */	lfd f1, 0xb0(r31)
/* 80716F10  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80716F14  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80716F18  3C 00 43 30 */	lis r0, 0x4330
/* 80716F1C  90 01 00 68 */	stw r0, 0x68(r1)
/* 80716F20  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 80716F24  EC 00 08 28 */	fsubs f0, f0, f1
/* 80716F28  D0 1B 0C 98 */	stfs f0, 0xc98(r27)
lbl_80716F2C:
/* 80716F2C  7F A3 EB 78 */	mr r3, r29
lbl_80716F30:
/* 80716F30  39 61 00 90 */	addi r11, r1, 0x90
/* 80716F34  4B C4 B2 EC */	b _restgpr_27
/* 80716F38  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80716F3C  7C 08 03 A6 */	mtlr r0
/* 80716F40  38 21 00 90 */	addi r1, r1, 0x90
/* 80716F44  4E 80 00 20 */	blr 
