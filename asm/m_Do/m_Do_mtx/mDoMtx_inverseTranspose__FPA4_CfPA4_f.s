lbl_8000C9B0:
/* 8000C9B0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8000C9B4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8000C9B8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8000C9BC  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8000C9C0  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 8000C9C4  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 8000C9C8  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 8000C9CC  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 8000C9D0  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 8000C9D4  DB 61 00 20 */	stfd f27, 0x20(r1)
/* 8000C9D8  F3 61 00 28 */	psq_st f27, 40(r1), 0, 0 /* qr0 */
/* 8000C9DC  DB 41 00 10 */	stfd f26, 0x10(r1)
/* 8000C9E0  F3 41 00 18 */	psq_st f26, 24(r1), 0, 0 /* qr0 */
/* 8000C9E4  C0 E3 00 24 */	lfs f7, 0x24(r3)
/* 8000C9E8  C1 A3 00 00 */	lfs f13, 0(r3)
/* 8000C9EC  C3 E3 00 18 */	lfs f31, 0x18(r3)
/* 8000C9F0  C1 63 00 04 */	lfs f11, 4(r3)
/* 8000C9F4  C0 C3 00 10 */	lfs f6, 0x10(r3)
/* 8000C9F8  C1 83 00 28 */	lfs f12, 0x28(r3)
/* 8000C9FC  C1 03 00 14 */	lfs f8, 0x14(r3)
/* 8000CA00  C1 23 00 20 */	lfs f9, 0x20(r3)
/* 8000CA04  C1 43 00 08 */	lfs f10, 8(r3)
/* 8000CA08  EC 6A 01 B2 */	fmuls f3, f10, f6
/* 8000CA0C  EC 87 00 F2 */	fmuls f4, f7, f3
/* 8000CA10  EC 4D 02 32 */	fmuls f2, f13, f8
/* 8000CA14  EC 2C 00 B2 */	fmuls f1, f12, f2
/* 8000CA18  EF 8B 07 F2 */	fmuls f28, f11, f31
/* 8000CA1C  EC 09 07 32 */	fmuls f0, f9, f28
/* 8000CA20  EC 01 00 2A */	fadds f0, f1, f0
/* 8000CA24  EC 24 00 2A */	fadds f1, f4, f0
/* 8000CA28  EF C9 02 32 */	fmuls f30, f9, f8
/* 8000CA2C  EC 0A 07 B2 */	fmuls f0, f10, f30
/* 8000CA30  EC 81 00 28 */	fsubs f4, f1, f0
/* 8000CA34  EC 26 02 F2 */	fmuls f1, f6, f11
/* 8000CA38  EC 0C 00 72 */	fmuls f0, f12, f1
/* 8000CA3C  EC 84 00 28 */	fsubs f4, f4, f0
/* 8000CA40  EF AD 01 F2 */	fmuls f29, f13, f7
/* 8000CA44  EC 1F 07 72 */	fmuls f0, f31, f29
/* 8000CA48  EC A4 00 28 */	fsubs f5, f4, f0
/* 8000CA4C  C0 02 81 0C */	lfs f0, lit_3677(r2)
/* 8000CA50  FC 00 28 00 */	fcmpu cr0, f0, f5
/* 8000CA54  40 82 00 0C */	bne lbl_8000CA60
/* 8000CA58  38 60 00 00 */	li r3, 0
/* 8000CA5C  48 00 00 C8 */	b lbl_8000CB24
lbl_8000CA60:
/* 8000CA60  C0 82 81 08 */	lfs f4, lit_3676(r2)
/* 8000CA64  EF 64 28 24 */	fdivs f27, f4, f5
/* 8000CA68  EC A8 03 32 */	fmuls f5, f8, f12
/* 8000CA6C  EC 87 07 F2 */	fmuls f4, f7, f31
/* 8000CA70  EC 85 20 28 */	fsubs f4, f5, f4
/* 8000CA74  EC 9B 01 32 */	fmuls f4, f27, f4
/* 8000CA78  EF 46 03 32 */	fmuls f26, f6, f12
/* 8000CA7C  EC A9 07 F2 */	fmuls f5, f9, f31
/* 8000CA80  EC BA 28 28 */	fsubs f5, f26, f5
/* 8000CA84  FC A0 28 50 */	fneg f5, f5
/* 8000CA88  EC BB 01 72 */	fmuls f5, f27, f5
/* 8000CA8C  EC C6 01 F2 */	fmuls f6, f6, f7
/* 8000CA90  EC C6 F0 28 */	fsubs f6, f6, f30
/* 8000CA94  EC DB 01 B2 */	fmuls f6, f27, f6
/* 8000CA98  EF CB 03 32 */	fmuls f30, f11, f12
/* 8000CA9C  EC E7 02 B2 */	fmuls f7, f7, f10
/* 8000CAA0  EC FE 38 28 */	fsubs f7, f30, f7
/* 8000CAA4  FC E0 38 50 */	fneg f7, f7
/* 8000CAA8  EC FB 01 F2 */	fmuls f7, f27, f7
/* 8000CAAC  EF CD 03 32 */	fmuls f30, f13, f12
/* 8000CAB0  ED 89 02 B2 */	fmuls f12, f9, f10
/* 8000CAB4  ED 9E 60 28 */	fsubs f12, f30, f12
/* 8000CAB8  ED 9B 03 32 */	fmuls f12, f27, f12
/* 8000CABC  ED 29 02 F2 */	fmuls f9, f9, f11
/* 8000CAC0  ED 3D 48 28 */	fsubs f9, f29, f9
/* 8000CAC4  FD 20 48 50 */	fneg f9, f9
/* 8000CAC8  ED 3B 02 72 */	fmuls f9, f27, f9
/* 8000CACC  ED 08 02 B2 */	fmuls f8, f8, f10
/* 8000CAD0  ED 1C 40 28 */	fsubs f8, f28, f8
/* 8000CAD4  ED 1B 02 32 */	fmuls f8, f27, f8
/* 8000CAD8  D1 04 00 20 */	stfs f8, 0x20(r4)
/* 8000CADC  ED 0D 07 F2 */	fmuls f8, f13, f31
/* 8000CAE0  EC 68 18 28 */	fsubs f3, f8, f3
/* 8000CAE4  FC 60 18 50 */	fneg f3, f3
/* 8000CAE8  EC 7B 00 F2 */	fmuls f3, f27, f3
/* 8000CAEC  D0 64 00 24 */	stfs f3, 0x24(r4)
/* 8000CAF0  EC 22 08 28 */	fsubs f1, f2, f1
/* 8000CAF4  EC 3B 00 72 */	fmuls f1, f27, f1
/* 8000CAF8  D0 24 00 28 */	stfs f1, 0x28(r4)
/* 8000CAFC  D0 84 00 00 */	stfs f4, 0(r4)
/* 8000CB00  D0 A4 00 04 */	stfs f5, 4(r4)
/* 8000CB04  D0 C4 00 08 */	stfs f6, 8(r4)
/* 8000CB08  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 8000CB0C  D0 E4 00 10 */	stfs f7, 0x10(r4)
/* 8000CB10  D1 84 00 14 */	stfs f12, 0x14(r4)
/* 8000CB14  D1 24 00 18 */	stfs f9, 0x18(r4)
/* 8000CB18  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 8000CB1C  D0 04 00 2C */	stfs f0, 0x2c(r4)
/* 8000CB20  38 60 00 01 */	li r3, 1
lbl_8000CB24:
/* 8000CB24  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8000CB28  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8000CB2C  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8000CB30  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8000CB34  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 8000CB38  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 8000CB3C  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 8000CB40  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 8000CB44  E3 61 00 28 */	psq_l f27, 40(r1), 0, 0 /* qr0 */
/* 8000CB48  CB 61 00 20 */	lfd f27, 0x20(r1)
/* 8000CB4C  E3 41 00 18 */	psq_l f26, 24(r1), 0, 0 /* qr0 */
/* 8000CB50  CB 41 00 10 */	lfd f26, 0x10(r1)
/* 8000CB54  38 21 00 70 */	addi r1, r1, 0x70
/* 8000CB58  4E 80 00 20 */	blr 
