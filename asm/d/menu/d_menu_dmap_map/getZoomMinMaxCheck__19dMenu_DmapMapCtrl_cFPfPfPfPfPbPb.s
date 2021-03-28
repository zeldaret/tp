lbl_801C18C0:
/* 801C18C0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801C18C4  7C 08 02 A6 */	mflr r0
/* 801C18C8  90 01 00 84 */	stw r0, 0x84(r1)
/* 801C18CC  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 801C18D0  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 801C18D4  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 801C18D8  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 801C18DC  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 801C18E0  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 801C18E4  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 801C18E8  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 801C18EC  39 61 00 40 */	addi r11, r1, 0x40
/* 801C18F0  48 1A 08 D1 */	bl _savegpr_22
/* 801C18F4  7C 78 1B 78 */	mr r24, r3
/* 801C18F8  7C 99 23 78 */	mr r25, r4
/* 801C18FC  7C BA 2B 78 */	mr r26, r5
/* 801C1900  7C DB 33 78 */	mr r27, r6
/* 801C1904  7C FC 3B 78 */	mr r28, r7
/* 801C1908  7D 1D 43 78 */	mr r29, r8
/* 801C190C  7D 3E 4B 78 */	mr r30, r9
/* 801C1910  3C 80 80 45 */	lis r4, __float_max@ha
/* 801C1914  C0 04 0A E8 */	lfs f0, __float_max@l(r4)
/* 801C1918  FF E0 00 90 */	fmr f31, f0
/* 801C191C  FC 20 00 50 */	fneg f1, f0
/* 801C1920  FF C0 08 90 */	fmr f30, f1
/* 801C1924  FF A0 00 90 */	fmr f29, f0
/* 801C1928  FF 80 08 90 */	fmr f28, f1
/* 801C192C  81 83 00 00 */	lwz r12, 0(r3)
/* 801C1930  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801C1934  7D 89 03 A6 */	mtctr r12
/* 801C1938  4E 80 04 21 */	bctrl 
/* 801C193C  3B E0 00 00 */	li r31, 0
/* 801C1940  3A E0 00 00 */	li r23, 0
/* 801C1944  3A C0 00 00 */	li r22, 0
lbl_801C1948:
/* 801C1948  80 0D 88 E4 */	lwz r0, mLayerList__8dMpath_c(r13)
/* 801C194C  7C 60 B2 14 */	add r3, r0, r22
/* 801C1950  80 03 00 00 */	lwz r0, 0(r3)
/* 801C1954  28 00 00 00 */	cmplwi r0, 0
/* 801C1958  40 82 00 10 */	bne lbl_801C1968
/* 801C195C  80 03 01 00 */	lwz r0, 0x100(r3)
/* 801C1960  28 00 00 00 */	cmplwi r0, 0
/* 801C1964  41 82 00 AC */	beq lbl_801C1A10
lbl_801C1968:
/* 801C1968  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha
/* 801C196C  38 03 60 94 */	addi r0, r3, mStatus__20dStage_roomControl_c@l
/* 801C1970  7C 60 BA 14 */	add r3, r0, r23
/* 801C1974  80 03 00 20 */	lwz r0, 0x20(r3)
/* 801C1978  28 00 00 00 */	cmplwi r0, 0
/* 801C197C  41 82 00 94 */	beq lbl_801C1A10
/* 801C1980  4B E7 D3 59 */	bl chkGetMap__10dMapInfo_nFv
/* 801C1984  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C1988  40 82 00 30 */	bne lbl_801C19B8
/* 801C198C  4B E7 D3 15 */	bl chkGetCompass__10dMapInfo_nFv
/* 801C1990  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C1994  40 82 00 24 */	bne lbl_801C19B8
/* 801C1998  7F E3 FB 78 */	mr r3, r31
/* 801C199C  4B E7 D3 75 */	bl isVisitedRoom__10dMapInfo_nFi
/* 801C19A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C19A4  40 82 00 14 */	bne lbl_801C19B8
/* 801C19A8  88 18 00 E6 */	lbz r0, 0xe6(r24)
/* 801C19AC  7C 00 07 74 */	extsb r0, r0
/* 801C19B0  7C 00 F8 00 */	cmpw r0, r31
/* 801C19B4  40 82 00 5C */	bne lbl_801C1A10
lbl_801C19B8:
/* 801C19B8  7F E3 FB 78 */	mr r3, r31
/* 801C19BC  38 81 00 14 */	addi r4, r1, 0x14
/* 801C19C0  38 A1 00 0C */	addi r5, r1, 0xc
/* 801C19C4  38 C1 00 10 */	addi r6, r1, 0x10
/* 801C19C8  38 E1 00 08 */	addi r7, r1, 8
/* 801C19CC  4B E7 D8 29 */	bl getRoomMinMaxXZ__10dMapInfo_nFiPfPfPfPf
/* 801C19D0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801C19D4  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 801C19D8  40 80 00 08 */	bge lbl_801C19E0
/* 801C19DC  FF E0 00 90 */	fmr f31, f0
lbl_801C19E0:
/* 801C19E0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801C19E4  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 801C19E8  40 81 00 08 */	ble lbl_801C19F0
/* 801C19EC  FF C0 00 90 */	fmr f30, f0
lbl_801C19F0:
/* 801C19F0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801C19F4  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 801C19F8  40 80 00 08 */	bge lbl_801C1A00
/* 801C19FC  FF A0 00 90 */	fmr f29, f0
lbl_801C1A00:
/* 801C1A00  C0 01 00 08 */	lfs f0, 8(r1)
/* 801C1A04  FC 00 E0 40 */	fcmpo cr0, f0, f28
/* 801C1A08  40 81 00 08 */	ble lbl_801C1A10
/* 801C1A0C  FF 80 00 90 */	fmr f28, f0
lbl_801C1A10:
/* 801C1A10  3B FF 00 01 */	addi r31, r31, 1
/* 801C1A14  2C 1F 00 40 */	cmpwi r31, 0x40
/* 801C1A18  3A F7 04 04 */	addi r23, r23, 0x404
/* 801C1A1C  3A D6 00 04 */	addi r22, r22, 4
/* 801C1A20  41 80 FF 28 */	blt lbl_801C1948
/* 801C1A24  EC 3E F8 28 */	fsubs f1, f30, f31
/* 801C1A28  C0 02 A6 B8 */	lfs f0, lit_4245(r2)
/* 801C1A2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C1A30  40 80 00 14 */	bge lbl_801C1A44
/* 801C1A34  C0 22 A6 94 */	lfs f1, lit_3837(r2)
/* 801C1A38  EC 1F F0 2A */	fadds f0, f31, f30
/* 801C1A3C  EF E1 00 32 */	fmuls f31, f1, f0
/* 801C1A40  FF C0 F8 90 */	fmr f30, f31
lbl_801C1A44:
/* 801C1A44  EC 3C E8 28 */	fsubs f1, f28, f29
/* 801C1A48  C0 02 A6 B8 */	lfs f0, lit_4245(r2)
/* 801C1A4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C1A50  40 80 00 14 */	bge lbl_801C1A64
/* 801C1A54  C0 22 A6 94 */	lfs f1, lit_3837(r2)
/* 801C1A58  EC 1D E0 2A */	fadds f0, f29, f28
/* 801C1A5C  EF A1 00 32 */	fmuls f29, f1, f0
/* 801C1A60  FF 80 E8 90 */	fmr f28, f29
lbl_801C1A64:
/* 801C1A64  28 19 00 00 */	cmplwi r25, 0
/* 801C1A68  41 82 00 08 */	beq lbl_801C1A70
/* 801C1A6C  D3 F9 00 00 */	stfs f31, 0(r25)
lbl_801C1A70:
/* 801C1A70  28 1A 00 00 */	cmplwi r26, 0
/* 801C1A74  41 82 00 08 */	beq lbl_801C1A7C
/* 801C1A78  D3 DA 00 00 */	stfs f30, 0(r26)
lbl_801C1A7C:
/* 801C1A7C  28 1B 00 00 */	cmplwi r27, 0
/* 801C1A80  41 82 00 08 */	beq lbl_801C1A88
/* 801C1A84  D3 BB 00 00 */	stfs f29, 0(r27)
lbl_801C1A88:
/* 801C1A88  28 1C 00 00 */	cmplwi r28, 0
/* 801C1A8C  41 82 00 08 */	beq lbl_801C1A94
/* 801C1A90  D3 9C 00 00 */	stfs f28, 0(r28)
lbl_801C1A94:
/* 801C1A94  28 1D 00 00 */	cmplwi r29, 0
/* 801C1A98  41 82 00 20 */	beq lbl_801C1AB8
/* 801C1A9C  FC 1F F0 00 */	fcmpu cr0, f31, f30
/* 801C1AA0  40 82 00 10 */	bne lbl_801C1AB0
/* 801C1AA4  38 00 00 01 */	li r0, 1
/* 801C1AA8  98 1D 00 00 */	stb r0, 0(r29)
/* 801C1AAC  48 00 00 0C */	b lbl_801C1AB8
lbl_801C1AB0:
/* 801C1AB0  38 00 00 00 */	li r0, 0
/* 801C1AB4  98 1D 00 00 */	stb r0, 0(r29)
lbl_801C1AB8:
/* 801C1AB8  28 1E 00 00 */	cmplwi r30, 0
/* 801C1ABC  41 82 00 20 */	beq lbl_801C1ADC
/* 801C1AC0  FC 1D E0 00 */	fcmpu cr0, f29, f28
/* 801C1AC4  40 82 00 10 */	bne lbl_801C1AD4
/* 801C1AC8  38 00 00 01 */	li r0, 1
/* 801C1ACC  98 1E 00 00 */	stb r0, 0(r30)
/* 801C1AD0  48 00 00 0C */	b lbl_801C1ADC
lbl_801C1AD4:
/* 801C1AD4  38 00 00 00 */	li r0, 0
/* 801C1AD8  98 1E 00 00 */	stb r0, 0(r30)
lbl_801C1ADC:
/* 801C1ADC  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 801C1AE0  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 801C1AE4  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 801C1AE8  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 801C1AEC  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 801C1AF0  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 801C1AF4  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 801C1AF8  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 801C1AFC  39 61 00 40 */	addi r11, r1, 0x40
/* 801C1B00  48 1A 07 0D */	bl _restgpr_22
/* 801C1B04  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801C1B08  7C 08 03 A6 */	mtlr r0
/* 801C1B0C  38 21 00 80 */	addi r1, r1, 0x80
/* 801C1B10  4E 80 00 20 */	blr 
