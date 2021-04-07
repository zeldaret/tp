lbl_80C528E0:
/* 80C528E0  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80C528E4  7C 08 02 A6 */	mflr r0
/* 80C528E8  90 01 01 04 */	stw r0, 0x104(r1)
/* 80C528EC  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 80C528F0  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, 0 /* qr0 */
/* 80C528F4  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 80C528F8  F3 C1 00 E8 */	psq_st f30, 232(r1), 0, 0 /* qr0 */
/* 80C528FC  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80C52900  4B 70 F8 CD */	bl _savegpr_25
/* 80C52904  7C 7F 1B 78 */	mr r31, r3
/* 80C52908  3C 60 80 C5 */	lis r3, M_attr__14daObjLndRope_c@ha /* 0x80C53304@ha */
/* 80C5290C  3B C3 33 04 */	addi r30, r3, M_attr__14daObjLndRope_c@l /* 0x80C53304@l */
/* 80C52910  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80C52914  80 63 00 00 */	lwz r3, 0(r3)
/* 80C52918  3B 23 00 0C */	addi r25, r3, 0xc
/* 80C5291C  3B 5F 15 F0 */	addi r26, r31, 0x15f0
/* 80C52920  3B 7F 16 8C */	addi r27, r31, 0x168c
/* 80C52924  38 61 00 8C */	addi r3, r1, 0x8c
/* 80C52928  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C5292C  4B 40 8C 05 */	bl dKyw_get_AllWind_vecpow__FP4cXyz
/* 80C52930  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80C52934  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80C52938  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80C5293C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80C52940  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80C52944  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80C52948  4B 61 4F 25 */	bl cM_rnd__Fv
/* 80C5294C  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80C52950  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C52954  40 80 00 24 */	bge lbl_80C52978
/* 80C52958  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80C5295C  7C 64 1B 78 */	mr r4, r3
/* 80C52960  C0 3F 17 6C */	lfs f1, 0x176c(r31)
/* 80C52964  38 BE 00 00 */	addi r5, r30, 0
/* 80C52968  C0 05 00 04 */	lfs f0, 4(r5)
/* 80C5296C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C52970  4B 6F 47 69 */	bl PSVECScale
/* 80C52974  48 00 00 14 */	b lbl_80C52988
lbl_80C52978:
/* 80C52978  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80C5297C  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80C52980  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80C52984  D0 01 00 AC */	stfs f0, 0xac(r1)
lbl_80C52988:
/* 80C52988  3B 80 00 01 */	li r28, 1
/* 80C5298C  C3 FE 00 A4 */	lfs f31, 0xa4(r30)
lbl_80C52990:
/* 80C52990  C0 1B 00 04 */	lfs f0, 4(r27)
/* 80C52994  D0 19 00 04 */	stfs f0, 4(r25)
/* 80C52998  38 61 00 80 */	addi r3, r1, 0x80
/* 80C5299C  7F 24 CB 78 */	mr r4, r25
/* 80C529A0  38 B9 FF F4 */	addi r5, r25, -12
/* 80C529A4  4B 61 41 91 */	bl __mi__4cXyzCFRC3Vec
/* 80C529A8  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80C529AC  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80C529B0  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 80C529B4  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 80C529B8  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80C529BC  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80C529C0  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 80C529C4  EC 01 00 2A */	fadds f0, f1, f0
/* 80C529C8  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80C529CC  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80C529D0  7F 44 D3 78 */	mr r4, r26
/* 80C529D4  7C 65 1B 78 */	mr r5, r3
/* 80C529D8  4B 6F 46 B9 */	bl PSVECAdd
/* 80C529DC  4B 61 4E 91 */	bl cM_rnd__Fv
/* 80C529E0  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80C529E4  40 80 00 14 */	bge lbl_80C529F8
/* 80C529E8  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80C529EC  38 81 00 A4 */	addi r4, r1, 0xa4
/* 80C529F0  7C 65 1B 78 */	mr r5, r3
/* 80C529F4  4B 6F 46 9D */	bl PSVECAdd
lbl_80C529F8:
/* 80C529F8  38 61 00 74 */	addi r3, r1, 0x74
/* 80C529FC  38 81 00 B0 */	addi r4, r1, 0xb0
/* 80C52A00  4B 61 45 49 */	bl normalizeZP__4cXyzFv
/* 80C52A04  38 61 00 68 */	addi r3, r1, 0x68
/* 80C52A08  38 81 00 B0 */	addi r4, r1, 0xb0
/* 80C52A0C  C0 3F 17 6C */	lfs f1, 0x176c(r31)
/* 80C52A10  4B 61 41 75 */	bl __ml__4cXyzCFf
/* 80C52A14  38 61 00 5C */	addi r3, r1, 0x5c
/* 80C52A18  38 99 FF F4 */	addi r4, r25, -12
/* 80C52A1C  38 A1 00 68 */	addi r5, r1, 0x68
/* 80C52A20  4B 61 40 C5 */	bl __pl__4cXyzCFRC3Vec
/* 80C52A24  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80C52A28  D0 19 00 00 */	stfs f0, 0(r25)
/* 80C52A2C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80C52A30  D0 19 00 04 */	stfs f0, 4(r25)
/* 80C52A34  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80C52A38  D0 19 00 08 */	stfs f0, 8(r25)
/* 80C52A3C  3B 9C 00 01 */	addi r28, r28, 1
/* 80C52A40  2C 1C 00 0E */	cmpwi r28, 0xe
/* 80C52A44  3B 39 00 0C */	addi r25, r25, 0xc
/* 80C52A48  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80C52A4C  3B 5A 00 0C */	addi r26, r26, 0xc
/* 80C52A50  41 80 FF 40 */	blt lbl_80C52990
/* 80C52A54  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80C52A58  80 63 00 00 */	lwz r3, 0(r3)
/* 80C52A5C  3B 83 00 9C */	addi r28, r3, 0x9c
/* 80C52A60  3B 7F 16 80 */	addi r27, r31, 0x1680
/* 80C52A64  3B 20 00 0D */	li r25, 0xd
lbl_80C52A68:
/* 80C52A68  38 61 00 50 */	addi r3, r1, 0x50
/* 80C52A6C  7F 84 E3 78 */	mr r4, r28
/* 80C52A70  38 BC 00 0C */	addi r5, r28, 0xc
/* 80C52A74  4B 61 40 C1 */	bl __mi__4cXyzCFRC3Vec
/* 80C52A78  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80C52A7C  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80C52A80  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 80C52A84  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 80C52A88  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80C52A8C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80C52A90  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 80C52A94  EC 01 00 2A */	fadds f0, f1, f0
/* 80C52A98  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80C52A9C  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80C52AA0  7F 64 DB 78 */	mr r4, r27
/* 80C52AA4  7C 65 1B 78 */	mr r5, r3
/* 80C52AA8  4B 6F 45 E9 */	bl PSVECAdd
/* 80C52AAC  38 61 00 44 */	addi r3, r1, 0x44
/* 80C52AB0  38 81 00 B0 */	addi r4, r1, 0xb0
/* 80C52AB4  4B 61 44 95 */	bl normalizeZP__4cXyzFv
/* 80C52AB8  38 61 00 38 */	addi r3, r1, 0x38
/* 80C52ABC  38 81 00 B0 */	addi r4, r1, 0xb0
/* 80C52AC0  C0 3F 17 6C */	lfs f1, 0x176c(r31)
/* 80C52AC4  4B 61 40 C1 */	bl __ml__4cXyzCFf
/* 80C52AC8  38 61 00 2C */	addi r3, r1, 0x2c
/* 80C52ACC  38 9C 00 0C */	addi r4, r28, 0xc
/* 80C52AD0  38 A1 00 38 */	addi r5, r1, 0x38
/* 80C52AD4  4B 61 40 11 */	bl __pl__4cXyzCFRC3Vec
/* 80C52AD8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C52ADC  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80C52AE0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80C52AE4  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80C52AE8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80C52AEC  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80C52AF0  37 39 FF FF */	addic. r25, r25, -1
/* 80C52AF4  3B 9C FF F4 */	addi r28, r28, -12
/* 80C52AF8  3B 7B FF F4 */	addi r27, r27, -12
/* 80C52AFC  41 81 FF 6C */	bgt lbl_80C52A68
/* 80C52B00  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80C52B04  83 A3 00 00 */	lwz r29, 0(r3)
/* 80C52B08  3B 9D 00 0C */	addi r28, r29, 0xc
/* 80C52B0C  3B 7F 15 F0 */	addi r27, r31, 0x15f0
/* 80C52B10  3B 5F 16 8C */	addi r26, r31, 0x168c
/* 80C52B14  3B 20 00 01 */	li r25, 1
/* 80C52B18  3B DE 00 00 */	addi r30, r30, 0
/* 80C52B1C  C3 FE 00 0C */	lfs f31, 0xc(r30)
lbl_80C52B20:
/* 80C52B20  C0 9D 00 04 */	lfs f4, 4(r29)
/* 80C52B24  C0 7F 17 60 */	lfs f3, 0x1760(r31)
/* 80C52B28  88 1F 17 70 */	lbz r0, 0x1770(r31)
/* 80C52B2C  28 00 00 00 */	cmplwi r0, 0
/* 80C52B30  41 82 00 24 */	beq lbl_80C52B54
/* 80C52B34  C0 5F 17 68 */	lfs f2, 0x1768(r31)
/* 80C52B38  C0 3C 00 00 */	lfs f1, 0(r28)
/* 80C52B3C  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80C52B40  80 63 00 00 */	lwz r3, 0(r3)
/* 80C52B44  C0 03 00 00 */	lfs f0, 0(r3)
/* 80C52B48  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C52B4C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C52B50  48 00 00 20 */	b lbl_80C52B70
lbl_80C52B54:
/* 80C52B54  C0 5F 17 68 */	lfs f2, 0x1768(r31)
/* 80C52B58  C0 3C 00 08 */	lfs f1, 8(r28)
/* 80C52B5C  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80C52B60  80 63 00 00 */	lwz r3, 0(r3)
/* 80C52B64  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C52B68  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C52B6C  EC 02 00 32 */	fmuls f0, f2, f0
lbl_80C52B70:
/* 80C52B70  EC 03 00 32 */	fmuls f0, f3, f0
/* 80C52B74  EF C4 00 2A */	fadds f30, f4, f0
/* 80C52B78  38 61 00 20 */	addi r3, r1, 0x20
/* 80C52B7C  7F 84 E3 78 */	mr r4, r28
/* 80C52B80  7F 45 D3 78 */	mr r5, r26
/* 80C52B84  4B 61 3F B1 */	bl __mi__4cXyzCFRC3Vec
/* 80C52B88  38 61 00 14 */	addi r3, r1, 0x14
/* 80C52B8C  38 81 00 20 */	addi r4, r1, 0x20
/* 80C52B90  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80C52B94  4B 61 3F F1 */	bl __ml__4cXyzCFf
/* 80C52B98  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80C52B9C  D0 1B 00 00 */	stfs f0, 0(r27)
/* 80C52BA0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80C52BA4  D0 1B 00 04 */	stfs f0, 4(r27)
/* 80C52BA8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C52BAC  D0 1B 00 08 */	stfs f0, 8(r27)
/* 80C52BB0  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80C52BB4  D0 1A 00 00 */	stfs f0, 0(r26)
/* 80C52BB8  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80C52BBC  D0 1A 00 04 */	stfs f0, 4(r26)
/* 80C52BC0  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80C52BC4  D0 1A 00 08 */	stfs f0, 8(r26)
/* 80C52BC8  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80C52BCC  EC 1E 08 28 */	fsubs f0, f30, f1
/* 80C52BD0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80C52BD4  EC 01 00 2A */	fadds f0, f1, f0
/* 80C52BD8  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80C52BDC  3B 39 00 01 */	addi r25, r25, 1
/* 80C52BE0  2C 19 00 0E */	cmpwi r25, 0xe
/* 80C52BE4  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80C52BE8  3B 5A 00 0C */	addi r26, r26, 0xc
/* 80C52BEC  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80C52BF0  41 80 FF 30 */	blt lbl_80C52B20
/* 80C52BF4  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80C52BF8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C52BFC  3B A3 00 0C */	addi r29, r3, 0xc
/* 80C52C00  3B 3F 17 28 */	addi r25, r31, 0x1728
/* 80C52C04  3B 40 00 01 */	li r26, 1
lbl_80C52C08:
/* 80C52C08  80 79 00 00 */	lwz r3, 0(r25)
/* 80C52C0C  3C 03 00 01 */	addis r0, r3, 1
/* 80C52C10  28 00 FF FF */	cmplwi r0, 0xffff
/* 80C52C14  41 82 00 78 */	beq lbl_80C52C8C
/* 80C52C18  4B 3C E7 41 */	bl fpcEx_SearchByID__FUi
/* 80C52C1C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C52C20  41 82 00 6C */	beq lbl_80C52C8C
/* 80C52C24  38 61 00 08 */	addi r3, r1, 8
/* 80C52C28  38 9D 00 0C */	addi r4, r29, 0xc
/* 80C52C2C  7F A5 EB 78 */	mr r5, r29
/* 80C52C30  4B 61 3F 05 */	bl __mi__4cXyzCFRC3Vec
/* 80C52C34  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C52C38  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80C52C3C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C52C40  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80C52C44  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C52C48  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80C52C4C  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80C52C50  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80C52C54  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80C52C58  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80C52C5C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80C52C60  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80C52C64  7F A3 EB 78 */	mr r3, r29
/* 80C52C68  38 9D 00 0C */	addi r4, r29, 0xc
/* 80C52C6C  4B 61 DF 99 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80C52C70  38 03 40 00 */	addi r0, r3, 0x4000
/* 80C52C74  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80C52C78  7F A3 EB 78 */	mr r3, r29
/* 80C52C7C  38 9D 00 0C */	addi r4, r29, 0xc
/* 80C52C80  4B 61 DF F5 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80C52C84  7C 03 00 D0 */	neg r0, r3
/* 80C52C88  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
lbl_80C52C8C:
/* 80C52C8C  3B 5A 00 01 */	addi r26, r26, 1
/* 80C52C90  2C 1A 00 0E */	cmpwi r26, 0xe
/* 80C52C94  3B BD 00 0C */	addi r29, r29, 0xc
/* 80C52C98  3B 39 00 04 */	addi r25, r25, 4
/* 80C52C9C  41 80 FF 6C */	blt lbl_80C52C08
/* 80C52CA0  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, 0 /* qr0 */
/* 80C52CA4  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 80C52CA8  E3 C1 00 E8 */	psq_l f30, 232(r1), 0, 0 /* qr0 */
/* 80C52CAC  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 80C52CB0  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80C52CB4  4B 70 F5 65 */	bl _restgpr_25
/* 80C52CB8  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80C52CBC  7C 08 03 A6 */	mtlr r0
/* 80C52CC0  38 21 01 00 */	addi r1, r1, 0x100
/* 80C52CC4  4E 80 00 20 */	blr 
