lbl_8004F6C4:
/* 8004F6C4  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 8004F6C8  7C 08 02 A6 */	mflr r0
/* 8004F6CC  90 01 01 54 */	stw r0, 0x154(r1)
/* 8004F6D0  DB E1 01 40 */	stfd f31, 0x140(r1)
/* 8004F6D4  F3 E1 01 48 */	psq_st f31, 328(r1), 0, 0 /* qr0 */
/* 8004F6D8  DB C1 01 30 */	stfd f30, 0x130(r1)
/* 8004F6DC  F3 C1 01 38 */	psq_st f30, 312(r1), 0, 0 /* qr0 */
/* 8004F6E0  DB A1 01 20 */	stfd f29, 0x120(r1)
/* 8004F6E4  F3 A1 01 28 */	psq_st f29, 296(r1), 0, 0 /* qr0 */
/* 8004F6E8  DB 81 01 10 */	stfd f28, 0x110(r1)
/* 8004F6EC  F3 81 01 18 */	psq_st f28, 280(r1), 0, 0 /* qr0 */
/* 8004F6F0  DB 61 01 00 */	stfd f27, 0x100(r1)
/* 8004F6F4  F3 61 01 08 */	psq_st f27, 264(r1), 0, 0 /* qr0 */
/* 8004F6F8  DB 41 00 F0 */	stfd f26, 0xf0(r1)
/* 8004F6FC  F3 41 00 F8 */	psq_st f26, 248(r1), 0, 0 /* qr0 */
/* 8004F700  DB 21 00 E0 */	stfd f25, 0xe0(r1)
/* 8004F704  F3 21 00 E8 */	psq_st f25, 232(r1), 0, 0 /* qr0 */
/* 8004F708  DB 01 00 D0 */	stfd f24, 0xd0(r1)
/* 8004F70C  F3 01 00 D8 */	psq_st f24, 216(r1), 0, 0 /* qr0 */
/* 8004F710  DA E1 00 C0 */	stfd f23, 0xc0(r1)
/* 8004F714  F2 E1 00 C8 */	psq_st f23, 200(r1), 0, 0 /* qr0 */
/* 8004F718  DA C1 00 B0 */	stfd f22, 0xb0(r1)
/* 8004F71C  F2 C1 00 B8 */	psq_st f22, 184(r1), 0, 0 /* qr0 */
/* 8004F720  DA A1 00 A0 */	stfd f21, 0xa0(r1)
/* 8004F724  F2 A1 00 A8 */	psq_st f21, 168(r1), 0, 0 /* qr0 */
/* 8004F728  DA 81 00 90 */	stfd f20, 0x90(r1)
/* 8004F72C  F2 81 00 98 */	psq_st f20, 152(r1), 0, 0 /* qr0 */
/* 8004F730  DA 61 00 80 */	stfd f19, 0x80(r1)
/* 8004F734  F2 61 00 88 */	psq_st f19, 136(r1), 0, 0 /* qr0 */
/* 8004F738  DA 41 00 70 */	stfd f18, 0x70(r1)
/* 8004F73C  F2 41 00 78 */	psq_st f18, 120(r1), 0, 0 /* qr0 */
/* 8004F740  DA 21 00 60 */	stfd f17, 0x60(r1)
/* 8004F744  F2 21 00 68 */	psq_st f17, 104(r1), 0, 0 /* qr0 */
/* 8004F748  DA 01 00 50 */	stfd f16, 0x50(r1)
/* 8004F74C  F2 01 00 58 */	psq_st f16, 88(r1), 0, 0 /* qr0 */
/* 8004F750  D9 E1 00 40 */	stfd f15, 0x40(r1)
/* 8004F754  F1 E1 00 48 */	psq_st f15, 72(r1), 0, 0 /* qr0 */
/* 8004F758  D9 C1 00 30 */	stfd f14, 0x30(r1)
/* 8004F75C  F1 C1 00 38 */	psq_st f14, 56(r1), 0, 0 /* qr0 */
/* 8004F760  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8004F764  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8004F768  7C 7E 1B 78 */	mr r30, r3
/* 8004F76C  7C 9F 23 78 */	mr r31, r4
/* 8004F770  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8004F774  C3 E3 00 00 */	lfs f31, 0(r3)
/* 8004F778  C3 C3 00 04 */	lfs f30, 4(r3)
/* 8004F77C  C3 A3 00 08 */	lfs f29, 8(r3)
/* 8004F780  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8004F784  C3 83 00 00 */	lfs f28, 0(r3)
/* 8004F788  C3 63 00 04 */	lfs f27, 4(r3)
/* 8004F78C  C3 43 00 08 */	lfs f26, 8(r3)
/* 8004F790  D3 84 00 A4 */	stfs f28, 0xa4(r4)
/* 8004F794  D3 64 00 A8 */	stfs f27, 0xa8(r4)
/* 8004F798  D3 44 00 AC */	stfs f26, 0xac(r4)
/* 8004F79C  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 8004F7A0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8004F7A4  40 82 02 70 */	bne lbl_8004FA14
/* 8004F7A8  C0 22 85 8C */	lfs f1, lit_5066(r2)
/* 8004F7AC  EC 1C F8 28 */	fsubs f0, f28, f31
/* 8004F7B0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8004F7B4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8004F7B8  EC 1B F0 28 */	fsubs f0, f27, f30
/* 8004F7BC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8004F7C0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8004F7C4  EC 1A E8 28 */	fsubs f0, f26, f29
/* 8004F7C8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8004F7CC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8004F7D0  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8004F7D4  C0 03 00 00 */	lfs f0, 0(r3)
/* 8004F7D8  EC 1F 00 28 */	fsubs f0, f31, f0
/* 8004F7DC  EF 21 00 32 */	fmuls f25, f1, f0
/* 8004F7E0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8004F7E4  EC 1E 00 28 */	fsubs f0, f30, f0
/* 8004F7E8  EF 01 00 32 */	fmuls f24, f1, f0
/* 8004F7EC  C0 03 00 08 */	lfs f0, 8(r3)
/* 8004F7F0  EC 1D 00 28 */	fsubs f0, f29, f0
/* 8004F7F4  EE E1 00 32 */	fmuls f23, f1, f0
/* 8004F7F8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8004F7FC  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 8004F800  48 2F 7B 9D */	bl PSVECSquareDistance
/* 8004F804  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004F808  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8004F80C  40 81 00 58 */	ble lbl_8004F864
/* 8004F810  FC 00 08 34 */	frsqrte f0, f1
/* 8004F814  C8 82 85 A0 */	lfd f4, lit_5143(r2)
/* 8004F818  FC 44 00 32 */	fmul f2, f4, f0
/* 8004F81C  C8 62 85 A8 */	lfd f3, lit_5144(r2)
/* 8004F820  FC 00 00 32 */	fmul f0, f0, f0
/* 8004F824  FC 01 00 32 */	fmul f0, f1, f0
/* 8004F828  FC 03 00 28 */	fsub f0, f3, f0
/* 8004F82C  FC 02 00 32 */	fmul f0, f2, f0
/* 8004F830  FC 44 00 32 */	fmul f2, f4, f0
/* 8004F834  FC 00 00 32 */	fmul f0, f0, f0
/* 8004F838  FC 01 00 32 */	fmul f0, f1, f0
/* 8004F83C  FC 03 00 28 */	fsub f0, f3, f0
/* 8004F840  FC 02 00 32 */	fmul f0, f2, f0
/* 8004F844  FC 44 00 32 */	fmul f2, f4, f0
/* 8004F848  FC 00 00 32 */	fmul f0, f0, f0
/* 8004F84C  FC 01 00 32 */	fmul f0, f1, f0
/* 8004F850  FC 03 00 28 */	fsub f0, f3, f0
/* 8004F854  FC 02 00 32 */	fmul f0, f2, f0
/* 8004F858  FC 21 00 32 */	fmul f1, f1, f0
/* 8004F85C  FC 20 08 18 */	frsp f1, f1
/* 8004F860  48 00 00 88 */	b lbl_8004F8E8
lbl_8004F864:
/* 8004F864  C8 02 85 B0 */	lfd f0, lit_5145(r2)
/* 8004F868  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8004F86C  40 80 00 10 */	bge lbl_8004F87C
/* 8004F870  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8004F874  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8004F878  48 00 00 70 */	b lbl_8004F8E8
lbl_8004F87C:
/* 8004F87C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8004F880  80 81 00 08 */	lwz r4, 8(r1)
/* 8004F884  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8004F888  3C 00 7F 80 */	lis r0, 0x7f80
/* 8004F88C  7C 03 00 00 */	cmpw r3, r0
/* 8004F890  41 82 00 14 */	beq lbl_8004F8A4
/* 8004F894  40 80 00 40 */	bge lbl_8004F8D4
/* 8004F898  2C 03 00 00 */	cmpwi r3, 0
/* 8004F89C  41 82 00 20 */	beq lbl_8004F8BC
/* 8004F8A0  48 00 00 34 */	b lbl_8004F8D4
lbl_8004F8A4:
/* 8004F8A4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8004F8A8  41 82 00 0C */	beq lbl_8004F8B4
/* 8004F8AC  38 00 00 01 */	li r0, 1
/* 8004F8B0  48 00 00 28 */	b lbl_8004F8D8
lbl_8004F8B4:
/* 8004F8B4  38 00 00 02 */	li r0, 2
/* 8004F8B8  48 00 00 20 */	b lbl_8004F8D8
lbl_8004F8BC:
/* 8004F8BC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8004F8C0  41 82 00 0C */	beq lbl_8004F8CC
/* 8004F8C4  38 00 00 05 */	li r0, 5
/* 8004F8C8  48 00 00 10 */	b lbl_8004F8D8
lbl_8004F8CC:
/* 8004F8CC  38 00 00 03 */	li r0, 3
/* 8004F8D0  48 00 00 08 */	b lbl_8004F8D8
lbl_8004F8D4:
/* 8004F8D4  38 00 00 04 */	li r0, 4
lbl_8004F8D8:
/* 8004F8D8  2C 00 00 01 */	cmpwi r0, 1
/* 8004F8DC  40 82 00 0C */	bne lbl_8004F8E8
/* 8004F8E0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8004F8E4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8004F8E8:
/* 8004F8E8  C0 02 85 9C */	lfs f0, lit_5142(r2)
/* 8004F8EC  EC 20 00 72 */	fmuls f1, f0, f1
/* 8004F8F0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8004F8F4  EC 41 00 32 */	fmuls f2, f1, f0
/* 8004F8F8  80 1E 00 08 */	lwz r0, 8(r30)
/* 8004F8FC  2C 00 00 00 */	cmpwi r0, 0
/* 8004F900  41 82 00 38 */	beq lbl_8004F938
/* 8004F904  C8 22 85 48 */	lfd f1, lit_3883(r2)
/* 8004F908  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8004F90C  90 61 00 14 */	stw r3, 0x14(r1)
/* 8004F910  3C 00 43 30 */	lis r0, 0x4330
/* 8004F914  90 01 00 10 */	stw r0, 0x10(r1)
/* 8004F918  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8004F91C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8004F920  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8004F924  40 81 00 14 */	ble lbl_8004F938
/* 8004F928  90 61 00 14 */	stw r3, 0x14(r1)
/* 8004F92C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8004F930  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8004F934  EC 40 08 28 */	fsubs f2, f0, f1
lbl_8004F938:
/* 8004F938  C1 E2 85 88 */	lfs f15, lit_4519(r2)
/* 8004F93C  FC 02 78 40 */	fcmpo cr0, f2, f15
/* 8004F940  40 81 00 D4 */	ble lbl_8004FA14
/* 8004F944  EE 8F 10 24 */	fdivs f20, f15, f2
/* 8004F948  FE 60 A0 90 */	fmr f19, f20
/* 8004F94C  C2 02 85 E4 */	lfs f16, lit_6078(r2)
/* 8004F950  C2 22 85 DC */	lfs f17, lit_6076(r2)
/* 8004F954  C2 42 85 F4 */	lfs f18, lit_6846(r2)
/* 8004F958  48 00 00 B4 */	b lbl_8004FA0C
lbl_8004F95C:
/* 8004F95C  EC B3 04 F2 */	fmuls f5, f19, f19
/* 8004F960  EC 85 04 F2 */	fmuls f4, f5, f19
/* 8004F964  EC 10 01 32 */	fmuls f0, f16, f4
/* 8004F968  EC 31 01 72 */	fmuls f1, f17, f5
/* 8004F96C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8004F970  EC 6F 00 2A */	fadds f3, f15, f0
/* 8004F974  EC 12 01 32 */	fmuls f0, f18, f4
/* 8004F978  EC 40 08 2A */	fadds f2, f0, f1
/* 8004F97C  EC 10 01 72 */	fmuls f0, f16, f5
/* 8004F980  EC 04 00 28 */	fsubs f0, f4, f0
/* 8004F984  EC 33 00 2A */	fadds f1, f19, f0
/* 8004F988  EC 04 28 28 */	fsubs f0, f4, f5
/* 8004F98C  C0 81 00 20 */	lfs f4, 0x20(r1)
/* 8004F990  EC E0 01 32 */	fmuls f7, f0, f4
/* 8004F994  EC C1 06 72 */	fmuls f6, f1, f25
/* 8004F998  EC A3 07 F2 */	fmuls f5, f3, f31
/* 8004F99C  EC 82 07 32 */	fmuls f4, f2, f28
/* 8004F9A0  EC 85 20 2A */	fadds f4, f5, f4
/* 8004F9A4  EC 86 20 2A */	fadds f4, f6, f4
/* 8004F9A8  EE C7 20 2A */	fadds f22, f7, f4
/* 8004F9AC  C0 81 00 1C */	lfs f4, 0x1c(r1)
/* 8004F9B0  EC E0 01 32 */	fmuls f7, f0, f4
/* 8004F9B4  EC C1 06 32 */	fmuls f6, f1, f24
/* 8004F9B8  EC A3 07 B2 */	fmuls f5, f3, f30
/* 8004F9BC  EC 82 06 F2 */	fmuls f4, f2, f27
/* 8004F9C0  EC 85 20 2A */	fadds f4, f5, f4
/* 8004F9C4  EC 86 20 2A */	fadds f4, f6, f4
/* 8004F9C8  EE A7 20 2A */	fadds f21, f7, f4
/* 8004F9CC  C0 81 00 18 */	lfs f4, 0x18(r1)
/* 8004F9D0  EC A0 01 32 */	fmuls f5, f0, f4
/* 8004F9D4  EC 81 05 F2 */	fmuls f4, f1, f23
/* 8004F9D8  EC 23 07 72 */	fmuls f1, f3, f29
/* 8004F9DC  EC 02 06 B2 */	fmuls f0, f2, f26
/* 8004F9E0  EC 01 00 2A */	fadds f0, f1, f0
/* 8004F9E4  EC 04 00 2A */	fadds f0, f4, f0
/* 8004F9E8  ED C5 00 2A */	fadds f14, f5, f0
/* 8004F9EC  7F E3 FB 78 */	mr r3, r31
/* 8004F9F0  48 22 F0 51 */	bl createParticle__14JPABaseEmitterFv
/* 8004F9F4  28 03 00 00 */	cmplwi r3, 0
/* 8004F9F8  41 82 00 10 */	beq lbl_8004FA08
/* 8004F9FC  D2 C3 00 18 */	stfs f22, 0x18(r3)
/* 8004FA00  D2 A3 00 1C */	stfs f21, 0x1c(r3)
/* 8004FA04  D1 C3 00 20 */	stfs f14, 0x20(r3)
lbl_8004FA08:
/* 8004FA08  EE 73 A0 2A */	fadds f19, f19, f20
lbl_8004FA0C:
/* 8004FA0C  FC 13 78 40 */	fcmpo cr0, f19, f15
/* 8004FA10  41 80 FF 4C */	blt lbl_8004F95C
lbl_8004FA14:
/* 8004FA14  E3 E1 01 48 */	psq_l f31, 328(r1), 0, 0 /* qr0 */
/* 8004FA18  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 8004FA1C  E3 C1 01 38 */	psq_l f30, 312(r1), 0, 0 /* qr0 */
/* 8004FA20  CB C1 01 30 */	lfd f30, 0x130(r1)
/* 8004FA24  E3 A1 01 28 */	psq_l f29, 296(r1), 0, 0 /* qr0 */
/* 8004FA28  CB A1 01 20 */	lfd f29, 0x120(r1)
/* 8004FA2C  E3 81 01 18 */	psq_l f28, 280(r1), 0, 0 /* qr0 */
/* 8004FA30  CB 81 01 10 */	lfd f28, 0x110(r1)
/* 8004FA34  E3 61 01 08 */	psq_l f27, 264(r1), 0, 0 /* qr0 */
/* 8004FA38  CB 61 01 00 */	lfd f27, 0x100(r1)
/* 8004FA3C  E3 41 00 F8 */	psq_l f26, 248(r1), 0, 0 /* qr0 */
/* 8004FA40  CB 41 00 F0 */	lfd f26, 0xf0(r1)
/* 8004FA44  E3 21 00 E8 */	psq_l f25, 232(r1), 0, 0 /* qr0 */
/* 8004FA48  CB 21 00 E0 */	lfd f25, 0xe0(r1)
/* 8004FA4C  E3 01 00 D8 */	psq_l f24, 216(r1), 0, 0 /* qr0 */
/* 8004FA50  CB 01 00 D0 */	lfd f24, 0xd0(r1)
/* 8004FA54  E2 E1 00 C8 */	psq_l f23, 200(r1), 0, 0 /* qr0 */
/* 8004FA58  CA E1 00 C0 */	lfd f23, 0xc0(r1)
/* 8004FA5C  E2 C1 00 B8 */	psq_l f22, 184(r1), 0, 0 /* qr0 */
/* 8004FA60  CA C1 00 B0 */	lfd f22, 0xb0(r1)
/* 8004FA64  E2 A1 00 A8 */	psq_l f21, 168(r1), 0, 0 /* qr0 */
/* 8004FA68  CA A1 00 A0 */	lfd f21, 0xa0(r1)
/* 8004FA6C  E2 81 00 98 */	psq_l f20, 152(r1), 0, 0 /* qr0 */
/* 8004FA70  CA 81 00 90 */	lfd f20, 0x90(r1)
/* 8004FA74  E2 61 00 88 */	psq_l f19, 136(r1), 0, 0 /* qr0 */
/* 8004FA78  CA 61 00 80 */	lfd f19, 0x80(r1)
/* 8004FA7C  E2 41 00 78 */	psq_l f18, 120(r1), 0, 0 /* qr0 */
/* 8004FA80  CA 41 00 70 */	lfd f18, 0x70(r1)
/* 8004FA84  E2 21 00 68 */	psq_l f17, 104(r1), 0, 0 /* qr0 */
/* 8004FA88  CA 21 00 60 */	lfd f17, 0x60(r1)
/* 8004FA8C  E2 01 00 58 */	psq_l f16, 88(r1), 0, 0 /* qr0 */
/* 8004FA90  CA 01 00 50 */	lfd f16, 0x50(r1)
/* 8004FA94  E1 E1 00 48 */	psq_l f15, 72(r1), 0, 0 /* qr0 */
/* 8004FA98  C9 E1 00 40 */	lfd f15, 0x40(r1)
/* 8004FA9C  E1 C1 00 38 */	psq_l f14, 56(r1), 0, 0 /* qr0 */
/* 8004FAA0  C9 C1 00 30 */	lfd f14, 0x30(r1)
/* 8004FAA4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8004FAA8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8004FAAC  80 01 01 54 */	lwz r0, 0x154(r1)
/* 8004FAB0  7C 08 03 A6 */	mtlr r0
/* 8004FAB4  38 21 01 50 */	addi r1, r1, 0x150
/* 8004FAB8  4E 80 00 20 */	blr 
