lbl_804737CC:
/* 804737CC  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 804737D0  7C 08 02 A6 */	mflr r0
/* 804737D4  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 804737D8  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 804737DC  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 804737E0  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 804737E4  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 804737E8  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 804737EC  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, 0 /* qr0 */
/* 804737F0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 804737F4  4B EE E9 D4 */	b _savegpr_24
/* 804737F8  7C 7C 1B 78 */	mr r28, r3
/* 804737FC  3C 80 80 48 */	lis r4, l_cyl_info@ha
/* 80473800  3B E4 99 0C */	addi r31, r4, l_cyl_info@l
/* 80473804  80 03 05 A0 */	lwz r0, 0x5a0(r3)
/* 80473808  54 1E DF FF */	rlwinm. r30, r0, 0x1b, 0x1f, 0x1f
/* 8047380C  54 1D CF FE */	rlwinm r29, r0, 0x19, 0x1f, 0x1f
/* 80473810  41 82 00 74 */	beq lbl_80473884
/* 80473814  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80473818  D0 1C 0C EC */	stfs f0, 0xcec(r28)
/* 8047381C  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 80473820  60 00 00 10 */	ori r0, r0, 0x10
/* 80473824  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 80473828  C0 3F 0A 48 */	lfs f1, 0xa48(r31)
/* 8047382C  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80473830  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80473834  40 82 00 14 */	bne lbl_80473848
/* 80473838  C0 1C 04 FC */	lfs f0, 0x4fc(r28)
/* 8047383C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80473840  40 82 00 08 */	bne lbl_80473848
/* 80473844  4B FF FB A5 */	bl mode_init_wait__12daObjCarry_cFv
lbl_80473848:
/* 80473848  88 1C 0C F0 */	lbz r0, 0xcf0(r28)
/* 8047384C  28 00 00 03 */	cmplwi r0, 3
/* 80473850  40 82 00 40 */	bne lbl_80473890
/* 80473854  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 80473858  C0 1F 0B 2C */	lfs f0, 0xb2c(r31)
/* 8047385C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80473860  40 81 00 14 */	ble lbl_80473874
/* 80473864  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 80473868  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 8047386C  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 80473870  48 00 00 20 */	b lbl_80473890
lbl_80473874:
/* 80473874  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 80473878  60 00 00 10 */	ori r0, r0, 0x10
/* 8047387C  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 80473880  48 00 00 10 */	b lbl_80473890
lbl_80473884:
/* 80473884  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 80473888  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 8047388C  90 1C 05 5C */	stw r0, 0x55c(r28)
lbl_80473890:
/* 80473890  7F 83 E3 78 */	mr r3, r28
/* 80473894  4B FF BE 11 */	bl data__12daObjCarry_cFv
/* 80473898  A8 03 00 78 */	lha r0, 0x78(r3)
/* 8047389C  C8 3F 0A A0 */	lfd f1, 0xaa0(r31)
/* 804738A0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804738A4  90 01 00 74 */	stw r0, 0x74(r1)
/* 804738A8  3C 00 43 30 */	lis r0, 0x4330
/* 804738AC  90 01 00 70 */	stw r0, 0x70(r1)
/* 804738B0  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 804738B4  EF E0 08 28 */	fsubs f31, f0, f1
/* 804738B8  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 804738BC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 804738C0  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 804738C4  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 804738C8  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 804738CC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 804738D0  C0 1F 0B 1C */	lfs f0, 0xb1c(r31)
/* 804738D4  EC 01 00 2A */	fadds f0, f1, f0
/* 804738D8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 804738DC  7F 83 E3 78 */	mr r3, r28
/* 804738E0  4B FF BD C5 */	bl data__12daObjCarry_cFv
/* 804738E4  C0 23 00 84 */	lfs f1, 0x84(r3)
/* 804738E8  C0 1F 0A C0 */	lfs f0, 0xac0(r31)
/* 804738EC  EF C0 08 28 */	fsubs f30, f0, f1
/* 804738F0  3C 60 80 48 */	lis r3, __vt__8cM3dGPla@ha
/* 804738F4  38 03 B1 CC */	addi r0, r3, __vt__8cM3dGPla@l
/* 804738F8  90 01 00 6C */	stw r0, 0x6c(r1)
/* 804738FC  38 61 00 50 */	addi r3, r1, 0x50
/* 80473900  4B BA A3 BC */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80473904  7C 7A 1B 78 */	mr r26, r3
/* 80473908  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8047390C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80473910  3B 03 0F 38 */	addi r24, r3, 0xf38
/* 80473914  7F 03 C3 78 */	mr r3, r24
/* 80473918  3C 80 80 3F */	lis r4, mGndCheck__11fopAcM_gc_c@ha
/* 8047391C  38 84 1C C4 */	addi r4, r4, mGndCheck__11fopAcM_gc_c@l
/* 80473920  3B 24 00 14 */	addi r25, r4, 0x14
/* 80473924  7F 24 CB 78 */	mr r4, r25
/* 80473928  38 A1 00 5C */	addi r5, r1, 0x5c
/* 8047392C  4B C0 0E 18 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80473930  7C 7B 1B 78 */	mr r27, r3
/* 80473934  7F 83 E3 78 */	mr r3, r28
/* 80473938  4B FF BD 6D */	bl data__12daObjCarry_cFv
/* 8047393C  C3 A3 00 80 */	lfs f29, 0x80(r3)
/* 80473940  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80473944  C0 23 0C D0 */	lfs f1, mGroundY__11fopAcM_gc_c@l(r3)
/* 80473948  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 8047394C  41 82 04 EC */	beq lbl_80473E38
/* 80473950  C0 1F 0B 10 */	lfs f0, 0xb10(r31)
/* 80473954  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80473958  41 82 04 E0 */	beq lbl_80473E38
/* 8047395C  28 1E 00 00 */	cmplwi r30, 0
/* 80473960  41 82 04 D8 */	beq lbl_80473E38
/* 80473964  28 1D 00 00 */	cmplwi r29, 0
/* 80473968  40 82 04 D0 */	bne lbl_80473E38
/* 8047396C  3B 40 00 01 */	li r26, 1
/* 80473970  7F 03 C3 78 */	mr r3, r24
/* 80473974  7F 24 CB 78 */	mr r4, r25
/* 80473978  4B C0 14 D8 */	b GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 8047397C  2C 03 00 03 */	cmpwi r3, 3
/* 80473980  40 82 00 08 */	bne lbl_80473988
/* 80473984  3B 40 00 00 */	li r26, 0
lbl_80473988:
/* 80473988  88 1C 0C F0 */	lbz r0, 0xcf0(r28)
/* 8047398C  28 00 00 03 */	cmplwi r0, 3
/* 80473990  40 82 00 24 */	bne lbl_804739B4
/* 80473994  7F 03 C3 78 */	mr r3, r24
/* 80473998  7F 24 CB 78 */	mr r4, r25
/* 8047399C  4B C0 14 B4 */	b GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 804739A0  2C 03 00 0D */	cmpwi r3, 0xd
/* 804739A4  40 82 00 10 */	bne lbl_804739B4
/* 804739A8  C3 FF 0B 1C */	lfs f31, 0xb1c(r31)
/* 804739AC  C3 DF 0B 30 */	lfs f30, 0xb30(r31)
/* 804739B0  C3 BF 0A BC */	lfs f29, 0xabc(r31)
lbl_804739B4:
/* 804739B4  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 804739B8  41 82 04 80 */	beq lbl_80473E38
/* 804739BC  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 804739C0  41 82 04 78 */	beq lbl_80473E38
/* 804739C4  C0 3F 0B 20 */	lfs f1, 0xb20(r31)
/* 804739C8  C0 1F 0A 78 */	lfs f0, 0xa78(r31)
/* 804739CC  EC 1F 00 28 */	fsubs f0, f31, f0
/* 804739D0  EC 01 00 32 */	fmuls f0, f1, f0
/* 804739D4  FC 00 00 1E */	fctiwz f0, f0
/* 804739D8  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 804739DC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804739E0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804739E4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804739E8  3B 03 00 04 */	addi r24, r3, 4
/* 804739EC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804739F0  7F F8 04 2E */	lfsx f31, r24, r0
/* 804739F4  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 804739F8  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 804739FC  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 80473A00  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80473A04  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80473A08  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80473A0C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80473A10  40 80 04 28 */	bge lbl_80473E38
/* 80473A14  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80473A18  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80473A1C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80473A20  FC 20 10 18 */	frsp f1, f2
/* 80473A24  FC 40 00 18 */	frsp f2, f0
/* 80473A28  4B DF 3C 4C */	b cM_atan2s__Fff
/* 80473A2C  C0 3F 0A C0 */	lfs f1, 0xac0(r31)
/* 80473A30  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80473A34  EC 01 00 28 */	fsubs f0, f1, f0
/* 80473A38  EF BD 00 32 */	fmuls f29, f29, f0
/* 80473A3C  C0 1F 0B 34 */	lfs f0, 0xb34(r31)
/* 80473A40  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 80473A44  40 80 00 08 */	bge lbl_80473A4C
/* 80473A48  FF A0 00 90 */	fmr f29, f0
lbl_80473A4C:
/* 80473A4C  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80473A50  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80473A54  7C 18 04 2E */	lfsx f0, r24, r0
/* 80473A58  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 80473A5C  EC 41 00 32 */	fmuls f2, f1, f0
/* 80473A60  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 80473A64  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 80473A68  7C 04 04 2E */	lfsx f0, r4, r0
/* 80473A6C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80473A70  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80473A74  C0 3F 0A 48 */	lfs f1, 0xa48(r31)
/* 80473A78  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80473A7C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80473A80  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 80473A84  7C 04 04 2E */	lfsx f0, r4, r0
/* 80473A88  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80473A8C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80473A90  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80473A94  7C 18 04 2E */	lfsx f0, r24, r0
/* 80473A98  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80473A9C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80473AA0  38 61 00 2C */	addi r3, r1, 0x2c
/* 80473AA4  38 81 00 20 */	addi r4, r1, 0x20
/* 80473AA8  7C 65 1B 78 */	mr r5, r3
/* 80473AAC  4B ED 35 E4 */	b PSVECAdd
/* 80473AB0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80473AB4  EC 20 00 32 */	fmuls f1, f0, f0
/* 80473AB8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80473ABC  EC 00 00 32 */	fmuls f0, f0, f0
/* 80473AC0  EC 81 00 2A */	fadds f4, f1, f0
/* 80473AC4  C0 1F 0A 48 */	lfs f0, 0xa48(r31)
/* 80473AC8  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80473ACC  40 81 00 58 */	ble lbl_80473B24
/* 80473AD0  FC 00 20 34 */	frsqrte f0, f4
/* 80473AD4  C8 7F 0A 50 */	lfd f3, 0xa50(r31)
/* 80473AD8  FC 23 00 32 */	fmul f1, f3, f0
/* 80473ADC  C8 5F 0A 58 */	lfd f2, 0xa58(r31)
/* 80473AE0  FC 00 00 32 */	fmul f0, f0, f0
/* 80473AE4  FC 04 00 32 */	fmul f0, f4, f0
/* 80473AE8  FC 02 00 28 */	fsub f0, f2, f0
/* 80473AEC  FC 01 00 32 */	fmul f0, f1, f0
/* 80473AF0  FC 23 00 32 */	fmul f1, f3, f0
/* 80473AF4  FC 00 00 32 */	fmul f0, f0, f0
/* 80473AF8  FC 04 00 32 */	fmul f0, f4, f0
/* 80473AFC  FC 02 00 28 */	fsub f0, f2, f0
/* 80473B00  FC 01 00 32 */	fmul f0, f1, f0
/* 80473B04  FC 23 00 32 */	fmul f1, f3, f0
/* 80473B08  FC 00 00 32 */	fmul f0, f0, f0
/* 80473B0C  FC 04 00 32 */	fmul f0, f4, f0
/* 80473B10  FC 02 00 28 */	fsub f0, f2, f0
/* 80473B14  FC 01 00 32 */	fmul f0, f1, f0
/* 80473B18  FC 84 00 32 */	fmul f4, f4, f0
/* 80473B1C  FC 80 20 18 */	frsp f4, f4
/* 80473B20  48 00 00 88 */	b lbl_80473BA8
lbl_80473B24:
/* 80473B24  C8 1F 0A 60 */	lfd f0, 0xa60(r31)
/* 80473B28  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80473B2C  40 80 00 10 */	bge lbl_80473B3C
/* 80473B30  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80473B34  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)
/* 80473B38  48 00 00 70 */	b lbl_80473BA8
lbl_80473B3C:
/* 80473B3C  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 80473B40  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80473B44  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80473B48  3C 00 7F 80 */	lis r0, 0x7f80
/* 80473B4C  7C 03 00 00 */	cmpw r3, r0
/* 80473B50  41 82 00 14 */	beq lbl_80473B64
/* 80473B54  40 80 00 40 */	bge lbl_80473B94
/* 80473B58  2C 03 00 00 */	cmpwi r3, 0
/* 80473B5C  41 82 00 20 */	beq lbl_80473B7C
/* 80473B60  48 00 00 34 */	b lbl_80473B94
lbl_80473B64:
/* 80473B64  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80473B68  41 82 00 0C */	beq lbl_80473B74
/* 80473B6C  38 00 00 01 */	li r0, 1
/* 80473B70  48 00 00 28 */	b lbl_80473B98
lbl_80473B74:
/* 80473B74  38 00 00 02 */	li r0, 2
/* 80473B78  48 00 00 20 */	b lbl_80473B98
lbl_80473B7C:
/* 80473B7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80473B80  41 82 00 0C */	beq lbl_80473B8C
/* 80473B84  38 00 00 05 */	li r0, 5
/* 80473B88  48 00 00 10 */	b lbl_80473B98
lbl_80473B8C:
/* 80473B8C  38 00 00 03 */	li r0, 3
/* 80473B90  48 00 00 08 */	b lbl_80473B98
lbl_80473B94:
/* 80473B94  38 00 00 04 */	li r0, 4
lbl_80473B98:
/* 80473B98  2C 00 00 01 */	cmpwi r0, 1
/* 80473B9C  40 82 00 0C */	bne lbl_80473BA8
/* 80473BA0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80473BA4  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)
lbl_80473BA8:
/* 80473BA8  D0 9C 05 2C */	stfs f4, 0x52c(r28)
/* 80473BAC  38 00 00 00 */	li r0, 0
/* 80473BB0  88 7C 0C F0 */	lbz r3, 0xcf0(r28)
/* 80473BB4  2C 03 00 08 */	cmpwi r3, 8
/* 80473BB8  41 82 00 0C */	beq lbl_80473BC4
/* 80473BBC  2C 03 00 09 */	cmpwi r3, 9
/* 80473BC0  40 82 00 08 */	bne lbl_80473BC8
lbl_80473BC4:
/* 80473BC4  38 00 00 01 */	li r0, 1
lbl_80473BC8:
/* 80473BC8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80473BCC  40 82 01 44 */	bne lbl_80473D10
/* 80473BD0  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80473BD4  EC 20 00 32 */	fmuls f1, f0, f0
/* 80473BD8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80473BDC  EC 00 00 32 */	fmuls f0, f0, f0
/* 80473BE0  EF E1 00 2A */	fadds f31, f1, f0
/* 80473BE4  C0 1F 0A 48 */	lfs f0, 0xa48(r31)
/* 80473BE8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80473BEC  40 81 00 58 */	ble lbl_80473C44
/* 80473BF0  FC 00 F8 34 */	frsqrte f0, f31
/* 80473BF4  C8 7F 0A 50 */	lfd f3, 0xa50(r31)
/* 80473BF8  FC 23 00 32 */	fmul f1, f3, f0
/* 80473BFC  C8 5F 0A 58 */	lfd f2, 0xa58(r31)
/* 80473C00  FC 00 00 32 */	fmul f0, f0, f0
/* 80473C04  FC 1F 00 32 */	fmul f0, f31, f0
/* 80473C08  FC 02 00 28 */	fsub f0, f2, f0
/* 80473C0C  FC 01 00 32 */	fmul f0, f1, f0
/* 80473C10  FC 23 00 32 */	fmul f1, f3, f0
/* 80473C14  FC 00 00 32 */	fmul f0, f0, f0
/* 80473C18  FC 1F 00 32 */	fmul f0, f31, f0
/* 80473C1C  FC 02 00 28 */	fsub f0, f2, f0
/* 80473C20  FC 01 00 32 */	fmul f0, f1, f0
/* 80473C24  FC 23 00 32 */	fmul f1, f3, f0
/* 80473C28  FC 00 00 32 */	fmul f0, f0, f0
/* 80473C2C  FC 1F 00 32 */	fmul f0, f31, f0
/* 80473C30  FC 02 00 28 */	fsub f0, f2, f0
/* 80473C34  FC 01 00 32 */	fmul f0, f1, f0
/* 80473C38  FF FF 00 32 */	fmul f31, f31, f0
/* 80473C3C  FF E0 F8 18 */	frsp f31, f31
/* 80473C40  48 00 00 88 */	b lbl_80473CC8
lbl_80473C44:
/* 80473C44  C8 1F 0A 60 */	lfd f0, 0xa60(r31)
/* 80473C48  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80473C4C  40 80 00 10 */	bge lbl_80473C5C
/* 80473C50  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80473C54  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80473C58  48 00 00 70 */	b lbl_80473CC8
lbl_80473C5C:
/* 80473C5C  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80473C60  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80473C64  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80473C68  3C 00 7F 80 */	lis r0, 0x7f80
/* 80473C6C  7C 03 00 00 */	cmpw r3, r0
/* 80473C70  41 82 00 14 */	beq lbl_80473C84
/* 80473C74  40 80 00 40 */	bge lbl_80473CB4
/* 80473C78  2C 03 00 00 */	cmpwi r3, 0
/* 80473C7C  41 82 00 20 */	beq lbl_80473C9C
/* 80473C80  48 00 00 34 */	b lbl_80473CB4
lbl_80473C84:
/* 80473C84  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80473C88  41 82 00 0C */	beq lbl_80473C94
/* 80473C8C  38 00 00 01 */	li r0, 1
/* 80473C90  48 00 00 28 */	b lbl_80473CB8
lbl_80473C94:
/* 80473C94  38 00 00 02 */	li r0, 2
/* 80473C98  48 00 00 20 */	b lbl_80473CB8
lbl_80473C9C:
/* 80473C9C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80473CA0  41 82 00 0C */	beq lbl_80473CAC
/* 80473CA4  38 00 00 05 */	li r0, 5
/* 80473CA8  48 00 00 10 */	b lbl_80473CB8
lbl_80473CAC:
/* 80473CAC  38 00 00 03 */	li r0, 3
/* 80473CB0  48 00 00 08 */	b lbl_80473CB8
lbl_80473CB4:
/* 80473CB4  38 00 00 04 */	li r0, 4
lbl_80473CB8:
/* 80473CB8  2C 00 00 01 */	cmpwi r0, 1
/* 80473CBC  40 82 00 0C */	bne lbl_80473CC8
/* 80473CC0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80473CC4  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
lbl_80473CC8:
/* 80473CC8  C0 1F 0A 48 */	lfs f0, 0xa48(r31)
/* 80473CCC  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80473CD0  41 82 01 58 */	beq lbl_80473E28
/* 80473CD4  7F 83 E3 78 */	mr r3, r28
/* 80473CD8  4B FF B9 CD */	bl data__12daObjCarry_cFv
/* 80473CDC  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80473CE0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80473CE4  EC 00 F8 24 */	fdivs f0, f0, f31
/* 80473CE8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80473CEC  FC 00 02 10 */	fabs f0, f0
/* 80473CF0  FC 20 00 18 */	frsp f1, f0
/* 80473CF4  C0 1F 0B 38 */	lfs f0, 0xb38(r31)
/* 80473CF8  EC 20 00 72 */	fmuls f1, f0, f1
/* 80473CFC  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80473D00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80473D04  40 80 01 24 */	bge lbl_80473E28
/* 80473D08  D0 3C 05 2C */	stfs f1, 0x52c(r28)
/* 80473D0C  48 00 01 1C */	b lbl_80473E28
lbl_80473D10:
/* 80473D10  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80473D14  EC 20 00 32 */	fmuls f1, f0, f0
/* 80473D18  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80473D1C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80473D20  EC 81 00 2A */	fadds f4, f1, f0
/* 80473D24  C0 1F 0A 48 */	lfs f0, 0xa48(r31)
/* 80473D28  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80473D2C  40 81 00 58 */	ble lbl_80473D84
/* 80473D30  FC 00 20 34 */	frsqrte f0, f4
/* 80473D34  C8 7F 0A 50 */	lfd f3, 0xa50(r31)
/* 80473D38  FC 23 00 32 */	fmul f1, f3, f0
/* 80473D3C  C8 5F 0A 58 */	lfd f2, 0xa58(r31)
/* 80473D40  FC 00 00 32 */	fmul f0, f0, f0
/* 80473D44  FC 04 00 32 */	fmul f0, f4, f0
/* 80473D48  FC 02 00 28 */	fsub f0, f2, f0
/* 80473D4C  FC 01 00 32 */	fmul f0, f1, f0
/* 80473D50  FC 23 00 32 */	fmul f1, f3, f0
/* 80473D54  FC 00 00 32 */	fmul f0, f0, f0
/* 80473D58  FC 04 00 32 */	fmul f0, f4, f0
/* 80473D5C  FC 02 00 28 */	fsub f0, f2, f0
/* 80473D60  FC 01 00 32 */	fmul f0, f1, f0
/* 80473D64  FC 23 00 32 */	fmul f1, f3, f0
/* 80473D68  FC 00 00 32 */	fmul f0, f0, f0
/* 80473D6C  FC 04 00 32 */	fmul f0, f4, f0
/* 80473D70  FC 02 00 28 */	fsub f0, f2, f0
/* 80473D74  FC 01 00 32 */	fmul f0, f1, f0
/* 80473D78  FC 84 00 32 */	fmul f4, f4, f0
/* 80473D7C  FC 80 20 18 */	frsp f4, f4
/* 80473D80  48 00 00 88 */	b lbl_80473E08
lbl_80473D84:
/* 80473D84  C8 1F 0A 60 */	lfd f0, 0xa60(r31)
/* 80473D88  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80473D8C  40 80 00 10 */	bge lbl_80473D9C
/* 80473D90  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80473D94  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)
/* 80473D98  48 00 00 70 */	b lbl_80473E08
lbl_80473D9C:
/* 80473D9C  D0 81 00 08 */	stfs f4, 8(r1)
/* 80473DA0  80 81 00 08 */	lwz r4, 8(r1)
/* 80473DA4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80473DA8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80473DAC  7C 03 00 00 */	cmpw r3, r0
/* 80473DB0  41 82 00 14 */	beq lbl_80473DC4
/* 80473DB4  40 80 00 40 */	bge lbl_80473DF4
/* 80473DB8  2C 03 00 00 */	cmpwi r3, 0
/* 80473DBC  41 82 00 20 */	beq lbl_80473DDC
/* 80473DC0  48 00 00 34 */	b lbl_80473DF4
lbl_80473DC4:
/* 80473DC4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80473DC8  41 82 00 0C */	beq lbl_80473DD4
/* 80473DCC  38 00 00 01 */	li r0, 1
/* 80473DD0  48 00 00 28 */	b lbl_80473DF8
lbl_80473DD4:
/* 80473DD4  38 00 00 02 */	li r0, 2
/* 80473DD8  48 00 00 20 */	b lbl_80473DF8
lbl_80473DDC:
/* 80473DDC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80473DE0  41 82 00 0C */	beq lbl_80473DEC
/* 80473DE4  38 00 00 05 */	li r0, 5
/* 80473DE8  48 00 00 10 */	b lbl_80473DF8
lbl_80473DEC:
/* 80473DEC  38 00 00 03 */	li r0, 3
/* 80473DF0  48 00 00 08 */	b lbl_80473DF8
lbl_80473DF4:
/* 80473DF4  38 00 00 04 */	li r0, 4
lbl_80473DF8:
/* 80473DF8  2C 00 00 01 */	cmpwi r0, 1
/* 80473DFC  40 82 00 0C */	bne lbl_80473E08
/* 80473E00  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80473E04  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)
lbl_80473E08:
/* 80473E08  C0 1F 0A 48 */	lfs f0, 0xa48(r31)
/* 80473E0C  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80473E10  41 82 00 18 */	beq lbl_80473E28
/* 80473E14  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80473E18  FC 20 00 50 */	fneg f1, f0
/* 80473E1C  EC 04 F8 24 */	fdivs f0, f4, f31
/* 80473E20  EC 01 00 32 */	fmuls f0, f1, f0
/* 80473E24  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
lbl_80473E28:
/* 80473E28  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80473E2C  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80473E30  4B DF 38 44 */	b cM_atan2s__Fff
/* 80473E34  B0 7C 04 DE */	sth r3, 0x4de(r28)
lbl_80473E38:
/* 80473E38  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80473E3C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80473E40  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80473E44  88 1C 0C F0 */	lbz r0, 0xcf0(r28)
/* 80473E48  28 00 00 03 */	cmplwi r0, 3
/* 80473E4C  41 82 00 40 */	beq lbl_80473E8C
/* 80473E50  C0 3C 07 94 */	lfs f1, 0x794(r28)
/* 80473E54  C0 1C 07 8C */	lfs f0, 0x78c(r28)
/* 80473E58  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80473E5C  C0 1F 0A 48 */	lfs f0, 0xa48(r31)
/* 80473E60  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80473E64  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80473E68  38 61 00 14 */	addi r3, r1, 0x14
/* 80473E6C  4B ED 32 CC */	b PSVECSquareMag
/* 80473E70  C0 1F 0B 3C */	lfs f0, 0xb3c(r31)
/* 80473E74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80473E78  40 81 00 14 */	ble lbl_80473E8C
/* 80473E7C  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 80473E80  C0 1F 0B 38 */	lfs f0, 0xb38(r31)
/* 80473E84  EC 01 00 32 */	fmuls f0, f1, f0
/* 80473E88  D0 1C 05 2C */	stfs f0, 0x52c(r28)
lbl_80473E8C:
/* 80473E8C  7F 83 E3 78 */	mr r3, r28
/* 80473E90  38 9C 07 8C */	addi r4, r28, 0x78c
/* 80473E94  4B BA 68 38 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80473E98  3C 60 80 48 */	lis r3, __vt__8cM3dGPla@ha
/* 80473E9C  38 03 B1 CC */	addi r0, r3, __vt__8cM3dGPla@l
/* 80473EA0  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80473EA4  38 60 00 01 */	li r3, 1
/* 80473EA8  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 80473EAC  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80473EB0  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 80473EB4  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 80473EB8  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, 0 /* qr0 */
/* 80473EBC  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 80473EC0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80473EC4  4B EE E3 50 */	b _restgpr_24
/* 80473EC8  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80473ECC  7C 08 03 A6 */	mtlr r0
/* 80473ED0  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80473ED4  4E 80 00 20 */	blr 
