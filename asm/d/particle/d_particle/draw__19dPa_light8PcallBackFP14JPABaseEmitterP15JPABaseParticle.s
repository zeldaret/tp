lbl_8004DD1C:
/* 8004DD1C  94 21 FD D0 */	stwu r1, -0x230(r1)
/* 8004DD20  7C 08 02 A6 */	mflr r0
/* 8004DD24  90 01 02 34 */	stw r0, 0x234(r1)
/* 8004DD28  DB E1 02 20 */	stfd f31, 0x220(r1)
/* 8004DD2C  F3 E1 02 28 */	psq_st f31, 552(r1), 0, 0 /* qr0 */
/* 8004DD30  DB C1 02 10 */	stfd f30, 0x210(r1)
/* 8004DD34  F3 C1 02 18 */	psq_st f30, 536(r1), 0, 0 /* qr0 */
/* 8004DD38  DB A1 02 00 */	stfd f29, 0x200(r1)
/* 8004DD3C  F3 A1 02 08 */	psq_st f29, 520(r1), 0, 0 /* qr0 */
/* 8004DD40  DB 81 01 F0 */	stfd f28, 0x1f0(r1)
/* 8004DD44  F3 81 01 F8 */	psq_st f28, 504(r1), 0, 0 /* qr0 */
/* 8004DD48  DB 61 01 E0 */	stfd f27, 0x1e0(r1)
/* 8004DD4C  F3 61 01 E8 */	psq_st f27, 488(r1), 0, 0 /* qr0 */
/* 8004DD50  DB 41 01 D0 */	stfd f26, 0x1d0(r1)
/* 8004DD54  F3 41 01 D8 */	psq_st f26, 472(r1), 0, 0 /* qr0 */
/* 8004DD58  DB 21 01 C0 */	stfd f25, 0x1c0(r1)
/* 8004DD5C  F3 21 01 C8 */	psq_st f25, 456(r1), 0, 0 /* qr0 */
/* 8004DD60  DB 01 01 B0 */	stfd f24, 0x1b0(r1)
/* 8004DD64  F3 01 01 B8 */	psq_st f24, 440(r1), 0, 0 /* qr0 */
/* 8004DD68  DA E1 01 A0 */	stfd f23, 0x1a0(r1)
/* 8004DD6C  F2 E1 01 A8 */	psq_st f23, 424(r1), 0, 0 /* qr0 */
/* 8004DD70  DA C1 01 90 */	stfd f22, 0x190(r1)
/* 8004DD74  F2 C1 01 98 */	psq_st f22, 408(r1), 0, 0 /* qr0 */
/* 8004DD78  DA A1 01 80 */	stfd f21, 0x180(r1)
/* 8004DD7C  F2 A1 01 88 */	psq_st f21, 392(r1), 0, 0 /* qr0 */
/* 8004DD80  DA 81 01 70 */	stfd f20, 0x170(r1)
/* 8004DD84  F2 81 01 78 */	psq_st f20, 376(r1), 0, 0 /* qr0 */
/* 8004DD88  DA 61 01 60 */	stfd f19, 0x160(r1)
/* 8004DD8C  F2 61 01 68 */	psq_st f19, 360(r1), 0, 0 /* qr0 */
/* 8004DD90  DA 41 01 50 */	stfd f18, 0x150(r1)
/* 8004DD94  F2 41 01 58 */	psq_st f18, 344(r1), 0, 0 /* qr0 */
/* 8004DD98  39 61 01 50 */	addi r11, r1, 0x150
/* 8004DD9C  48 31 44 41 */	bl _savegpr_29
/* 8004DDA0  7C 9D 23 78 */	mr r29, r4
/* 8004DDA4  7C BE 2B 78 */	mr r30, r5
/* 8004DDA8  8B E4 00 BB */	lbz r31, 0xbb(r4)
/* 8004DDAC  7F C3 F3 78 */	mr r3, r30
/* 8004DDB0  4B FF C5 FD */	bl dPa_setWindPower__FP15JPABaseParticle
/* 8004DDB4  38 61 01 04 */	addi r3, r1, 0x104
/* 8004DDB8  48 2F 86 CD */	bl PSMTXIdentity
/* 8004DDBC  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8004DDC0  48 2F 86 C5 */	bl PSMTXIdentity
/* 8004DDC4  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 8004DDC8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8004DDCC  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8004DDD0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8004DDD4  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8004DDD8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8004DDDC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8004DDE0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8004DDE4  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8004DDE8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8004DDEC  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 8004DDF0  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 8004DDF4  E0 01 00 5C */	psq_l f0, 92(r1), 0, 0 /* qr0 */
/* 8004DDF8  10 00 00 32 */	ps_mul f0, f0, f0
/* 8004DDFC  10 62 00 BA */	ps_madd f3, f2, f2, f0
/* 8004DE00  10 63 00 14 */	ps_sum0 f3, f3, f0, f0
/* 8004DE04  C0 22 85 D8 */	lfs f1, lit_6075(r2)
/* 8004DE08  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8004DE0C  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8004DE10  EC 01 00 32 */	fmuls f0, f1, f0
/* 8004DE14  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8004DE18  4C 40 13 82 */	cror 2, 0, 2
/* 8004DE1C  40 82 00 1C */	bne lbl_8004DE38
/* 8004DE20  C0 22 85 50 */	lfs f1, lit_3964(r2)
/* 8004DE24  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8004DE28  C0 02 85 88 */	lfs f0, lit_4519(r2)
/* 8004DE2C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8004DE30  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 8004DE34  48 00 00 78 */	b lbl_8004DEAC
lbl_8004DE38:
/* 8004DE38  E0 21 00 5C */	psq_l f1, 92(r1), 0, 0 /* qr0 */
/* 8004DE3C  10 21 00 72 */	ps_mul f1, f1, f1
/* 8004DE40  10 82 08 BA */	ps_madd f4, f2, f2, f1
/* 8004DE44  10 84 08 54 */	ps_sum0 f4, f4, f1, f1
/* 8004DE48  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004DE4C  4C 40 13 82 */	cror 2, 0, 2
/* 8004DE50  41 82 00 5C */	beq lbl_8004DEAC
/* 8004DE54  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004DE58  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004DE5C  4C 40 13 82 */	cror 2, 0, 2
/* 8004DE60  40 82 00 0C */	bne lbl_8004DE6C
/* 8004DE64  FF E0 20 90 */	fmr f31, f4
/* 8004DE68  48 00 00 2C */	b lbl_8004DE94
lbl_8004DE6C:
/* 8004DE6C  FC 60 20 34 */	frsqrte f3, f4
/* 8004DE70  FC 60 18 18 */	frsp f3, f3
/* 8004DE74  C0 02 85 8C */	lfs f0, lit_5066(r2)
/* 8004DE78  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8004DE7C  C0 22 85 DC */	lfs f1, lit_6076(r2)
/* 8004DE80  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8004DE84  EC 04 00 32 */	fmuls f0, f4, f0
/* 8004DE88  EC 01 00 28 */	fsubs f0, f1, f0
/* 8004DE8C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8004DE90  FF E0 00 90 */	fmr f31, f0
lbl_8004DE94:
/* 8004DE94  E0 01 00 5C */	psq_l f0, 92(r1), 0, 0 /* qr0 */
/* 8004DE98  E0 21 80 64 */	psq_l f1, 100(r1), 1, 0 /* qr0 */
/* 8004DE9C  10 00 07 D8 */	ps_muls0 f0, f0, f31
/* 8004DEA0  F0 01 00 5C */	psq_st f0, 92(r1), 0, 0 /* qr0 */
/* 8004DEA4  10 01 07 D8 */	ps_muls0 f0, f1, f31
/* 8004DEA8  F0 01 80 64 */	psq_st f0, 100(r1), 1, 0 /* qr0 */
lbl_8004DEAC:
/* 8004DEAC  38 61 00 68 */	addi r3, r1, 0x68
/* 8004DEB0  38 81 00 5C */	addi r4, r1, 0x5c
/* 8004DEB4  38 A1 00 50 */	addi r5, r1, 0x50
/* 8004DEB8  48 2F 92 FD */	bl PSVECCrossProduct
/* 8004DEBC  E0 01 00 50 */	psq_l f0, 80(r1), 0, 0 /* qr0 */
/* 8004DEC0  10 00 00 32 */	ps_mul f0, f0, f0
/* 8004DEC4  C2 E1 00 58 */	lfs f23, 0x58(r1)
/* 8004DEC8  10 57 05 FA */	ps_madd f2, f23, f23, f0
/* 8004DECC  10 42 00 14 */	ps_sum0 f2, f2, f0, f0
/* 8004DED0  C0 22 85 D8 */	lfs f1, lit_6075(r2)
/* 8004DED4  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8004DED8  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8004DEDC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8004DEE0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8004DEE4  4C 40 13 82 */	cror 2, 0, 2
/* 8004DEE8  40 82 00 1C */	bne lbl_8004DF04
/* 8004DEEC  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004DEF0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8004DEF4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8004DEF8  C0 02 85 88 */	lfs f0, lit_4519(r2)
/* 8004DEFC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8004DF00  48 00 00 78 */	b lbl_8004DF78
lbl_8004DF04:
/* 8004DF04  E0 21 00 50 */	psq_l f1, 80(r1), 0, 0 /* qr0 */
/* 8004DF08  10 21 00 72 */	ps_mul f1, f1, f1
/* 8004DF0C  10 97 0D FA */	ps_madd f4, f23, f23, f1
/* 8004DF10  10 84 08 54 */	ps_sum0 f4, f4, f1, f1
/* 8004DF14  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004DF18  4C 40 13 82 */	cror 2, 0, 2
/* 8004DF1C  41 82 00 5C */	beq lbl_8004DF78
/* 8004DF20  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004DF24  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004DF28  4C 40 13 82 */	cror 2, 0, 2
/* 8004DF2C  40 82 00 0C */	bne lbl_8004DF38
/* 8004DF30  FF C0 20 90 */	fmr f30, f4
/* 8004DF34  48 00 00 2C */	b lbl_8004DF60
lbl_8004DF38:
/* 8004DF38  FC 60 20 34 */	frsqrte f3, f4
/* 8004DF3C  FC 60 18 18 */	frsp f3, f3
/* 8004DF40  C0 02 85 8C */	lfs f0, lit_5066(r2)
/* 8004DF44  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8004DF48  C0 22 85 DC */	lfs f1, lit_6076(r2)
/* 8004DF4C  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8004DF50  EC 04 00 32 */	fmuls f0, f4, f0
/* 8004DF54  EC 01 00 28 */	fsubs f0, f1, f0
/* 8004DF58  EC 02 00 32 */	fmuls f0, f2, f0
/* 8004DF5C  FF C0 00 90 */	fmr f30, f0
lbl_8004DF60:
/* 8004DF60  E0 01 00 50 */	psq_l f0, 80(r1), 0, 0 /* qr0 */
/* 8004DF64  E0 21 80 58 */	psq_l f1, 88(r1), 1, 0 /* qr0 */
/* 8004DF68  10 00 07 98 */	ps_muls0 f0, f0, f30
/* 8004DF6C  F0 01 00 50 */	psq_st f0, 80(r1), 0, 0 /* qr0 */
/* 8004DF70  10 01 07 98 */	ps_muls0 f0, f1, f30
/* 8004DF74  F0 01 80 58 */	psq_st f0, 88(r1), 1, 0 /* qr0 */
lbl_8004DF78:
/* 8004DF78  38 61 00 5C */	addi r3, r1, 0x5c
/* 8004DF7C  38 81 00 50 */	addi r4, r1, 0x50
/* 8004DF80  38 A1 00 68 */	addi r5, r1, 0x68
/* 8004DF84  48 2F 92 31 */	bl PSVECCrossProduct
/* 8004DF88  E0 01 00 68 */	psq_l f0, 104(r1), 0, 0 /* qr0 */
/* 8004DF8C  10 00 00 32 */	ps_mul f0, f0, f0
/* 8004DF90  C2 C1 00 70 */	lfs f22, 0x70(r1)
/* 8004DF94  10 96 05 BA */	ps_madd f4, f22, f22, f0
/* 8004DF98  10 84 00 14 */	ps_sum0 f4, f4, f0, f0
/* 8004DF9C  C0 22 85 D8 */	lfs f1, lit_6075(r2)
/* 8004DFA0  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8004DFA4  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8004DFA8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8004DFAC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004DFB0  4C 40 13 82 */	cror 2, 0, 2
/* 8004DFB4  41 82 00 5C */	beq lbl_8004E010
/* 8004DFB8  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004DFBC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004DFC0  4C 40 13 82 */	cror 2, 0, 2
/* 8004DFC4  40 82 00 0C */	bne lbl_8004DFD0
/* 8004DFC8  FF A0 20 90 */	fmr f29, f4
/* 8004DFCC  48 00 00 2C */	b lbl_8004DFF8
lbl_8004DFD0:
/* 8004DFD0  FC 60 20 34 */	frsqrte f3, f4
/* 8004DFD4  FC 60 18 18 */	frsp f3, f3
/* 8004DFD8  C0 02 85 8C */	lfs f0, lit_5066(r2)
/* 8004DFDC  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8004DFE0  C0 22 85 DC */	lfs f1, lit_6076(r2)
/* 8004DFE4  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8004DFE8  EC 04 00 32 */	fmuls f0, f4, f0
/* 8004DFEC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8004DFF0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8004DFF4  FF A0 00 90 */	fmr f29, f0
lbl_8004DFF8:
/* 8004DFF8  E0 01 00 68 */	psq_l f0, 104(r1), 0, 0 /* qr0 */
/* 8004DFFC  E0 21 80 70 */	psq_l f1, 112(r1), 1, 0 /* qr0 */
/* 8004E000  10 00 07 58 */	ps_muls0 f0, f0, f29
/* 8004E004  F0 01 00 68 */	psq_st f0, 104(r1), 0, 0 /* qr0 */
/* 8004E008  10 01 07 58 */	ps_muls0 f0, f1, f29
/* 8004E00C  F0 01 80 70 */	psq_st f0, 112(r1), 1, 0 /* qr0 */
lbl_8004E010:
/* 8004E010  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8004E014  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 8004E018  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8004E01C  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 8004E020  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8004E024  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 8004E028  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8004E02C  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 8004E030  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8004E034  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 8004E038  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8004E03C  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 8004E040  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8004E044  D0 01 01 24 */	stfs f0, 0x124(r1)
/* 8004E048  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8004E04C  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 8004E050  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8004E054  D0 01 01 2C */	stfs f0, 0x12c(r1)
/* 8004E058  C0 42 85 5C */	lfs f2, lit_4090(r2)
/* 8004E05C  A0 1E 00 88 */	lhz r0, 0x88(r30)
/* 8004E060  C8 22 85 68 */	lfd f1, lit_4093(r2)
/* 8004E064  90 01 01 3C */	stw r0, 0x13c(r1)
/* 8004E068  3C 00 43 30 */	lis r0, 0x4330
/* 8004E06C  90 01 01 38 */	stw r0, 0x138(r1)
/* 8004E070  C8 01 01 38 */	lfd f0, 0x138(r1)
/* 8004E074  EC 00 08 28 */	fsubs f0, f0, f1
/* 8004E078  EC 22 00 32 */	fmuls f1, f2, f0
/* 8004E07C  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004E080  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8004E084  41 82 00 48 */	beq lbl_8004E0CC
/* 8004E088  3C 60 80 38 */	lis r3, lit_5691@ha /* 0x8037A114@ha */
/* 8004E08C  38 83 A1 14 */	addi r4, r3, lit_5691@l /* 0x8037A114@l */
/* 8004E090  80 64 00 00 */	lwz r3, 0(r4)
/* 8004E094  80 04 00 04 */	lwz r0, 4(r4)
/* 8004E098  90 61 00 08 */	stw r3, 8(r1)
/* 8004E09C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8004E0A0  80 04 00 08 */	lwz r0, 8(r4)
/* 8004E0A4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8004E0A8  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8004E0AC  38 81 00 08 */	addi r4, r1, 8
/* 8004E0B0  C0 02 85 60 */	lfs f0, lit_4091(r2)
/* 8004E0B4  EC 20 00 72 */	fmuls f1, f0, f1
/* 8004E0B8  48 2F 87 C1 */	bl PSMTXRotAxisRad
/* 8004E0BC  38 61 01 04 */	addi r3, r1, 0x104
/* 8004E0C0  38 81 00 D4 */	addi r4, r1, 0xd4
/* 8004E0C4  7C 65 1B 78 */	mr r5, r3
/* 8004E0C8  48 2F 84 1D */	bl PSMTXConcat
lbl_8004E0CC:
/* 8004E0CC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8004E0D0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8004E0D4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8004E0D8  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 8004E0DC  D0 21 01 20 */	stfs f1, 0x120(r1)
/* 8004E0E0  D0 41 01 30 */	stfs f2, 0x130(r1)
/* 8004E0E4  C2 DD 00 B0 */	lfs f22, 0xb0(r29)
/* 8004E0E8  C2 FD 00 B4 */	lfs f23, 0xb4(r29)
/* 8004E0EC  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 8004E0F0  EE D6 00 32 */	fmuls f22, f22, f0
/* 8004E0F4  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8004E0F8  EE F7 00 32 */	fmuls f23, f23, f0
/* 8004E0FC  7F C3 F3 78 */	mr r3, r30
/* 8004E100  7F A4 EB 78 */	mr r4, r29
/* 8004E104  48 23 24 45 */	bl getWidth__15JPABaseParticleCFPC14JPABaseEmitter
/* 8004E108  EE D6 00 72 */	fmuls f22, f22, f1
/* 8004E10C  7F C3 F3 78 */	mr r3, r30
/* 8004E110  7F A4 EB 78 */	mr r4, r29
/* 8004E114  48 23 24 55 */	bl getHeight__15JPABaseParticleCFPC14JPABaseEmitter
/* 8004E118  EE F7 00 72 */	fmuls f23, f23, f1
/* 8004E11C  C0 02 85 E0 */	lfs f0, lit_6077(r2)
/* 8004E120  EE D6 00 32 */	fmuls f22, f22, f0
/* 8004E124  EE F7 00 32 */	fmuls f23, f23, f0
/* 8004E128  38 61 00 74 */	addi r3, r1, 0x74
/* 8004E12C  FC 20 B0 90 */	fmr f1, f22
/* 8004E130  FC 40 B8 90 */	fmr f2, f23
/* 8004E134  C0 62 85 50 */	lfs f3, lit_3964(r2)
/* 8004E138  48 2F 88 31 */	bl PSMTXScale
/* 8004E13C  38 61 01 04 */	addi r3, r1, 0x104
/* 8004E140  38 81 00 74 */	addi r4, r1, 0x74
/* 8004E144  7C 65 1B 78 */	mr r5, r3
/* 8004E148  48 2F 83 9D */	bl PSMTXConcat
/* 8004E14C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8004E150  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8004E154  38 81 01 04 */	addi r4, r1, 0x104
/* 8004E158  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 8004E15C  48 2F 83 89 */	bl PSMTXConcat
/* 8004E160  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8004E164  38 80 00 00 */	li r4, 0
/* 8004E168  48 31 20 E5 */	bl GXLoadPosMtxImm
/* 8004E16C  C0 42 85 50 */	lfs f2, lit_3964(r2)
/* 8004E170  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8004E174  C0 02 85 88 */	lfs f0, lit_4519(r2)
/* 8004E178  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8004E17C  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8004E180  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8004E184  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8004E188  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8004E18C  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8004E190  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8004E194  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8004E198  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8004E19C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8004E1A0  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8004E1A4  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8004E1A8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8004E1AC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8004E1B0  E0 01 00 44 */	psq_l f0, 68(r1), 0, 0 /* qr0 */
/* 8004E1B4  10 00 00 32 */	ps_mul f0, f0, f0
/* 8004E1B8  10 82 00 BA */	ps_madd f4, f2, f2, f0
/* 8004E1BC  10 84 00 14 */	ps_sum0 f4, f4, f0, f0
/* 8004E1C0  C0 22 85 D8 */	lfs f1, lit_6075(r2)
/* 8004E1C4  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8004E1C8  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8004E1CC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8004E1D0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004E1D4  4C 40 13 82 */	cror 2, 0, 2
/* 8004E1D8  41 82 00 58 */	beq lbl_8004E230
/* 8004E1DC  FC 04 10 40 */	fcmpo cr0, f4, f2
/* 8004E1E0  4C 40 13 82 */	cror 2, 0, 2
/* 8004E1E4  40 82 00 0C */	bne lbl_8004E1F0
/* 8004E1E8  FF 80 20 90 */	fmr f28, f4
/* 8004E1EC  48 00 00 2C */	b lbl_8004E218
lbl_8004E1F0:
/* 8004E1F0  FC 60 20 34 */	frsqrte f3, f4
/* 8004E1F4  FC 60 18 18 */	frsp f3, f3
/* 8004E1F8  C0 02 85 8C */	lfs f0, lit_5066(r2)
/* 8004E1FC  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8004E200  C0 22 85 DC */	lfs f1, lit_6076(r2)
/* 8004E204  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8004E208  EC 04 00 32 */	fmuls f0, f4, f0
/* 8004E20C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8004E210  EC 02 00 32 */	fmuls f0, f2, f0
/* 8004E214  FF 80 00 90 */	fmr f28, f0
lbl_8004E218:
/* 8004E218  E0 01 00 44 */	psq_l f0, 68(r1), 0, 0 /* qr0 */
/* 8004E21C  E0 21 80 4C */	psq_l f1, 76(r1), 1, 0 /* qr0 */
/* 8004E220  10 00 07 18 */	ps_muls0 f0, f0, f28
/* 8004E224  F0 01 00 44 */	psq_st f0, 68(r1), 0, 0 /* qr0 */
/* 8004E228  10 01 07 18 */	ps_muls0 f0, f1, f28
/* 8004E22C  F0 01 80 4C */	psq_st f0, 76(r1), 1, 0 /* qr0 */
lbl_8004E230:
/* 8004E230  E0 01 00 38 */	psq_l f0, 56(r1), 0, 0 /* qr0 */
/* 8004E234  10 00 00 32 */	ps_mul f0, f0, f0
/* 8004E238  C2 A1 00 40 */	lfs f21, 0x40(r1)
/* 8004E23C  10 95 05 7A */	ps_madd f4, f21, f21, f0
/* 8004E240  10 84 00 14 */	ps_sum0 f4, f4, f0, f0
/* 8004E244  C0 22 85 D8 */	lfs f1, lit_6075(r2)
/* 8004E248  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8004E24C  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8004E250  EC 01 00 32 */	fmuls f0, f1, f0
/* 8004E254  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004E258  4C 40 13 82 */	cror 2, 0, 2
/* 8004E25C  41 82 00 5C */	beq lbl_8004E2B8
/* 8004E260  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004E264  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004E268  4C 40 13 82 */	cror 2, 0, 2
/* 8004E26C  40 82 00 0C */	bne lbl_8004E278
/* 8004E270  FF 60 20 90 */	fmr f27, f4
/* 8004E274  48 00 00 2C */	b lbl_8004E2A0
lbl_8004E278:
/* 8004E278  FC 60 20 34 */	frsqrte f3, f4
/* 8004E27C  FC 60 18 18 */	frsp f3, f3
/* 8004E280  C0 02 85 8C */	lfs f0, lit_5066(r2)
/* 8004E284  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8004E288  C0 22 85 DC */	lfs f1, lit_6076(r2)
/* 8004E28C  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8004E290  EC 04 00 32 */	fmuls f0, f4, f0
/* 8004E294  EC 01 00 28 */	fsubs f0, f1, f0
/* 8004E298  EC 02 00 32 */	fmuls f0, f2, f0
/* 8004E29C  FF 60 00 90 */	fmr f27, f0
lbl_8004E2A0:
/* 8004E2A0  E0 01 00 38 */	psq_l f0, 56(r1), 0, 0 /* qr0 */
/* 8004E2A4  E0 21 80 40 */	psq_l f1, 64(r1), 1, 0 /* qr0 */
/* 8004E2A8  10 00 06 D8 */	ps_muls0 f0, f0, f27
/* 8004E2AC  F0 01 00 38 */	psq_st f0, 56(r1), 0, 0 /* qr0 */
/* 8004E2B0  10 01 06 D8 */	ps_muls0 f0, f1, f27
/* 8004E2B4  F0 01 80 40 */	psq_st f0, 64(r1), 1, 0 /* qr0 */
lbl_8004E2B8:
/* 8004E2B8  E0 01 00 2C */	psq_l f0, 44(r1), 0, 0 /* qr0 */
/* 8004E2BC  10 00 00 32 */	ps_mul f0, f0, f0
/* 8004E2C0  C2 81 00 34 */	lfs f20, 0x34(r1)
/* 8004E2C4  10 94 05 3A */	ps_madd f4, f20, f20, f0
/* 8004E2C8  10 84 00 14 */	ps_sum0 f4, f4, f0, f0
/* 8004E2CC  C0 22 85 D8 */	lfs f1, lit_6075(r2)
/* 8004E2D0  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8004E2D4  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8004E2D8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8004E2DC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004E2E0  4C 40 13 82 */	cror 2, 0, 2
/* 8004E2E4  41 82 00 5C */	beq lbl_8004E340
/* 8004E2E8  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004E2EC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004E2F0  4C 40 13 82 */	cror 2, 0, 2
/* 8004E2F4  40 82 00 0C */	bne lbl_8004E300
/* 8004E2F8  FF 40 20 90 */	fmr f26, f4
/* 8004E2FC  48 00 00 2C */	b lbl_8004E328
lbl_8004E300:
/* 8004E300  FC 60 20 34 */	frsqrte f3, f4
/* 8004E304  FC 60 18 18 */	frsp f3, f3
/* 8004E308  C0 02 85 8C */	lfs f0, lit_5066(r2)
/* 8004E30C  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8004E310  C0 22 85 DC */	lfs f1, lit_6076(r2)
/* 8004E314  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8004E318  EC 04 00 32 */	fmuls f0, f4, f0
/* 8004E31C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8004E320  EC 02 00 32 */	fmuls f0, f2, f0
/* 8004E324  FF 40 00 90 */	fmr f26, f0
lbl_8004E328:
/* 8004E328  E0 01 00 2C */	psq_l f0, 44(r1), 0, 0 /* qr0 */
/* 8004E32C  E0 21 80 34 */	psq_l f1, 52(r1), 1, 0 /* qr0 */
/* 8004E330  10 00 06 98 */	ps_muls0 f0, f0, f26
/* 8004E334  F0 01 00 2C */	psq_st f0, 44(r1), 0, 0 /* qr0 */
/* 8004E338  10 01 06 98 */	ps_muls0 f0, f1, f26
/* 8004E33C  F0 01 80 34 */	psq_st f0, 52(r1), 1, 0 /* qr0 */
lbl_8004E340:
/* 8004E340  E0 01 00 20 */	psq_l f0, 32(r1), 0, 0 /* qr0 */
/* 8004E344  10 00 00 32 */	ps_mul f0, f0, f0
/* 8004E348  C2 61 00 28 */	lfs f19, 0x28(r1)
/* 8004E34C  10 93 04 FA */	ps_madd f4, f19, f19, f0
/* 8004E350  10 84 00 14 */	ps_sum0 f4, f4, f0, f0
/* 8004E354  C0 22 85 D8 */	lfs f1, lit_6075(r2)
/* 8004E358  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8004E35C  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8004E360  EC 01 00 32 */	fmuls f0, f1, f0
/* 8004E364  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004E368  4C 40 13 82 */	cror 2, 0, 2
/* 8004E36C  41 82 00 5C */	beq lbl_8004E3C8
/* 8004E370  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004E374  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004E378  4C 40 13 82 */	cror 2, 0, 2
/* 8004E37C  40 82 00 0C */	bne lbl_8004E388
/* 8004E380  FF 20 20 90 */	fmr f25, f4
/* 8004E384  48 00 00 2C */	b lbl_8004E3B0
lbl_8004E388:
/* 8004E388  FC 60 20 34 */	frsqrte f3, f4
/* 8004E38C  FC 60 18 18 */	frsp f3, f3
/* 8004E390  C0 02 85 8C */	lfs f0, lit_5066(r2)
/* 8004E394  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8004E398  C0 22 85 DC */	lfs f1, lit_6076(r2)
/* 8004E39C  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8004E3A0  EC 04 00 32 */	fmuls f0, f4, f0
/* 8004E3A4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8004E3A8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8004E3AC  FF 20 00 90 */	fmr f25, f0
lbl_8004E3B0:
/* 8004E3B0  E0 01 00 20 */	psq_l f0, 32(r1), 0, 0 /* qr0 */
/* 8004E3B4  E0 21 80 28 */	psq_l f1, 40(r1), 1, 0 /* qr0 */
/* 8004E3B8  10 00 06 58 */	ps_muls0 f0, f0, f25
/* 8004E3BC  F0 01 00 20 */	psq_st f0, 32(r1), 0, 0 /* qr0 */
/* 8004E3C0  10 01 06 58 */	ps_muls0 f0, f1, f25
/* 8004E3C4  F0 01 80 28 */	psq_st f0, 40(r1), 1, 0 /* qr0 */
lbl_8004E3C8:
/* 8004E3C8  E0 01 00 14 */	psq_l f0, 20(r1), 0, 0 /* qr0 */
/* 8004E3CC  10 00 00 32 */	ps_mul f0, f0, f0
/* 8004E3D0  C2 41 00 1C */	lfs f18, 0x1c(r1)
/* 8004E3D4  10 92 04 BA */	ps_madd f4, f18, f18, f0
/* 8004E3D8  10 84 00 14 */	ps_sum0 f4, f4, f0, f0
/* 8004E3DC  C0 22 85 D8 */	lfs f1, lit_6075(r2)
/* 8004E3E0  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8004E3E4  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8004E3E8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8004E3EC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004E3F0  4C 40 13 82 */	cror 2, 0, 2
/* 8004E3F4  41 82 00 5C */	beq lbl_8004E450
/* 8004E3F8  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004E3FC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004E400  4C 40 13 82 */	cror 2, 0, 2
/* 8004E404  40 82 00 0C */	bne lbl_8004E410
/* 8004E408  FF 00 20 90 */	fmr f24, f4
/* 8004E40C  48 00 00 2C */	b lbl_8004E438
lbl_8004E410:
/* 8004E410  FC 60 20 34 */	frsqrte f3, f4
/* 8004E414  FC 60 18 18 */	frsp f3, f3
/* 8004E418  C0 02 85 8C */	lfs f0, lit_5066(r2)
/* 8004E41C  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8004E420  C0 22 85 DC */	lfs f1, lit_6076(r2)
/* 8004E424  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8004E428  EC 04 00 32 */	fmuls f0, f4, f0
/* 8004E42C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8004E430  EC 02 00 32 */	fmuls f0, f2, f0
/* 8004E434  FF 00 00 90 */	fmr f24, f0
lbl_8004E438:
/* 8004E438  E0 01 00 14 */	psq_l f0, 20(r1), 0, 0 /* qr0 */
/* 8004E43C  E0 21 80 1C */	psq_l f1, 28(r1), 1, 0 /* qr0 */
/* 8004E440  10 00 06 18 */	ps_muls0 f0, f0, f24
/* 8004E444  F0 01 00 14 */	psq_st f0, 20(r1), 0, 0 /* qr0 */
/* 8004E448  10 01 06 18 */	ps_muls0 f0, f1, f24
/* 8004E44C  F0 01 80 1C */	psq_st f0, 28(r1), 1, 0 /* qr0 */
lbl_8004E450:
/* 8004E450  38 60 00 A0 */	li r3, 0xa0
/* 8004E454  38 80 00 00 */	li r4, 0
/* 8004E458  38 A0 00 06 */	li r5, 6
/* 8004E45C  48 30 E3 09 */	bl GXBegin
/* 8004E460  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004E464  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 8004E468  D0 03 80 00 */	stfs f0, 0x8000(r3)  /* 0xCC008000@l */
/* 8004E46C  C0 02 85 88 */	lfs f0, lit_4519(r2)
/* 8004E470  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004E474  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004E478  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004E47C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8004E480  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004E484  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8004E488  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004E48C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8004E490  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004E494  38 00 00 FF */	li r0, 0xff
/* 8004E498  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004E49C  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004E4A0  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004E4A4  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 8004E4A8  9B E3 80 00 */	stb r31, -0x8000(r3)
/* 8004E4AC  C0 02 85 8C */	lfs f0, lit_5066(r2)
/* 8004E4B0  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004E4B4  C0 02 85 8C */	lfs f0, lit_5066(r2)
/* 8004E4B8  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004E4BC  C0 82 85 88 */	lfs f4, lit_4519(r2)
/* 8004E4C0  D0 83 80 00 */	stfs f4, -0x8000(r3)
/* 8004E4C4  C0 62 85 E4 */	lfs f3, lit_6078(r2)
/* 8004E4C8  D0 63 80 00 */	stfs f3, -0x8000(r3)
/* 8004E4CC  C0 42 85 50 */	lfs f2, lit_3964(r2)
/* 8004E4D0  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 8004E4D4  C0 A1 00 38 */	lfs f5, 0x38(r1)
/* 8004E4D8  D0 A3 80 00 */	stfs f5, -0x8000(r3)
/* 8004E4DC  C0 C1 00 3C */	lfs f6, 0x3c(r1)
/* 8004E4E0  D0 C3 80 00 */	stfs f6, -0x8000(r3)
/* 8004E4E4  C0 E1 00 40 */	lfs f7, 0x40(r1)
/* 8004E4E8  D0 E3 80 00 */	stfs f7, -0x8000(r3)
/* 8004E4EC  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004E4F0  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004E4F4  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004E4F8  9B E3 80 00 */	stb r31, -0x8000(r3)
/* 8004E4FC  C0 02 85 88 */	lfs f0, lit_4519(r2)
/* 8004E500  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004E504  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004E508  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004E50C  D0 83 80 00 */	stfs f4, -0x8000(r3)
/* 8004E510  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 8004E514  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 8004E518  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8004E51C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004E520  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8004E524  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004E528  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8004E52C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004E530  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004E534  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004E538  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004E53C  9B E3 80 00 */	stb r31, -0x8000(r3)
/* 8004E540  C0 02 85 88 */	lfs f0, lit_4519(r2)
/* 8004E544  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004E548  C0 02 85 88 */	lfs f0, lit_4519(r2)
/* 8004E54C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004E550  C0 22 85 E8 */	lfs f1, lit_6079(r2)
/* 8004E554  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 8004E558  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 8004E55C  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 8004E560  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8004E564  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004E568  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8004E56C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004E570  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8004E574  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004E578  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004E57C  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004E580  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004E584  98 83 80 00 */	stb r4, -0x8000(r3)
/* 8004E588  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004E58C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004E590  C0 02 85 88 */	lfs f0, lit_4519(r2)
/* 8004E594  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004E598  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 8004E59C  D0 63 80 00 */	stfs f3, -0x8000(r3)
/* 8004E5A0  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 8004E5A4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8004E5A8  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004E5AC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8004E5B0  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004E5B4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8004E5B8  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004E5BC  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004E5C0  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004E5C4  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004E5C8  98 83 80 00 */	stb r4, -0x8000(r3)
/* 8004E5CC  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004E5D0  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004E5D4  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004E5D8  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004E5DC  D0 83 80 00 */	stfs f4, -0x8000(r3)
/* 8004E5E0  D0 63 80 00 */	stfs f3, -0x8000(r3)
/* 8004E5E4  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 8004E5E8  D0 A3 80 00 */	stfs f5, -0x8000(r3)
/* 8004E5EC  D0 C3 80 00 */	stfs f6, -0x8000(r3)
/* 8004E5F0  D0 E3 80 00 */	stfs f7, -0x8000(r3)
/* 8004E5F4  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004E5F8  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004E5FC  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004E600  98 83 80 00 */	stb r4, -0x8000(r3)
/* 8004E604  C0 02 85 88 */	lfs f0, lit_4519(r2)
/* 8004E608  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004E60C  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004E610  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004E614  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 8004E618  60 00 00 08 */	ori r0, r0, 8
/* 8004E61C  90 1E 00 7C */	stw r0, 0x7c(r30)
/* 8004E620  E3 E1 02 28 */	psq_l f31, 552(r1), 0, 0 /* qr0 */
/* 8004E624  CB E1 02 20 */	lfd f31, 0x220(r1)
/* 8004E628  E3 C1 02 18 */	psq_l f30, 536(r1), 0, 0 /* qr0 */
/* 8004E62C  CB C1 02 10 */	lfd f30, 0x210(r1)
/* 8004E630  E3 A1 02 08 */	psq_l f29, 520(r1), 0, 0 /* qr0 */
/* 8004E634  CB A1 02 00 */	lfd f29, 0x200(r1)
/* 8004E638  E3 81 01 F8 */	psq_l f28, 504(r1), 0, 0 /* qr0 */
/* 8004E63C  CB 81 01 F0 */	lfd f28, 0x1f0(r1)
/* 8004E640  E3 61 01 E8 */	psq_l f27, 488(r1), 0, 0 /* qr0 */
/* 8004E644  CB 61 01 E0 */	lfd f27, 0x1e0(r1)
/* 8004E648  E3 41 01 D8 */	psq_l f26, 472(r1), 0, 0 /* qr0 */
/* 8004E64C  CB 41 01 D0 */	lfd f26, 0x1d0(r1)
/* 8004E650  E3 21 01 C8 */	psq_l f25, 456(r1), 0, 0 /* qr0 */
/* 8004E654  CB 21 01 C0 */	lfd f25, 0x1c0(r1)
/* 8004E658  E3 01 01 B8 */	psq_l f24, 440(r1), 0, 0 /* qr0 */
/* 8004E65C  CB 01 01 B0 */	lfd f24, 0x1b0(r1)
/* 8004E660  E2 E1 01 A8 */	psq_l f23, 424(r1), 0, 0 /* qr0 */
/* 8004E664  CA E1 01 A0 */	lfd f23, 0x1a0(r1)
/* 8004E668  E2 C1 01 98 */	psq_l f22, 408(r1), 0, 0 /* qr0 */
/* 8004E66C  CA C1 01 90 */	lfd f22, 0x190(r1)
/* 8004E670  E2 A1 01 88 */	psq_l f21, 392(r1), 0, 0 /* qr0 */
/* 8004E674  CA A1 01 80 */	lfd f21, 0x180(r1)
/* 8004E678  E2 81 01 78 */	psq_l f20, 376(r1), 0, 0 /* qr0 */
/* 8004E67C  CA 81 01 70 */	lfd f20, 0x170(r1)
/* 8004E680  E2 61 01 68 */	psq_l f19, 360(r1), 0, 0 /* qr0 */
/* 8004E684  CA 61 01 60 */	lfd f19, 0x160(r1)
/* 8004E688  E2 41 01 58 */	psq_l f18, 344(r1), 0, 0 /* qr0 */
/* 8004E68C  CA 41 01 50 */	lfd f18, 0x150(r1)
/* 8004E690  39 61 01 50 */	addi r11, r1, 0x150
/* 8004E694  48 31 3B 95 */	bl _restgpr_29
/* 8004E698  80 01 02 34 */	lwz r0, 0x234(r1)
/* 8004E69C  7C 08 03 A6 */	mtlr r0
/* 8004E6A0  38 21 02 30 */	addi r1, r1, 0x230
/* 8004E6A4  4E 80 00 20 */	blr 
