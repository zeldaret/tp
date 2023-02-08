lbl_8007BA40:
/* 8007BA40  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8007BA44  7C 08 02 A6 */	mflr r0
/* 8007BA48  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8007BA4C  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 8007BA50  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 8007BA54  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 8007BA58  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 8007BA5C  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 8007BA60  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, 0 /* qr0 */
/* 8007BA64  DB 81 00 B0 */	stfd f28, 0xb0(r1)
/* 8007BA68  F3 81 00 B8 */	psq_st f28, 184(r1), 0, 0 /* qr0 */
/* 8007BA6C  DB 61 00 A0 */	stfd f27, 0xa0(r1)
/* 8007BA70  F3 61 00 A8 */	psq_st f27, 168(r1), 0, 0 /* qr0 */
/* 8007BA74  DB 41 00 90 */	stfd f26, 0x90(r1)
/* 8007BA78  F3 41 00 98 */	psq_st f26, 152(r1), 0, 0 /* qr0 */
/* 8007BA7C  DB 21 00 80 */	stfd f25, 0x80(r1)
/* 8007BA80  F3 21 00 88 */	psq_st f25, 136(r1), 0, 0 /* qr0 */
/* 8007BA84  DB 01 00 70 */	stfd f24, 0x70(r1)
/* 8007BA88  F3 01 00 78 */	psq_st f24, 120(r1), 0, 0 /* qr0 */
/* 8007BA8C  39 61 00 70 */	addi r11, r1, 0x70
/* 8007BA90  48 2E 67 31 */	bl _savegpr_22
/* 8007BA94  7C 77 1B 78 */	mr r23, r3
/* 8007BA98  7C 98 23 78 */	mr r24, r4
/* 8007BA9C  3B 80 00 00 */	li r28, 0
lbl_8007BAA0:
/* 8007BAA0  83 D7 00 98 */	lwz r30, 0x98(r23)
/* 8007BAA4  54 BD 04 3E */	clrlwi r29, r5, 0x10
/* 8007BAA8  54 BF 1B 78 */	rlwinm r31, r5, 3, 0xd, 0x1c
/* 8007BAAC  7E E3 BB 78 */	mr r3, r23
/* 8007BAB0  7F A4 EB 78 */	mr r4, r29
/* 8007BAB4  80 B8 00 00 */	lwz r5, 0(r24)
/* 8007BAB8  81 97 00 04 */	lwz r12, 4(r23)
/* 8007BABC  81 8C 00 F8 */	lwz r12, 0xf8(r12)
/* 8007BAC0  7D 89 03 A6 */	mtctr r12
/* 8007BAC4  4E 80 04 21 */	bctrl 
/* 8007BAC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007BACC  40 82 06 FC */	bne lbl_8007C1C8
/* 8007BAD0  80 77 00 94 */	lwz r3, 0x94(r23)
/* 8007BAD4  1C 1D 00 18 */	mulli r0, r29, 0x18
/* 8007BAD8  7F 63 02 14 */	add r27, r3, r0
/* 8007BADC  C0 1B 00 00 */	lfs f0, 0(r27)
/* 8007BAE0  EC 20 00 32 */	fmuls f1, f0, f0
/* 8007BAE4  C0 1B 00 08 */	lfs f0, 8(r27)
/* 8007BAE8  EC 00 00 32 */	fmuls f0, f0, f0
/* 8007BAEC  EC 41 00 2A */	fadds f2, f1, f0
/* 8007BAF0  C0 02 8C F8 */	lfs f0, lit_3717(r2)
/* 8007BAF4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8007BAF8  40 81 00 0C */	ble lbl_8007BB04
/* 8007BAFC  FC 00 10 34 */	frsqrte f0, f2
/* 8007BB00  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8007BB04:
/* 8007BB04  FC 00 12 10 */	fabs f0, f2
/* 8007BB08  FC 20 00 18 */	frsp f1, f0
/* 8007BB0C  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8007BB10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007BB14  40 80 00 14 */	bge lbl_8007BB28
/* 8007BB18  7C BE FA 2E */	lhzx r5, r30, r31
/* 8007BB1C  28 05 FF FF */	cmplwi r5, 0xffff
/* 8007BB20  41 82 06 B8 */	beq lbl_8007C1D8
/* 8007BB24  4B FF FF 7C */	b lbl_8007BAA0
lbl_8007BB28:
/* 8007BB28  C0 02 8D 04 */	lfs f0, lit_3937(r2)
/* 8007BB2C  EF A0 10 24 */	fdivs f29, f0, f2
/* 8007BB30  80 77 00 A0 */	lwz r3, 0xa0(r23)
/* 8007BB34  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8007BB38  1C 1D 00 0A */	mulli r0, r29, 0xa
/* 8007BB3C  7F 43 02 14 */	add r26, r3, r0
/* 8007BB40  3B 20 00 00 */	li r25, 0
/* 8007BB44  3A C0 00 00 */	li r22, 0
/* 8007BB48  C3 E2 8C F8 */	lfs f31, lit_3717(r2)
/* 8007BB4C  48 00 06 70 */	b lbl_8007C1BC
lbl_8007BB50:
/* 8007BB50  80 78 00 8C */	lwz r3, 0x8c(r24)
/* 8007BB54  38 16 00 34 */	addi r0, r22, 0x34
/* 8007BB58  7C 03 04 2E */	lfsx f0, r3, r0
/* 8007BB5C  EC 3D 00 32 */	fmuls f1, f29, f0
/* 8007BB60  C0 1B 00 00 */	lfs f0, 0(r27)
/* 8007BB64  EC 01 00 32 */	fmuls f0, f1, f0
/* 8007BB68  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8007BB6C  D3 E1 00 34 */	stfs f31, 0x34(r1)
/* 8007BB70  C0 1B 00 08 */	lfs f0, 8(r27)
/* 8007BB74  EC 01 00 32 */	fmuls f0, f1, f0
/* 8007BB78  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8007BB7C  7C 63 B2 14 */	add r3, r3, r22
/* 8007BB80  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8007BB84  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8007BB88  40 82 00 38 */	bne lbl_8007BBC0
/* 8007BB8C  C3 23 00 30 */	lfs f25, 0x30(r3)
/* 8007BB90  7F 03 C3 78 */	mr r3, r24
/* 8007BB94  4B FF B6 51 */	bl GetSpeedY__9dBgS_AcchFv
/* 8007BB98  FF 00 08 90 */	fmr f24, f1
/* 8007BB9C  7F 03 C3 78 */	mr r3, r24
/* 8007BBA0  38 81 00 30 */	addi r4, r1, 0x30
/* 8007BBA4  4B FF B6 5D */	bl GetWallAddY__9dBgS_AcchFR3Vec
/* 8007BBA8  80 78 00 30 */	lwz r3, 0x30(r24)
/* 8007BBAC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8007BBB0  EC 00 C8 2A */	fadds f0, f0, f25
/* 8007BBB4  EC 01 00 2A */	fadds f0, f1, f0
/* 8007BBB8  EC 60 C0 28 */	fsubs f3, f0, f24
/* 8007BBBC  48 00 00 08 */	b lbl_8007BBC4
lbl_8007BBC0:
/* 8007BBC0  C0 63 00 38 */	lfs f3, 0x38(r3)
lbl_8007BBC4:
/* 8007BBC4  80 97 00 9C */	lwz r4, 0x9c(r23)
/* 8007BBC8  A0 1A 00 00 */	lhz r0, 0(r26)
/* 8007BBCC  1C 60 00 0C */	mulli r3, r0, 0xc
/* 8007BBD0  38 03 00 04 */	addi r0, r3, 4
/* 8007BBD4  7C 04 04 2E */	lfsx f0, r4, r0
/* 8007BBD8  EC 40 18 28 */	fsubs f2, f0, f3
/* 8007BBDC  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8007BBE0  A0 1A 00 02 */	lhz r0, 2(r26)
/* 8007BBE4  1C 60 00 0C */	mulli r3, r0, 0xc
/* 8007BBE8  38 03 00 04 */	addi r0, r3, 4
/* 8007BBEC  7C 04 04 2E */	lfsx f0, r4, r0
/* 8007BBF0  EC 20 18 28 */	fsubs f1, f0, f3
/* 8007BBF4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8007BBF8  A0 1A 00 04 */	lhz r0, 4(r26)
/* 8007BBFC  1C 60 00 0C */	mulli r3, r0, 0xc
/* 8007BC00  38 03 00 04 */	addi r0, r3, 4
/* 8007BC04  7C 04 04 2E */	lfsx f0, r4, r0
/* 8007BC08  EC 00 18 28 */	fsubs f0, f0, f3
/* 8007BC0C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8007BC10  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 8007BC14  40 81 00 14 */	ble lbl_8007BC28
/* 8007BC18  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8007BC1C  40 81 00 0C */	ble lbl_8007BC28
/* 8007BC20  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8007BC24  41 81 05 90 */	bgt lbl_8007C1B4
lbl_8007BC28:
/* 8007BC28  C0 22 8C F8 */	lfs f1, lit_3717(r2)
/* 8007BC2C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8007BC30  40 80 00 1C */	bge lbl_8007BC4C
/* 8007BC34  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8007BC38  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8007BC3C  40 80 00 10 */	bge lbl_8007BC4C
/* 8007BC40  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8007BC44  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8007BC48  41 80 05 6C */	blt lbl_8007C1B4
lbl_8007BC4C:
/* 8007BC4C  38 60 00 00 */	li r3, 0
/* 8007BC50  FC 00 12 10 */	fabs f0, f2
/* 8007BC54  FC 20 00 18 */	frsp f1, f0
/* 8007BC58  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8007BC5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007BC60  40 80 00 08 */	bge lbl_8007BC68
/* 8007BC64  38 60 00 01 */	li r3, 1
lbl_8007BC68:
/* 8007BC68  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8007BC6C  FC 00 02 10 */	fabs f0, f0
/* 8007BC70  FC 20 00 18 */	frsp f1, f0
/* 8007BC74  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8007BC78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007BC7C  40 80 00 08 */	bge lbl_8007BC84
/* 8007BC80  38 63 00 01 */	addi r3, r3, 1
lbl_8007BC84:
/* 8007BC84  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8007BC88  FC 00 02 10 */	fabs f0, f0
/* 8007BC8C  FC 20 00 18 */	frsp f1, f0
/* 8007BC90  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8007BC94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007BC98  40 80 00 08 */	bge lbl_8007BCA0
/* 8007BC9C  38 63 00 01 */	addi r3, r3, 1
lbl_8007BCA0:
/* 8007BCA0  2C 03 00 01 */	cmpwi r3, 1
/* 8007BCA4  41 82 05 10 */	beq lbl_8007C1B4
/* 8007BCA8  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 8007BCAC  C0 22 8C F8 */	lfs f1, lit_3717(r2)
/* 8007BCB0  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8007BCB4  40 81 00 24 */	ble lbl_8007BCD8
/* 8007BCB8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8007BCBC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8007BCC0  4C 40 13 82 */	cror 2, 0, 2
/* 8007BCC4  40 82 00 14 */	bne lbl_8007BCD8
/* 8007BCC8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8007BCCC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8007BCD0  4C 40 13 82 */	cror 2, 0, 2
/* 8007BCD4  41 82 00 30 */	beq lbl_8007BD04
lbl_8007BCD8:
/* 8007BCD8  C0 22 8C F8 */	lfs f1, lit_3717(r2)
/* 8007BCDC  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8007BCE0  40 80 00 34 */	bge lbl_8007BD14
/* 8007BCE4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8007BCE8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8007BCEC  4C 41 13 82 */	cror 2, 1, 2
/* 8007BCF0  40 82 00 24 */	bne lbl_8007BD14
/* 8007BCF4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8007BCF8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8007BCFC  4C 41 13 82 */	cror 2, 1, 2
/* 8007BD00  40 82 00 14 */	bne lbl_8007BD14
lbl_8007BD04:
/* 8007BD04  38 A0 00 00 */	li r5, 0
/* 8007BD08  38 80 00 01 */	li r4, 1
/* 8007BD0C  38 C0 00 02 */	li r6, 2
/* 8007BD10  48 00 00 74 */	b lbl_8007BD84
lbl_8007BD14:
/* 8007BD14  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 8007BD18  C0 22 8C F8 */	lfs f1, lit_3717(r2)
/* 8007BD1C  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 8007BD20  40 81 00 20 */	ble lbl_8007BD40
/* 8007BD24  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8007BD28  4C 40 13 82 */	cror 2, 0, 2
/* 8007BD2C  40 82 00 14 */	bne lbl_8007BD40
/* 8007BD30  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8007BD34  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8007BD38  4C 40 13 82 */	cror 2, 0, 2
/* 8007BD3C  41 82 00 2C */	beq lbl_8007BD68
lbl_8007BD40:
/* 8007BD40  C0 22 8C F8 */	lfs f1, lit_3717(r2)
/* 8007BD44  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 8007BD48  40 80 00 30 */	bge lbl_8007BD78
/* 8007BD4C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8007BD50  4C 41 13 82 */	cror 2, 1, 2
/* 8007BD54  40 82 00 24 */	bne lbl_8007BD78
/* 8007BD58  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8007BD5C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8007BD60  4C 41 13 82 */	cror 2, 1, 2
/* 8007BD64  40 82 00 14 */	bne lbl_8007BD78
lbl_8007BD68:
/* 8007BD68  38 A0 00 01 */	li r5, 1
/* 8007BD6C  38 80 00 00 */	li r4, 0
/* 8007BD70  38 C0 00 02 */	li r6, 2
/* 8007BD74  48 00 00 10 */	b lbl_8007BD84
lbl_8007BD78:
/* 8007BD78  38 A0 00 02 */	li r5, 2
/* 8007BD7C  38 80 00 00 */	li r4, 0
/* 8007BD80  38 C0 00 01 */	li r6, 1
lbl_8007BD84:
/* 8007BD84  54 A0 10 3A */	slwi r0, r5, 2
/* 8007BD88  38 61 00 24 */	addi r3, r1, 0x24
/* 8007BD8C  7C 03 04 2E */	lfsx f0, r3, r0
/* 8007BD90  54 80 10 3A */	slwi r0, r4, 2
/* 8007BD94  7C 63 04 2E */	lfsx f3, r3, r0
/* 8007BD98  EC 80 18 28 */	fsubs f4, f0, f3
/* 8007BD9C  54 C0 10 3A */	slwi r0, r6, 2
/* 8007BDA0  7C 43 04 2E */	lfsx f2, r3, r0
/* 8007BDA4  EC A0 10 28 */	fsubs f5, f0, f2
/* 8007BDA8  FC 00 22 10 */	fabs f0, f4
/* 8007BDAC  FC 00 00 18 */	frsp f0, f0
/* 8007BDB0  C0 2D 8C 00 */	lfs f1, G_CM3D_F_ABS_MIN(r13)
/* 8007BDB4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8007BDB8  41 80 03 FC */	blt lbl_8007C1B4
/* 8007BDBC  FC 00 2A 10 */	fabs f0, f5
/* 8007BDC0  FC 00 00 18 */	frsp f0, f0
/* 8007BDC4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8007BDC8  41 80 03 EC */	blt lbl_8007C1B4
/* 8007BDCC  FC 00 18 50 */	fneg f0, f3
/* 8007BDD0  EC 60 20 24 */	fdivs f3, f0, f4
/* 8007BDD4  FC 00 10 50 */	fneg f0, f2
/* 8007BDD8  EC 40 28 24 */	fdivs f2, f0, f5
/* 8007BDDC  80 97 00 9C */	lwz r4, 0x9c(r23)
/* 8007BDE0  A0 1A 00 00 */	lhz r0, 0(r26)
/* 8007BDE4  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007BDE8  7C 64 02 14 */	add r3, r4, r0
/* 8007BDEC  C0 83 00 00 */	lfs f4, 0(r3)
/* 8007BDF0  C0 A3 00 08 */	lfs f5, 8(r3)
/* 8007BDF4  A0 1A 00 02 */	lhz r0, 2(r26)
/* 8007BDF8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007BDFC  7C 64 02 14 */	add r3, r4, r0
/* 8007BE00  C0 C3 00 00 */	lfs f6, 0(r3)
/* 8007BE04  C0 E3 00 08 */	lfs f7, 8(r3)
/* 8007BE08  A0 1A 00 04 */	lhz r0, 4(r26)
/* 8007BE0C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007BE10  7C 64 02 14 */	add r3, r4, r0
/* 8007BE14  C1 03 00 00 */	lfs f8, 0(r3)
/* 8007BE18  C0 03 00 08 */	lfs f0, 8(r3)
/* 8007BE1C  2C 05 00 00 */	cmpwi r5, 0
/* 8007BE20  40 82 00 38 */	bne lbl_8007BE58
/* 8007BE24  EC 24 30 28 */	fsubs f1, f4, f6
/* 8007BE28  EC 23 00 72 */	fmuls f1, f3, f1
/* 8007BE2C  EF 86 08 2A */	fadds f28, f6, f1
/* 8007BE30  EC 25 38 28 */	fsubs f1, f5, f7
/* 8007BE34  EC 23 00 72 */	fmuls f1, f3, f1
/* 8007BE38  EF 67 08 2A */	fadds f27, f7, f1
/* 8007BE3C  EC 24 40 28 */	fsubs f1, f4, f8
/* 8007BE40  EC 22 00 72 */	fmuls f1, f2, f1
/* 8007BE44  EF 48 08 2A */	fadds f26, f8, f1
/* 8007BE48  EC 25 00 28 */	fsubs f1, f5, f0
/* 8007BE4C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8007BE50  EF 20 08 2A */	fadds f25, f0, f1
/* 8007BE54  48 00 00 70 */	b lbl_8007BEC4
lbl_8007BE58:
/* 8007BE58  2C 05 00 01 */	cmpwi r5, 1
/* 8007BE5C  40 82 00 38 */	bne lbl_8007BE94
/* 8007BE60  EC 26 20 28 */	fsubs f1, f6, f4
/* 8007BE64  EC 23 00 72 */	fmuls f1, f3, f1
/* 8007BE68  EF 84 08 2A */	fadds f28, f4, f1
/* 8007BE6C  EC 27 28 28 */	fsubs f1, f7, f5
/* 8007BE70  EC 23 00 72 */	fmuls f1, f3, f1
/* 8007BE74  EF 65 08 2A */	fadds f27, f5, f1
/* 8007BE78  EC 26 40 28 */	fsubs f1, f6, f8
/* 8007BE7C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8007BE80  EF 48 08 2A */	fadds f26, f8, f1
/* 8007BE84  EC 27 00 28 */	fsubs f1, f7, f0
/* 8007BE88  EC 22 00 72 */	fmuls f1, f2, f1
/* 8007BE8C  EF 20 08 2A */	fadds f25, f0, f1
/* 8007BE90  48 00 00 34 */	b lbl_8007BEC4
lbl_8007BE94:
/* 8007BE94  EC 28 20 28 */	fsubs f1, f8, f4
/* 8007BE98  EC 23 00 72 */	fmuls f1, f3, f1
/* 8007BE9C  EF 84 08 2A */	fadds f28, f4, f1
/* 8007BEA0  EC 20 28 28 */	fsubs f1, f0, f5
/* 8007BEA4  EC 23 00 72 */	fmuls f1, f3, f1
/* 8007BEA8  EF 65 08 2A */	fadds f27, f5, f1
/* 8007BEAC  EC 28 30 28 */	fsubs f1, f8, f6
/* 8007BEB0  EC 22 00 72 */	fmuls f1, f2, f1
/* 8007BEB4  EF 46 08 2A */	fadds f26, f6, f1
/* 8007BEB8  EC 00 38 28 */	fsubs f0, f0, f7
/* 8007BEBC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8007BEC0  EF 27 00 2A */	fadds f25, f7, f0
lbl_8007BEC4:
/* 8007BEC4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8007BEC8  EF 9C 00 2A */	fadds f28, f28, f0
/* 8007BECC  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8007BED0  EF 7B 08 2A */	fadds f27, f27, f1
/* 8007BED4  EF 5A 00 2A */	fadds f26, f26, f0
/* 8007BED8  EF 39 08 2A */	fadds f25, f25, f1
/* 8007BEDC  80 78 00 30 */	lwz r3, 0x30(r24)
/* 8007BEE0  C0 23 00 00 */	lfs f1, 0(r3)
/* 8007BEE4  C0 43 00 08 */	lfs f2, 8(r3)
/* 8007BEE8  FC 60 E0 90 */	fmr f3, f28
/* 8007BEEC  FC 80 D8 90 */	fmr f4, f27
/* 8007BEF0  FC A0 D0 90 */	fmr f5, f26
/* 8007BEF4  FC C0 C8 90 */	fmr f6, f25
/* 8007BEF8  38 61 00 1C */	addi r3, r1, 0x1c
/* 8007BEFC  38 81 00 18 */	addi r4, r1, 0x18
/* 8007BF00  38 A1 00 20 */	addi r5, r1, 0x20
/* 8007BF04  48 1E C7 29 */	bl cM3d_Len2dSqPntAndSegLine__FffffffPfPfPf
/* 8007BF08  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8007BF0C  80 D8 00 30 */	lwz r6, 0x30(r24)
/* 8007BF10  C0 66 00 00 */	lfs f3, 0(r6)
/* 8007BF14  EC 20 18 28 */	fsubs f1, f0, f3
/* 8007BF18  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8007BF1C  C0 86 00 08 */	lfs f4, 8(r6)
/* 8007BF20  EC 00 20 28 */	fsubs f0, f0, f4
/* 8007BF24  80 98 00 8C */	lwz r4, 0x8c(r24)
/* 8007BF28  38 16 00 28 */	addi r0, r22, 0x28
/* 8007BF2C  7F C4 04 2E */	lfsx f30, r4, r0
/* 8007BF30  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8007BF34  FC 02 F0 40 */	fcmpo cr0, f2, f30
/* 8007BF38  41 81 02 7C */	bgt lbl_8007C1B4
/* 8007BF3C  C0 A1 00 30 */	lfs f5, 0x30(r1)
/* 8007BF40  EC 21 01 72 */	fmuls f1, f1, f5
/* 8007BF44  C0 C1 00 38 */	lfs f6, 0x38(r1)
/* 8007BF48  EC 00 01 B2 */	fmuls f0, f0, f6
/* 8007BF4C  EC 21 00 2A */	fadds f1, f1, f0
/* 8007BF50  C0 02 8C F8 */	lfs f0, lit_3717(r2)
/* 8007BF54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007BF58  41 80 02 5C */	blt lbl_8007C1B4
/* 8007BF5C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8007BF60  28 00 00 01 */	cmplwi r0, 1
/* 8007BF64  40 82 00 74 */	bne lbl_8007BFD8
/* 8007BF68  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8007BF6C  40 81 00 0C */	ble lbl_8007BF78
/* 8007BF70  FC 00 10 34 */	frsqrte f0, f2
/* 8007BF74  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8007BF78:
/* 8007BF78  7E E3 BB 78 */	mr r3, r23
/* 8007BF7C  7F 04 C3 78 */	mr r4, r24
/* 8007BF80  FC 20 E8 90 */	fmr f1, f29
/* 8007BF84  7F 65 DB 78 */	mr r5, r27
/* 8007BF88  4B FF FA 65 */	bl positionWallCorrect__4dBgWFP9dBgS_AcchfR8cM3dGPlaP4cXyzf
/* 8007BF8C  7F 03 C3 78 */	mr r3, r24
/* 8007BF90  4B FF B3 59 */	bl CalcMovePosWork__9dBgS_AcchFv
/* 8007BF94  80 98 00 8C */	lwz r4, 0x8c(r24)
/* 8007BF98  38 76 00 10 */	addi r3, r22, 0x10
/* 8007BF9C  7C 04 18 2E */	lwzx r0, r4, r3
/* 8007BFA0  60 00 00 02 */	ori r0, r0, 2
/* 8007BFA4  7C 04 19 2E */	stwx r0, r4, r3
/* 8007BFA8  7F 03 C3 78 */	mr r3, r24
/* 8007BFAC  7F 24 CB 78 */	mr r4, r25
/* 8007BFB0  7F A5 EB 78 */	mr r5, r29
/* 8007BFB4  4B FF B2 D5 */	bl SetWallPolyIndex__9dBgS_AcchFii
/* 8007BFB8  C0 3B 00 00 */	lfs f1, 0(r27)
/* 8007BFBC  C0 5B 00 08 */	lfs f2, 8(r27)
/* 8007BFC0  48 1E B6 B5 */	bl cM_atan2s__Fff
/* 8007BFC4  80 98 00 8C */	lwz r4, 0x8c(r24)
/* 8007BFC8  38 16 00 3C */	addi r0, r22, 0x3c
/* 8007BFCC  7C 64 03 2E */	sthx r3, r4, r0
/* 8007BFD0  3B 80 00 01 */	li r28, 1
/* 8007BFD4  48 00 01 E0 */	b lbl_8007C1B4
lbl_8007BFD8:
/* 8007BFD8  EF 9C 28 28 */	fsubs f28, f28, f5
/* 8007BFDC  EF 7B 30 28 */	fsubs f27, f27, f6
/* 8007BFE0  EF 5A 28 28 */	fsubs f26, f26, f5
/* 8007BFE4  EF 39 30 28 */	fsubs f25, f25, f6
/* 8007BFE8  FC 20 E0 90 */	fmr f1, f28
/* 8007BFEC  FC 40 D8 90 */	fmr f2, f27
/* 8007BFF0  48 1E C6 25 */	bl cM3d_Len2dSq__Fffff
/* 8007BFF4  FF 00 08 90 */	fmr f24, f1
/* 8007BFF8  80 78 00 30 */	lwz r3, 0x30(r24)
/* 8007BFFC  FC 20 D0 90 */	fmr f1, f26
/* 8007C000  FC 40 C8 90 */	fmr f2, f25
/* 8007C004  C0 63 00 00 */	lfs f3, 0(r3)
/* 8007C008  C0 83 00 08 */	lfs f4, 8(r3)
/* 8007C00C  48 1E C6 09 */	bl cM3d_Len2dSq__Fffff
/* 8007C010  C0 1B 00 00 */	lfs f0, 0(r27)
/* 8007C014  FC 60 00 50 */	fneg f3, f0
/* 8007C018  C0 1B 00 08 */	lfs f0, 8(r27)
/* 8007C01C  FC 80 00 50 */	fneg f4, f0
/* 8007C020  FC 18 08 40 */	fcmpo cr0, f24, f1
/* 8007C024  40 80 00 CC */	bge lbl_8007C0F0
/* 8007C028  FC 18 F0 40 */	fcmpo cr0, f24, f30
/* 8007C02C  41 81 01 88 */	bgt lbl_8007C1B4
/* 8007C030  EC 18 F0 28 */	fsubs f0, f24, f30
/* 8007C034  FC 00 02 10 */	fabs f0, f0
/* 8007C038  FC 20 00 18 */	frsp f1, f0
/* 8007C03C  C0 02 8D 10 */	lfs f0, lit_4962(r2)
/* 8007C040  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007C044  41 80 01 70 */	blt lbl_8007C1B4
/* 8007C048  80 18 00 8C */	lwz r0, 0x8c(r24)
/* 8007C04C  38 76 00 14 */	addi r3, r22, 0x14
/* 8007C050  7C 60 1A 14 */	add r3, r0, r3
/* 8007C054  FC 20 E0 90 */	fmr f1, f28
/* 8007C058  FC 40 D8 90 */	fmr f2, f27
/* 8007C05C  38 81 00 14 */	addi r4, r1, 0x14
/* 8007C060  38 A1 00 10 */	addi r5, r1, 0x10
/* 8007C064  48 1E C1 FD */	bl cM2d_CrossCirLin__FR8cM2dGCirffffPfPf
/* 8007C068  80 78 00 30 */	lwz r3, 0x30(r24)
/* 8007C06C  C0 23 00 00 */	lfs f1, 0(r3)
/* 8007C070  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8007C074  EC 1C 00 28 */	fsubs f0, f28, f0
/* 8007C078  EC 01 00 2A */	fadds f0, f1, f0
/* 8007C07C  D0 03 00 00 */	stfs f0, 0(r3)
/* 8007C080  80 78 00 30 */	lwz r3, 0x30(r24)
/* 8007C084  C0 23 00 08 */	lfs f1, 8(r3)
/* 8007C088  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8007C08C  EC 1B 00 28 */	fsubs f0, f27, f0
/* 8007C090  EC 01 00 2A */	fadds f0, f1, f0
/* 8007C094  D0 03 00 08 */	stfs f0, 8(r3)
/* 8007C098  7F 03 C3 78 */	mr r3, r24
/* 8007C09C  4B FF B2 4D */	bl CalcMovePosWork__9dBgS_AcchFv
/* 8007C0A0  80 98 00 8C */	lwz r4, 0x8c(r24)
/* 8007C0A4  38 76 00 10 */	addi r3, r22, 0x10
/* 8007C0A8  7C 04 18 2E */	lwzx r0, r4, r3
/* 8007C0AC  60 00 00 02 */	ori r0, r0, 2
/* 8007C0B0  7C 04 19 2E */	stwx r0, r4, r3
/* 8007C0B4  7F 03 C3 78 */	mr r3, r24
/* 8007C0B8  7F 24 CB 78 */	mr r4, r25
/* 8007C0BC  7F A5 EB 78 */	mr r5, r29
/* 8007C0C0  4B FF B1 C9 */	bl SetWallPolyIndex__9dBgS_AcchFii
/* 8007C0C4  C0 3B 00 00 */	lfs f1, 0(r27)
/* 8007C0C8  C0 5B 00 08 */	lfs f2, 8(r27)
/* 8007C0CC  48 1E B5 A9 */	bl cM_atan2s__Fff
/* 8007C0D0  80 98 00 8C */	lwz r4, 0x8c(r24)
/* 8007C0D4  38 16 00 3C */	addi r0, r22, 0x3c
/* 8007C0D8  7C 64 03 2E */	sthx r3, r4, r0
/* 8007C0DC  3B 80 00 01 */	li r28, 1
/* 8007C0E0  80 18 00 2C */	lwz r0, 0x2c(r24)
/* 8007C0E4  60 00 00 10 */	ori r0, r0, 0x10
/* 8007C0E8  90 18 00 2C */	stw r0, 0x2c(r24)
/* 8007C0EC  48 00 00 C8 */	b lbl_8007C1B4
lbl_8007C0F0:
/* 8007C0F0  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 8007C0F4  41 81 00 C0 */	bgt lbl_8007C1B4
/* 8007C0F8  EC 01 F0 28 */	fsubs f0, f1, f30
/* 8007C0FC  FC 00 02 10 */	fabs f0, f0
/* 8007C100  FC 20 00 18 */	frsp f1, f0
/* 8007C104  C0 02 8D 10 */	lfs f0, lit_4962(r2)
/* 8007C108  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007C10C  41 80 00 A8 */	blt lbl_8007C1B4
/* 8007C110  80 18 00 8C */	lwz r0, 0x8c(r24)
/* 8007C114  38 76 00 14 */	addi r3, r22, 0x14
/* 8007C118  7C 60 1A 14 */	add r3, r0, r3
/* 8007C11C  FC 20 D0 90 */	fmr f1, f26
/* 8007C120  FC 40 C8 90 */	fmr f2, f25
/* 8007C124  38 81 00 0C */	addi r4, r1, 0xc
/* 8007C128  38 A1 00 08 */	addi r5, r1, 8
/* 8007C12C  48 1E C1 35 */	bl cM2d_CrossCirLin__FR8cM2dGCirffffPfPf
/* 8007C130  80 78 00 30 */	lwz r3, 0x30(r24)
/* 8007C134  C0 23 00 00 */	lfs f1, 0(r3)
/* 8007C138  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8007C13C  EC 1A 00 28 */	fsubs f0, f26, f0
/* 8007C140  EC 01 00 2A */	fadds f0, f1, f0
/* 8007C144  D0 03 00 00 */	stfs f0, 0(r3)
/* 8007C148  80 78 00 30 */	lwz r3, 0x30(r24)
/* 8007C14C  C0 23 00 08 */	lfs f1, 8(r3)
/* 8007C150  C0 01 00 08 */	lfs f0, 8(r1)
/* 8007C154  EC 19 00 28 */	fsubs f0, f25, f0
/* 8007C158  EC 01 00 2A */	fadds f0, f1, f0
/* 8007C15C  D0 03 00 08 */	stfs f0, 8(r3)
/* 8007C160  7F 03 C3 78 */	mr r3, r24
/* 8007C164  4B FF B1 85 */	bl CalcMovePosWork__9dBgS_AcchFv
/* 8007C168  80 98 00 8C */	lwz r4, 0x8c(r24)
/* 8007C16C  38 76 00 10 */	addi r3, r22, 0x10
/* 8007C170  7C 04 18 2E */	lwzx r0, r4, r3
/* 8007C174  60 00 00 02 */	ori r0, r0, 2
/* 8007C178  7C 04 19 2E */	stwx r0, r4, r3
/* 8007C17C  7F 03 C3 78 */	mr r3, r24
/* 8007C180  7F 24 CB 78 */	mr r4, r25
/* 8007C184  7F A5 EB 78 */	mr r5, r29
/* 8007C188  4B FF B1 01 */	bl SetWallPolyIndex__9dBgS_AcchFii
/* 8007C18C  C0 3B 00 00 */	lfs f1, 0(r27)
/* 8007C190  C0 5B 00 08 */	lfs f2, 8(r27)
/* 8007C194  48 1E B4 E1 */	bl cM_atan2s__Fff
/* 8007C198  80 98 00 8C */	lwz r4, 0x8c(r24)
/* 8007C19C  38 16 00 3C */	addi r0, r22, 0x3c
/* 8007C1A0  7C 64 03 2E */	sthx r3, r4, r0
/* 8007C1A4  3B 80 00 01 */	li r28, 1
/* 8007C1A8  80 18 00 2C */	lwz r0, 0x2c(r24)
/* 8007C1AC  60 00 00 10 */	ori r0, r0, 0x10
/* 8007C1B0  90 18 00 2C */	stw r0, 0x2c(r24)
lbl_8007C1B4:
/* 8007C1B4  3B 39 00 01 */	addi r25, r25, 1
/* 8007C1B8  3A D6 00 40 */	addi r22, r22, 0x40
lbl_8007C1BC:
/* 8007C1BC  80 18 00 88 */	lwz r0, 0x88(r24)
/* 8007C1C0  7C 19 00 00 */	cmpw r25, r0
/* 8007C1C4  41 80 F9 8C */	blt lbl_8007BB50
lbl_8007C1C8:
/* 8007C1C8  7C BE FA 2E */	lhzx r5, r30, r31
/* 8007C1CC  28 05 FF FF */	cmplwi r5, 0xffff
/* 8007C1D0  41 82 00 08 */	beq lbl_8007C1D8
/* 8007C1D4  4B FF F8 CC */	b lbl_8007BAA0
lbl_8007C1D8:
/* 8007C1D8  7F 83 E3 78 */	mr r3, r28
/* 8007C1DC  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 8007C1E0  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 8007C1E4  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 8007C1E8  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 8007C1EC  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, 0 /* qr0 */
/* 8007C1F0  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 8007C1F4  E3 81 00 B8 */	psq_l f28, 184(r1), 0, 0 /* qr0 */
/* 8007C1F8  CB 81 00 B0 */	lfd f28, 0xb0(r1)
/* 8007C1FC  E3 61 00 A8 */	psq_l f27, 168(r1), 0, 0 /* qr0 */
/* 8007C200  CB 61 00 A0 */	lfd f27, 0xa0(r1)
/* 8007C204  E3 41 00 98 */	psq_l f26, 152(r1), 0, 0 /* qr0 */
/* 8007C208  CB 41 00 90 */	lfd f26, 0x90(r1)
/* 8007C20C  E3 21 00 88 */	psq_l f25, 136(r1), 0, 0 /* qr0 */
/* 8007C210  CB 21 00 80 */	lfd f25, 0x80(r1)
/* 8007C214  E3 01 00 78 */	psq_l f24, 120(r1), 0, 0 /* qr0 */
/* 8007C218  CB 01 00 70 */	lfd f24, 0x70(r1)
/* 8007C21C  39 61 00 70 */	addi r11, r1, 0x70
/* 8007C220  48 2E 5F ED */	bl _restgpr_22
/* 8007C224  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8007C228  7C 08 03 A6 */	mtlr r0
/* 8007C22C  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8007C230  4E 80 00 20 */	blr 
