lbl_801E48E8:
/* 801E48E8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801E48EC  7C 08 02 A6 */	mflr r0
/* 801E48F0  90 01 00 44 */	stw r0, 0x44(r1)
/* 801E48F4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801E48F8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 801E48FC  39 61 00 30 */	addi r11, r1, 0x30
/* 801E4900  48 17 D8 D1 */	bl _savegpr_26
/* 801E4904  7C 7E 1B 78 */	mr r30, r3
/* 801E4908  C3 E2 A9 2C */	lfs f31, lit_4068(r2)
/* 801E490C  A8 63 03 DA */	lha r3, 0x3da(r3)
/* 801E4910  7C 60 07 35 */	extsh. r0, r3
/* 801E4914  40 81 00 10 */	ble lbl_801E4924
/* 801E4918  38 03 FF FF */	addi r0, r3, -1
/* 801E491C  B0 1E 03 DA */	sth r0, 0x3da(r30)
/* 801E4920  48 00 00 14 */	b lbl_801E4934
lbl_801E4924:
/* 801E4924  7C 60 07 35 */	extsh. r0, r3
/* 801E4928  40 80 00 0C */	bge lbl_801E4934
/* 801E492C  38 03 00 01 */	addi r0, r3, 1
/* 801E4930  B0 1E 03 DA */	sth r0, 0x3da(r30)
lbl_801E4934:
/* 801E4934  88 1E 03 F5 */	lbz r0, 0x3f5(r30)
/* 801E4938  2C 00 00 01 */	cmpwi r0, 1
/* 801E493C  41 82 00 3C */	beq lbl_801E4978
/* 801E4940  40 80 00 10 */	bge lbl_801E4950
/* 801E4944  2C 00 00 00 */	cmpwi r0, 0
/* 801E4948  40 80 00 14 */	bge lbl_801E495C
/* 801E494C  48 00 00 60 */	b lbl_801E49AC
lbl_801E4950:
/* 801E4950  2C 00 00 03 */	cmpwi r0, 3
/* 801E4954  40 80 00 58 */	bge lbl_801E49AC
/* 801E4958  48 00 00 3C */	b lbl_801E4994
lbl_801E495C:
/* 801E495C  3B E0 00 00 */	li r31, 0
/* 801E4960  A8 1E 03 DA */	lha r0, 0x3da(r30)
/* 801E4964  2C 00 00 00 */	cmpwi r0, 0
/* 801E4968  40 82 00 44 */	bne lbl_801E49AC
/* 801E496C  7F C3 F3 78 */	mr r3, r30
/* 801E4970  48 00 26 95 */	bl setAttenString__14dMenu_Option_cFv
/* 801E4974  48 00 00 38 */	b lbl_801E49AC
lbl_801E4978:
/* 801E4978  3B E0 00 01 */	li r31, 1
/* 801E497C  A8 1E 03 DA */	lha r0, 0x3da(r30)
/* 801E4980  2C 00 00 00 */	cmpwi r0, 0
/* 801E4984  40 82 00 28 */	bne lbl_801E49AC
/* 801E4988  7F C3 F3 78 */	mr r3, r30
/* 801E498C  48 00 27 5D */	bl setVibString__14dMenu_Option_cFv
/* 801E4990  48 00 00 1C */	b lbl_801E49AC
lbl_801E4994:
/* 801E4994  3B E0 00 02 */	li r31, 2
/* 801E4998  A8 1E 03 DA */	lha r0, 0x3da(r30)
/* 801E499C  2C 00 00 00 */	cmpwi r0, 0
/* 801E49A0  40 82 00 0C */	bne lbl_801E49AC
/* 801E49A4  7F C3 F3 78 */	mr r3, r30
/* 801E49A8  48 00 28 25 */	bl setSoundString__14dMenu_Option_cFv
lbl_801E49AC:
/* 801E49AC  A8 7E 03 DA */	lha r3, 0x3da(r30)
/* 801E49B0  7C 60 07 35 */	extsh. r0, r3
/* 801E49B4  40 81 00 5C */	ble lbl_801E4A10
/* 801E49B8  20 03 00 05 */	subfic r0, r3, 5
/* 801E49BC  C8 22 A9 58 */	lfd f1, lit_4520(r2)
/* 801E49C0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801E49C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E49C8  3C 00 43 30 */	lis r0, 0x4330
/* 801E49CC  90 01 00 08 */	stw r0, 8(r1)
/* 801E49D0  C8 01 00 08 */	lfd f0, 8(r1)
/* 801E49D4  EC 20 08 28 */	fsubs f1, f0, f1
/* 801E49D8  C0 02 A9 60 */	lfs f0, lit_4862(r2)
/* 801E49DC  EC 41 00 24 */	fdivs f2, f1, f0
/* 801E49E0  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801E49E4  1C 00 00 18 */	mulli r0, r0, 0x18
/* 801E49E8  7C 7E 02 14 */	add r3, r30, r0
/* 801E49EC  80 83 01 10 */	lwz r4, 0x110(r3)
/* 801E49F0  28 04 00 00 */	cmplwi r4, 0
/* 801E49F4  41 82 00 14 */	beq lbl_801E4A08
/* 801E49F8  80 63 01 04 */	lwz r3, 0x104(r3)
/* 801E49FC  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 801E4A00  C0 24 00 24 */	lfs f1, 0x24(r4)
/* 801E4A04  EF E1 00 28 */	fsubs f31, f1, f0
lbl_801E4A08:
/* 801E4A08  EF FF 00 B2 */	fmuls f31, f31, f2
/* 801E4A0C  48 00 00 60 */	b lbl_801E4A6C
lbl_801E4A10:
/* 801E4A10  7C 60 07 35 */	extsh. r0, r3
/* 801E4A14  40 80 00 58 */	bge lbl_801E4A6C
/* 801E4A18  38 03 00 05 */	addi r0, r3, 5
/* 801E4A1C  C8 22 A9 58 */	lfd f1, lit_4520(r2)
/* 801E4A20  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801E4A24  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E4A28  3C 00 43 30 */	lis r0, 0x4330
/* 801E4A2C  90 01 00 08 */	stw r0, 8(r1)
/* 801E4A30  C8 01 00 08 */	lfd f0, 8(r1)
/* 801E4A34  EC 20 08 28 */	fsubs f1, f0, f1
/* 801E4A38  C0 02 A9 60 */	lfs f0, lit_4862(r2)
/* 801E4A3C  EC 41 00 24 */	fdivs f2, f1, f0
/* 801E4A40  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801E4A44  1C 00 00 18 */	mulli r0, r0, 0x18
/* 801E4A48  7C 7E 02 14 */	add r3, r30, r0
/* 801E4A4C  80 83 01 18 */	lwz r4, 0x118(r3)
/* 801E4A50  28 04 00 00 */	cmplwi r4, 0
/* 801E4A54  41 82 00 14 */	beq lbl_801E4A68
/* 801E4A58  80 63 01 04 */	lwz r3, 0x104(r3)
/* 801E4A5C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 801E4A60  C0 24 00 24 */	lfs f1, 0x24(r4)
/* 801E4A64  EF E1 00 28 */	fsubs f31, f1, f0
lbl_801E4A68:
/* 801E4A68  EF FF 00 B2 */	fmuls f31, f31, f2
lbl_801E4A6C:
/* 801E4A6C  3B 60 00 00 */	li r27, 0
/* 801E4A70  3B A0 00 00 */	li r29, 0
/* 801E4A74  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801E4A78  1C 00 00 18 */	mulli r0, r0, 0x18
/* 801E4A7C  7F FE 02 14 */	add r31, r30, r0
lbl_801E4A80:
/* 801E4A80  3B 9D 01 04 */	addi r28, r29, 0x104
/* 801E4A84  7C 7F E0 2E */	lwzx r3, r31, r28
/* 801E4A88  28 03 00 00 */	cmplwi r3, 0
/* 801E4A8C  41 82 00 1C */	beq lbl_801E4AA8
/* 801E4A90  48 07 0B 39 */	bl show__13CPaneMgrAlphaFv
/* 801E4A94  7C 7F E0 2E */	lwzx r3, r31, r28
/* 801E4A98  C0 1E 03 B4 */	lfs f0, 0x3b4(r30)
/* 801E4A9C  EC 3F 00 2A */	fadds f1, f31, f0
/* 801E4AA0  C0 42 A9 2C */	lfs f2, lit_4068(r2)
/* 801E4AA4  48 06 FB 0D */	bl paneTrans__8CPaneMgrFff
lbl_801E4AA8:
/* 801E4AA8  3B 7B 00 01 */	addi r27, r27, 1
/* 801E4AAC  2C 1B 00 06 */	cmpwi r27, 6
/* 801E4AB0  3B BD 00 04 */	addi r29, r29, 4
/* 801E4AB4  41 80 FF CC */	blt lbl_801E4A80
/* 801E4AB8  A8 1E 03 DA */	lha r0, 0x3da(r30)
/* 801E4ABC  2C 00 00 00 */	cmpwi r0, 0
/* 801E4AC0  40 82 00 54 */	bne lbl_801E4B14
/* 801E4AC4  3B 60 00 00 */	li r27, 0
/* 801E4AC8  3B E0 00 00 */	li r31, 0
lbl_801E4ACC:
/* 801E4ACC  3B 40 00 02 */	li r26, 2
/* 801E4AD0  3B A0 00 08 */	li r29, 8
/* 801E4AD4  7F 9E FA 14 */	add r28, r30, r31
lbl_801E4AD8:
/* 801E4AD8  38 1D 01 04 */	addi r0, r29, 0x104
/* 801E4ADC  7C 7C 00 2E */	lwzx r3, r28, r0
/* 801E4AE0  28 03 00 00 */	cmplwi r3, 0
/* 801E4AE4  41 82 00 08 */	beq lbl_801E4AEC
/* 801E4AE8  48 07 0B 21 */	bl hide__13CPaneMgrAlphaFv
lbl_801E4AEC:
/* 801E4AEC  3B 5A 00 01 */	addi r26, r26, 1
/* 801E4AF0  2C 1A 00 06 */	cmpwi r26, 6
/* 801E4AF4  3B BD 00 04 */	addi r29, r29, 4
/* 801E4AF8  41 80 FF E0 */	blt lbl_801E4AD8
/* 801E4AFC  3B 7B 00 01 */	addi r27, r27, 1
/* 801E4B00  2C 1B 00 06 */	cmpwi r27, 6
/* 801E4B04  3B FF 00 18 */	addi r31, r31, 0x18
/* 801E4B08  41 80 FF C4 */	blt lbl_801E4ACC
/* 801E4B0C  88 1E 03 F5 */	lbz r0, 0x3f5(r30)
/* 801E4B10  98 1E 03 EF */	stb r0, 0x3ef(r30)
lbl_801E4B14:
/* 801E4B14  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 801E4B18  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801E4B1C  39 61 00 30 */	addi r11, r1, 0x30
/* 801E4B20  48 17 D6 FD */	bl _restgpr_26
/* 801E4B24  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801E4B28  7C 08 03 A6 */	mtlr r0
/* 801E4B2C  38 21 00 40 */	addi r1, r1, 0x40
/* 801E4B30  4E 80 00 20 */	blr 
