lbl_8029B7D8:
/* 8029B7D8  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8029B7DC  7C 08 02 A6 */	mflr r0
/* 8029B7E0  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8029B7E4  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 8029B7E8  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 8029B7EC  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 8029B7F0  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 8029B7F4  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 8029B7F8  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, 0 /* qr0 */
/* 8029B7FC  DB 81 00 90 */	stfd f28, 0x90(r1)
/* 8029B800  F3 81 00 98 */	psq_st f28, 152(r1), 0, 0 /* qr0 */
/* 8029B804  DB 61 00 80 */	stfd f27, 0x80(r1)
/* 8029B808  F3 61 00 88 */	psq_st f27, 136(r1), 0, 0 /* qr0 */
/* 8029B80C  DB 41 00 70 */	stfd f26, 0x70(r1)
/* 8029B810  F3 41 00 78 */	psq_st f26, 120(r1), 0, 0 /* qr0 */
/* 8029B814  DB 21 00 60 */	stfd f25, 0x60(r1)
/* 8029B818  F3 21 00 68 */	psq_st f25, 104(r1), 0, 0 /* qr0 */
/* 8029B81C  DB 01 00 50 */	stfd f24, 0x50(r1)
/* 8029B820  F3 01 00 58 */	psq_st f24, 88(r1), 0, 0 /* qr0 */
/* 8029B824  DA E1 00 40 */	stfd f23, 0x40(r1)
/* 8029B828  F2 E1 00 48 */	psq_st f23, 72(r1), 0, 0 /* qr0 */
/* 8029B82C  DA C1 00 30 */	stfd f22, 0x30(r1)
/* 8029B830  F2 C1 00 38 */	psq_st f22, 56(r1), 0, 0 /* qr0 */
/* 8029B834  39 61 00 30 */	addi r11, r1, 0x30
/* 8029B838  48 0C 69 A1 */	bl _savegpr_28
/* 8029B83C  7C 7D 1B 78 */	mr r29, r3
/* 8029B840  FE E0 08 90 */	fmr f23, f1
/* 8029B844  FF 00 10 90 */	fmr f24, f2
/* 8029B848  FF 20 18 90 */	fmr f25, f3
/* 8029B84C  FF 40 20 90 */	fmr f26, f4
/* 8029B850  7C 9E 23 78 */	mr r30, r4
/* 8029B854  3B E0 00 00 */	li r31, 0
/* 8029B858  3B 80 00 00 */	li r28, 0
/* 8029B85C  C0 02 BC 80 */	lfs f0, lit_544(r2)
/* 8029B860  EF E0 C0 28 */	fsubs f31, f0, f24
/* 8029B864  EF C0 C8 28 */	fsubs f30, f0, f25
/* 8029B868  EF A0 D0 28 */	fsubs f29, f0, f26
lbl_8029B86C:
/* 8029B86C  FF 80 B8 90 */	fmr f28, f23
/* 8029B870  38 1C 00 8C */	addi r0, r28, 0x8c
/* 8029B874  7C 1D 02 2E */	lhzx r0, r29, r0
/* 8029B878  B0 01 00 08 */	sth r0, 8(r1)
/* 8029B87C  88 01 00 08 */	lbz r0, 8(r1)
/* 8029B880  28 00 00 00 */	cmplwi r0, 0
/* 8029B884  40 82 00 10 */	bne lbl_8029B894
/* 8029B888  38 00 00 00 */	li r0, 0
/* 8029B88C  7C 1E E3 2E */	sthx r0, r30, r28
/* 8029B890  48 00 02 F4 */	b lbl_8029BB84
lbl_8029B894:
/* 8029B894  88 01 00 09 */	lbz r0, 9(r1)
/* 8029B898  54 04 E7 3F */	rlwinm. r4, r0, 0x1c, 0x1c, 0x1f
/* 8029B89C  41 82 00 F4 */	beq lbl_8029B990
/* 8029B8A0  28 04 00 07 */	cmplwi r4, 7
/* 8029B8A4  41 81 00 48 */	bgt lbl_8029B8EC
/* 8029B8A8  3C 60 80 3C */	lis r3, lit_974@ha
/* 8029B8AC  38 63 78 84 */	addi r3, r3, lit_974@l
/* 8029B8B0  54 80 10 3A */	slwi r0, r4, 2
/* 8029B8B4  7C 03 00 2E */	lwzx r0, r3, r0
/* 8029B8B8  7C 09 03 A6 */	mtctr r0
/* 8029B8BC  4E 80 04 20 */	bctr 
/* 8029B8C0  FF 60 C0 90 */	fmr f27, f24
/* 8029B8C4  48 00 00 28 */	b lbl_8029B8EC
/* 8029B8C8  FF 60 C8 90 */	fmr f27, f25
/* 8029B8CC  48 00 00 20 */	b lbl_8029B8EC
/* 8029B8D0  FF 60 D0 90 */	fmr f27, f26
/* 8029B8D4  48 00 00 18 */	b lbl_8029B8EC
/* 8029B8D8  FF 60 F8 90 */	fmr f27, f31
/* 8029B8DC  48 00 00 10 */	b lbl_8029B8EC
/* 8029B8E0  FF 60 F0 90 */	fmr f27, f30
/* 8029B8E4  48 00 00 08 */	b lbl_8029B8EC
/* 8029B8E8  FF 60 E8 90 */	fmr f27, f29
lbl_8029B8EC:
/* 8029B8EC  2C 04 00 06 */	cmpwi r4, 6
/* 8029B8F0  41 82 00 14 */	beq lbl_8029B904
/* 8029B8F4  40 80 00 18 */	bge lbl_8029B90C
/* 8029B8F8  2C 04 00 02 */	cmpwi r4, 2
/* 8029B8FC  41 82 00 08 */	beq lbl_8029B904
/* 8029B900  48 00 00 0C */	b lbl_8029B90C
lbl_8029B904:
/* 8029B904  EF 9C 06 F2 */	fmuls f28, f28, f27
/* 8029B908  48 00 00 88 */	b lbl_8029B990
lbl_8029B90C:
/* 8029B90C  48 00 28 75 */	bl getOutputMode__9JASDriverFv
/* 8029B910  28 03 00 00 */	cmplwi r3, 0
/* 8029B914  40 82 00 0C */	bne lbl_8029B920
/* 8029B918  EF 9C 06 F2 */	fmuls f28, f28, f27
/* 8029B91C  48 00 00 74 */	b lbl_8029B990
lbl_8029B920:
/* 8029B920  C0 22 BC 88 */	lfs f1, lit_546(r2)
/* 8029B924  C0 02 BC D0 */	lfs f0, lit_971(r2)
/* 8029B928  EC 1B 00 32 */	fmuls f0, f27, f0
/* 8029B92C  EC 21 00 32 */	fmuls f1, f1, f0
/* 8029B930  C0 02 BC 84 */	lfs f0, lit_545(r2)
/* 8029B934  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029B938  40 80 00 30 */	bge lbl_8029B968
/* 8029B93C  C0 02 BC C8 */	lfs f0, lit_969(r2)
/* 8029B940  EC 01 00 32 */	fmuls f0, f1, f0
/* 8029B944  FC 00 00 1E */	fctiwz f0, f0
/* 8029B948  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8029B94C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029B950  54 00 1C 38 */	rlwinm r0, r0, 3, 0x10, 0x1c
/* 8029B954  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8029B958  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8029B95C  7C 03 04 2E */	lfsx f0, r3, r0
/* 8029B960  FC 00 00 50 */	fneg f0, f0
/* 8029B964  48 00 00 28 */	b lbl_8029B98C
lbl_8029B968:
/* 8029B968  C0 02 BC CC */	lfs f0, lit_970(r2)
/* 8029B96C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8029B970  FC 00 00 1E */	fctiwz f0, f0
/* 8029B974  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8029B978  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8029B97C  54 00 1C 38 */	rlwinm r0, r0, 3, 0x10, 0x1c
/* 8029B980  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8029B984  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8029B988  7C 03 04 2E */	lfsx f0, r3, r0
lbl_8029B98C:
/* 8029B98C  EF 9C 00 32 */	fmuls f28, f28, f0
lbl_8029B990:
/* 8029B990  88 01 00 09 */	lbz r0, 9(r1)
/* 8029B994  54 04 07 3F */	clrlwi. r4, r0, 0x1c
/* 8029B998  41 82 01 8C */	beq lbl_8029BB24
/* 8029B99C  28 04 00 07 */	cmplwi r4, 7
/* 8029B9A0  41 81 00 48 */	bgt lbl_8029B9E8
/* 8029B9A4  3C 60 80 3C */	lis r3, lit_977@ha
/* 8029B9A8  38 63 78 64 */	addi r3, r3, lit_977@l
/* 8029B9AC  54 80 10 3A */	slwi r0, r4, 2
/* 8029B9B0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8029B9B4  7C 09 03 A6 */	mtctr r0
/* 8029B9B8  4E 80 04 20 */	bctr 
/* 8029B9BC  FF 60 C0 90 */	fmr f27, f24
/* 8029B9C0  48 00 00 28 */	b lbl_8029B9E8
/* 8029B9C4  FF 60 C8 90 */	fmr f27, f25
/* 8029B9C8  48 00 00 20 */	b lbl_8029B9E8
/* 8029B9CC  FF 60 D0 90 */	fmr f27, f26
/* 8029B9D0  48 00 00 18 */	b lbl_8029B9E8
/* 8029B9D4  FF 60 F8 90 */	fmr f27, f31
/* 8029B9D8  48 00 00 10 */	b lbl_8029B9E8
/* 8029B9DC  FF 60 F0 90 */	fmr f27, f30
/* 8029B9E0  48 00 00 08 */	b lbl_8029B9E8
/* 8029B9E4  FF 60 E8 90 */	fmr f27, f29
lbl_8029B9E8:
/* 8029B9E8  2C 04 00 06 */	cmpwi r4, 6
/* 8029B9EC  41 82 00 AC */	beq lbl_8029BA98
/* 8029B9F0  40 80 00 1C */	bge lbl_8029BA0C
/* 8029B9F4  2C 04 00 03 */	cmpwi r4, 3
/* 8029B9F8  41 82 00 1C */	beq lbl_8029BA14
/* 8029B9FC  40 80 00 A4 */	bge lbl_8029BAA0
/* 8029BA00  2C 04 00 02 */	cmpwi r4, 2
/* 8029BA04  40 80 00 94 */	bge lbl_8029BA98
/* 8029BA08  48 00 00 98 */	b lbl_8029BAA0
lbl_8029BA0C:
/* 8029BA0C  2C 04 00 08 */	cmpwi r4, 8
/* 8029BA10  40 80 00 90 */	bge lbl_8029BAA0
lbl_8029BA14:
/* 8029BA14  C0 42 BC 88 */	lfs f2, lit_546(r2)
/* 8029BA18  C0 22 BC D4 */	lfs f1, lit_972(r2)
/* 8029BA1C  C0 02 BC D8 */	lfs f0, lit_973(r2)
/* 8029BA20  EC 00 06 F2 */	fmuls f0, f0, f27
/* 8029BA24  EC 21 00 2A */	fadds f1, f1, f0
/* 8029BA28  C0 02 BC D0 */	lfs f0, lit_971(r2)
/* 8029BA2C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8029BA30  EC 22 00 32 */	fmuls f1, f2, f0
/* 8029BA34  C0 02 BC 84 */	lfs f0, lit_545(r2)
/* 8029BA38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029BA3C  40 80 00 30 */	bge lbl_8029BA6C
/* 8029BA40  C0 02 BC C8 */	lfs f0, lit_969(r2)
/* 8029BA44  EC 01 00 32 */	fmuls f0, f1, f0
/* 8029BA48  FC 00 00 1E */	fctiwz f0, f0
/* 8029BA4C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8029BA50  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8029BA54  54 00 1C 38 */	rlwinm r0, r0, 3, 0x10, 0x1c
/* 8029BA58  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8029BA5C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8029BA60  7C 03 04 2E */	lfsx f0, r3, r0
/* 8029BA64  FC 00 00 50 */	fneg f0, f0
/* 8029BA68  48 00 00 28 */	b lbl_8029BA90
lbl_8029BA6C:
/* 8029BA6C  C0 02 BC CC */	lfs f0, lit_970(r2)
/* 8029BA70  EC 01 00 32 */	fmuls f0, f1, f0
/* 8029BA74  FC 00 00 1E */	fctiwz f0, f0
/* 8029BA78  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8029BA7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029BA80  54 00 1C 38 */	rlwinm r0, r0, 3, 0x10, 0x1c
/* 8029BA84  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8029BA88  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8029BA8C  7C 03 04 2E */	lfsx f0, r3, r0
lbl_8029BA90:
/* 8029BA90  EF 9C 00 32 */	fmuls f28, f28, f0
/* 8029BA94  48 00 00 90 */	b lbl_8029BB24
lbl_8029BA98:
/* 8029BA98  EF 9C 06 F2 */	fmuls f28, f28, f27
/* 8029BA9C  48 00 00 88 */	b lbl_8029BB24
lbl_8029BAA0:
/* 8029BAA0  48 00 26 E1 */	bl getOutputMode__9JASDriverFv
/* 8029BAA4  28 03 00 00 */	cmplwi r3, 0
/* 8029BAA8  40 82 00 0C */	bne lbl_8029BAB4
/* 8029BAAC  EF 9C 06 F2 */	fmuls f28, f28, f27
/* 8029BAB0  48 00 00 74 */	b lbl_8029BB24
lbl_8029BAB4:
/* 8029BAB4  C0 22 BC 88 */	lfs f1, lit_546(r2)
/* 8029BAB8  C0 02 BC D0 */	lfs f0, lit_971(r2)
/* 8029BABC  EC 1B 00 32 */	fmuls f0, f27, f0
/* 8029BAC0  EC 21 00 32 */	fmuls f1, f1, f0
/* 8029BAC4  C0 02 BC 84 */	lfs f0, lit_545(r2)
/* 8029BAC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029BACC  40 80 00 30 */	bge lbl_8029BAFC
/* 8029BAD0  C0 02 BC C8 */	lfs f0, lit_969(r2)
/* 8029BAD4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8029BAD8  FC 00 00 1E */	fctiwz f0, f0
/* 8029BADC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8029BAE0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8029BAE4  54 00 1C 38 */	rlwinm r0, r0, 3, 0x10, 0x1c
/* 8029BAE8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8029BAEC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8029BAF0  7C 03 04 2E */	lfsx f0, r3, r0
/* 8029BAF4  FC 00 00 50 */	fneg f0, f0
/* 8029BAF8  48 00 00 28 */	b lbl_8029BB20
lbl_8029BAFC:
/* 8029BAFC  C0 02 BC CC */	lfs f0, lit_970(r2)
/* 8029BB00  EC 01 00 32 */	fmuls f0, f1, f0
/* 8029BB04  FC 00 00 1E */	fctiwz f0, f0
/* 8029BB08  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8029BB0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029BB10  54 00 1C 38 */	rlwinm r0, r0, 3, 0x10, 0x1c
/* 8029BB14  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8029BB18  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8029BB1C  7C 03 04 2E */	lfsx f0, r3, r0
lbl_8029BB20:
/* 8029BB20  EF 9C 00 32 */	fmuls f28, f28, f0
lbl_8029BB24:
/* 8029BB24  C2 C2 BC 84 */	lfs f22, lit_545(r2)
/* 8029BB28  FC 1C B0 40 */	fcmpo cr0, f28, f22
/* 8029BB2C  4C 40 13 82 */	cror 2, 0, 2
/* 8029BB30  40 82 00 08 */	bne lbl_8029BB38
/* 8029BB34  48 00 00 1C */	b lbl_8029BB50
lbl_8029BB38:
/* 8029BB38  C2 C2 BC 80 */	lfs f22, lit_544(r2)
/* 8029BB3C  FC 1C B0 40 */	fcmpo cr0, f28, f22
/* 8029BB40  4C 41 13 82 */	cror 2, 1, 2
/* 8029BB44  40 82 00 08 */	bne lbl_8029BB4C
/* 8029BB48  48 00 00 08 */	b lbl_8029BB50
lbl_8029BB4C:
/* 8029BB4C  FE C0 E0 90 */	fmr f22, f28
lbl_8029BB50:
/* 8029BB50  48 00 26 01 */	bl getChannelLevel_dsp__9JASDriverFv
/* 8029BB54  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8029BB58  C8 22 BC A8 */	lfd f1, lit_714(r2)
/* 8029BB5C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8029BB60  3C 00 43 30 */	lis r0, 0x4330
/* 8029BB64  90 01 00 18 */	stw r0, 0x18(r1)
/* 8029BB68  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8029BB6C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8029BB70  EC 16 00 32 */	fmuls f0, f22, f0
/* 8029BB74  FC 00 00 1E */	fctiwz f0, f0
/* 8029BB78  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8029BB7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029BB80  7C 1E E3 2E */	sthx r0, r30, r28
lbl_8029BB84:
/* 8029BB84  3B FF 00 01 */	addi r31, r31, 1
/* 8029BB88  28 1F 00 06 */	cmplwi r31, 6
/* 8029BB8C  3B 9C 00 02 */	addi r28, r28, 2
/* 8029BB90  41 80 FC DC */	blt lbl_8029B86C
/* 8029BB94  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 8029BB98  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 8029BB9C  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 8029BBA0  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 8029BBA4  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, 0 /* qr0 */
/* 8029BBA8  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 8029BBAC  E3 81 00 98 */	psq_l f28, 152(r1), 0, 0 /* qr0 */
/* 8029BBB0  CB 81 00 90 */	lfd f28, 0x90(r1)
/* 8029BBB4  E3 61 00 88 */	psq_l f27, 136(r1), 0, 0 /* qr0 */
/* 8029BBB8  CB 61 00 80 */	lfd f27, 0x80(r1)
/* 8029BBBC  E3 41 00 78 */	psq_l f26, 120(r1), 0, 0 /* qr0 */
/* 8029BBC0  CB 41 00 70 */	lfd f26, 0x70(r1)
/* 8029BBC4  E3 21 00 68 */	psq_l f25, 104(r1), 0, 0 /* qr0 */
/* 8029BBC8  CB 21 00 60 */	lfd f25, 0x60(r1)
/* 8029BBCC  E3 01 00 58 */	psq_l f24, 88(r1), 0, 0 /* qr0 */
/* 8029BBD0  CB 01 00 50 */	lfd f24, 0x50(r1)
/* 8029BBD4  E2 E1 00 48 */	psq_l f23, 72(r1), 0, 0 /* qr0 */
/* 8029BBD8  CA E1 00 40 */	lfd f23, 0x40(r1)
/* 8029BBDC  E2 C1 00 38 */	psq_l f22, 56(r1), 0, 0 /* qr0 */
/* 8029BBE0  CA C1 00 30 */	lfd f22, 0x30(r1)
/* 8029BBE4  39 61 00 30 */	addi r11, r1, 0x30
/* 8029BBE8  48 0C 66 3D */	bl _restgpr_28
/* 8029BBEC  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8029BBF0  7C 08 03 A6 */	mtlr r0
/* 8029BBF4  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8029BBF8  4E 80 00 20 */	blr 
