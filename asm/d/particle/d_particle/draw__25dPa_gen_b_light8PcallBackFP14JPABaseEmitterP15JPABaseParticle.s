lbl_8004E6A8:
/* 8004E6A8  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 8004E6AC  7C 08 02 A6 */	mflr r0
/* 8004E6B0  90 01 01 64 */	stw r0, 0x164(r1)
/* 8004E6B4  DB E1 01 50 */	stfd f31, 0x150(r1)
/* 8004E6B8  F3 E1 01 58 */	psq_st f31, 344(r1), 0, 0 /* qr0 */
/* 8004E6BC  DB C1 01 40 */	stfd f30, 0x140(r1)
/* 8004E6C0  F3 C1 01 48 */	psq_st f30, 328(r1), 0, 0 /* qr0 */
/* 8004E6C4  DB A1 01 30 */	stfd f29, 0x130(r1)
/* 8004E6C8  F3 A1 01 38 */	psq_st f29, 312(r1), 0, 0 /* qr0 */
/* 8004E6CC  DB 81 01 20 */	stfd f28, 0x120(r1)
/* 8004E6D0  F3 81 01 28 */	psq_st f28, 296(r1), 0, 0 /* qr0 */
/* 8004E6D4  DB 61 01 10 */	stfd f27, 0x110(r1)
/* 8004E6D8  F3 61 01 18 */	psq_st f27, 280(r1), 0, 0 /* qr0 */
/* 8004E6DC  DB 41 01 00 */	stfd f26, 0x100(r1)
/* 8004E6E0  F3 41 01 08 */	psq_st f26, 264(r1), 0, 0 /* qr0 */
/* 8004E6E4  DB 21 00 F0 */	stfd f25, 0xf0(r1)
/* 8004E6E8  F3 21 00 F8 */	psq_st f25, 248(r1), 0, 0 /* qr0 */
/* 8004E6EC  DB 01 00 E0 */	stfd f24, 0xe0(r1)
/* 8004E6F0  F3 01 00 E8 */	psq_st f24, 232(r1), 0, 0 /* qr0 */
/* 8004E6F4  DA E1 00 D0 */	stfd f23, 0xd0(r1)
/* 8004E6F8  F2 E1 00 D8 */	psq_st f23, 216(r1), 0, 0 /* qr0 */
/* 8004E6FC  DA C1 00 C0 */	stfd f22, 0xc0(r1)
/* 8004E700  F2 C1 00 C8 */	psq_st f22, 200(r1), 0, 0 /* qr0 */
/* 8004E704  DA A1 00 B0 */	stfd f21, 0xb0(r1)
/* 8004E708  F2 A1 00 B8 */	psq_st f21, 184(r1), 0, 0 /* qr0 */
/* 8004E70C  DA 81 00 A0 */	stfd f20, 0xa0(r1)
/* 8004E710  F2 81 00 A8 */	psq_st f20, 168(r1), 0, 0 /* qr0 */
/* 8004E714  DA 61 00 90 */	stfd f19, 0x90(r1)
/* 8004E718  F2 61 00 98 */	psq_st f19, 152(r1), 0, 0 /* qr0 */
/* 8004E71C  39 61 00 90 */	addi r11, r1, 0x90
/* 8004E720  48 31 3A BD */	bl _savegpr_29
/* 8004E724  7C 9D 23 78 */	mr r29, r4
/* 8004E728  7C BE 2B 78 */	mr r30, r5
/* 8004E72C  8B E4 00 BB */	lbz r31, 0xbb(r4)
/* 8004E730  C0 05 00 00 */	lfs f0, 0(r5)
/* 8004E734  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8004E738  C0 05 00 04 */	lfs f0, 4(r5)
/* 8004E73C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8004E740  C0 05 00 08 */	lfs f0, 8(r5)
/* 8004E744  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8004E748  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8004E74C  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8004E750  38 81 00 44 */	addi r4, r1, 0x44
/* 8004E754  7C 85 23 78 */	mr r5, r4
/* 8004E758  48 2F 86 15 */	bl PSMTXMultVec
/* 8004E75C  A0 1E 00 88 */	lhz r0, 0x88(r30)
/* 8004E760  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8004E764  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8004E768  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8004E76C  7E C3 04 2E */	lfsx f22, r3, r0
/* 8004E770  7C 63 02 14 */	add r3, r3, r0
/* 8004E774  C2 A3 00 04 */	lfs f21, 4(r3)
/* 8004E778  C2 9D 00 B0 */	lfs f20, 0xb0(r29)
/* 8004E77C  C2 7D 00 B4 */	lfs f19, 0xb4(r29)
/* 8004E780  7F C3 F3 78 */	mr r3, r30
/* 8004E784  7F A4 EB 78 */	mr r4, r29
/* 8004E788  48 23 1D C1 */	bl getWidth__15JPABaseParticleCFPC14JPABaseEmitter
/* 8004E78C  EE 94 00 72 */	fmuls f20, f20, f1
/* 8004E790  7F C3 F3 78 */	mr r3, r30
/* 8004E794  7F A4 EB 78 */	mr r4, r29
/* 8004E798  48 23 1D D1 */	bl getHeight__15JPABaseParticleCFPC14JPABaseEmitter
/* 8004E79C  EC 33 00 72 */	fmuls f1, f19, f1
/* 8004E7A0  EC 15 05 32 */	fmuls f0, f21, f20
/* 8004E7A4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8004E7A8  FC 00 B0 50 */	fneg f0, f22
/* 8004E7AC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8004E7B0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8004E7B4  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8004E7B8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8004E7BC  EC 16 05 32 */	fmuls f0, f22, f20
/* 8004E7C0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8004E7C4  EC 15 00 72 */	fmuls f0, f21, f1
/* 8004E7C8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8004E7CC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8004E7D0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8004E7D4  C0 02 85 88 */	lfs f0, lit_4519(r2)
/* 8004E7D8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8004E7DC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8004E7E0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8004E7E4  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004E7E8  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8004E7EC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8004E7F0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8004E7F4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8004E7F8  38 61 00 50 */	addi r3, r1, 0x50
/* 8004E7FC  38 80 00 00 */	li r4, 0
/* 8004E800  48 31 1A 4D */	bl GXLoadPosMtxImm
/* 8004E804  38 61 00 50 */	addi r3, r1, 0x50
/* 8004E808  38 80 00 00 */	li r4, 0
/* 8004E80C  48 31 1A 91 */	bl GXLoadNrmMtxImm
/* 8004E810  C0 42 85 50 */	lfs f2, lit_3964(r2)
/* 8004E814  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8004E818  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8004E81C  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8004E820  C0 22 85 88 */	lfs f1, lit_4519(r2)
/* 8004E824  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8004E828  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8004E82C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8004E830  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8004E834  C0 02 85 E8 */	lfs f0, lit_6079(r2)
/* 8004E838  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8004E83C  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8004E840  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8004E844  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8004E848  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8004E84C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8004E850  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8004E854  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8004E858  E0 01 00 38 */	psq_l f0, 56(r1), 0, 0 /* qr0 */
/* 8004E85C  10 00 00 32 */	ps_mul f0, f0, f0
/* 8004E860  10 82 00 BA */	ps_madd f4, f2, f2, f0
/* 8004E864  10 84 00 14 */	ps_sum0 f4, f4, f0, f0
/* 8004E868  C0 22 85 D8 */	lfs f1, lit_6075(r2)
/* 8004E86C  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8004E870  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8004E874  EC 01 00 32 */	fmuls f0, f1, f0
/* 8004E878  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004E87C  4C 40 13 82 */	cror 2, 0, 2
/* 8004E880  41 82 00 58 */	beq lbl_8004E8D8
/* 8004E884  FC 04 10 40 */	fcmpo cr0, f4, f2
/* 8004E888  4C 40 13 82 */	cror 2, 0, 2
/* 8004E88C  40 82 00 0C */	bne lbl_8004E898
/* 8004E890  FF E0 20 90 */	fmr f31, f4
/* 8004E894  48 00 00 2C */	b lbl_8004E8C0
lbl_8004E898:
/* 8004E898  FC 60 20 34 */	frsqrte f3, f4
/* 8004E89C  FC 60 18 18 */	frsp f3, f3
/* 8004E8A0  C0 02 85 8C */	lfs f0, lit_5066(r2)
/* 8004E8A4  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8004E8A8  C0 22 85 DC */	lfs f1, lit_6076(r2)
/* 8004E8AC  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8004E8B0  EC 04 00 32 */	fmuls f0, f4, f0
/* 8004E8B4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8004E8B8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8004E8BC  FF E0 00 90 */	fmr f31, f0
lbl_8004E8C0:
/* 8004E8C0  E0 01 00 38 */	psq_l f0, 56(r1), 0, 0 /* qr0 */
/* 8004E8C4  E0 21 80 40 */	psq_l f1, 64(r1), 1, 0 /* qr0 */
/* 8004E8C8  10 00 07 D8 */	ps_muls0 f0, f0, f31
/* 8004E8CC  F0 01 00 38 */	psq_st f0, 56(r1), 0, 0 /* qr0 */
/* 8004E8D0  10 01 07 D8 */	ps_muls0 f0, f1, f31
/* 8004E8D4  F0 01 80 40 */	psq_st f0, 64(r1), 1, 0 /* qr0 */
lbl_8004E8D8:
/* 8004E8D8  E0 01 00 2C */	psq_l f0, 44(r1), 0, 0 /* qr0 */
/* 8004E8DC  10 00 00 32 */	ps_mul f0, f0, f0
/* 8004E8E0  C3 41 00 34 */	lfs f26, 0x34(r1)
/* 8004E8E4  10 9A 06 BA */	ps_madd f4, f26, f26, f0
/* 8004E8E8  10 84 00 14 */	ps_sum0 f4, f4, f0, f0
/* 8004E8EC  C0 22 85 D8 */	lfs f1, lit_6075(r2)
/* 8004E8F0  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8004E8F4  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8004E8F8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8004E8FC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004E900  4C 40 13 82 */	cror 2, 0, 2
/* 8004E904  41 82 00 5C */	beq lbl_8004E960
/* 8004E908  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004E90C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004E910  4C 40 13 82 */	cror 2, 0, 2
/* 8004E914  40 82 00 0C */	bne lbl_8004E920
/* 8004E918  FF C0 20 90 */	fmr f30, f4
/* 8004E91C  48 00 00 2C */	b lbl_8004E948
lbl_8004E920:
/* 8004E920  FC 60 20 34 */	frsqrte f3, f4
/* 8004E924  FC 60 18 18 */	frsp f3, f3
/* 8004E928  C0 02 85 8C */	lfs f0, lit_5066(r2)
/* 8004E92C  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8004E930  C0 22 85 DC */	lfs f1, lit_6076(r2)
/* 8004E934  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8004E938  EC 04 00 32 */	fmuls f0, f4, f0
/* 8004E93C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8004E940  EC 02 00 32 */	fmuls f0, f2, f0
/* 8004E944  FF C0 00 90 */	fmr f30, f0
lbl_8004E948:
/* 8004E948  E0 01 00 2C */	psq_l f0, 44(r1), 0, 0 /* qr0 */
/* 8004E94C  E0 21 80 34 */	psq_l f1, 52(r1), 1, 0 /* qr0 */
/* 8004E950  10 00 07 98 */	ps_muls0 f0, f0, f30
/* 8004E954  F0 01 00 2C */	psq_st f0, 44(r1), 0, 0 /* qr0 */
/* 8004E958  10 01 07 98 */	ps_muls0 f0, f1, f30
/* 8004E95C  F0 01 80 34 */	psq_st f0, 52(r1), 1, 0 /* qr0 */
lbl_8004E960:
/* 8004E960  E0 01 00 20 */	psq_l f0, 32(r1), 0, 0 /* qr0 */
/* 8004E964  10 00 00 32 */	ps_mul f0, f0, f0
/* 8004E968  C3 21 00 28 */	lfs f25, 0x28(r1)
/* 8004E96C  10 99 06 7A */	ps_madd f4, f25, f25, f0
/* 8004E970  10 84 00 14 */	ps_sum0 f4, f4, f0, f0
/* 8004E974  C0 22 85 D8 */	lfs f1, lit_6075(r2)
/* 8004E978  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8004E97C  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8004E980  EC 01 00 32 */	fmuls f0, f1, f0
/* 8004E984  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004E988  4C 40 13 82 */	cror 2, 0, 2
/* 8004E98C  41 82 00 5C */	beq lbl_8004E9E8
/* 8004E990  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004E994  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004E998  4C 40 13 82 */	cror 2, 0, 2
/* 8004E99C  40 82 00 0C */	bne lbl_8004E9A8
/* 8004E9A0  FF A0 20 90 */	fmr f29, f4
/* 8004E9A4  48 00 00 2C */	b lbl_8004E9D0
lbl_8004E9A8:
/* 8004E9A8  FC 60 20 34 */	frsqrte f3, f4
/* 8004E9AC  FC 60 18 18 */	frsp f3, f3
/* 8004E9B0  C0 02 85 8C */	lfs f0, lit_5066(r2)
/* 8004E9B4  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8004E9B8  C0 22 85 DC */	lfs f1, lit_6076(r2)
/* 8004E9BC  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8004E9C0  EC 04 00 32 */	fmuls f0, f4, f0
/* 8004E9C4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8004E9C8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8004E9CC  FF A0 00 90 */	fmr f29, f0
lbl_8004E9D0:
/* 8004E9D0  E0 01 00 20 */	psq_l f0, 32(r1), 0, 0 /* qr0 */
/* 8004E9D4  E0 21 80 28 */	psq_l f1, 40(r1), 1, 0 /* qr0 */
/* 8004E9D8  10 00 07 58 */	ps_muls0 f0, f0, f29
/* 8004E9DC  F0 01 00 20 */	psq_st f0, 32(r1), 0, 0 /* qr0 */
/* 8004E9E0  10 01 07 58 */	ps_muls0 f0, f1, f29
/* 8004E9E4  F0 01 80 28 */	psq_st f0, 40(r1), 1, 0 /* qr0 */
lbl_8004E9E8:
/* 8004E9E8  E0 01 00 14 */	psq_l f0, 20(r1), 0, 0 /* qr0 */
/* 8004E9EC  10 00 00 32 */	ps_mul f0, f0, f0
/* 8004E9F0  C3 01 00 1C */	lfs f24, 0x1c(r1)
/* 8004E9F4  10 98 06 3A */	ps_madd f4, f24, f24, f0
/* 8004E9F8  10 84 00 14 */	ps_sum0 f4, f4, f0, f0
/* 8004E9FC  C0 22 85 D8 */	lfs f1, lit_6075(r2)
/* 8004EA00  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8004EA04  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8004EA08  EC 01 00 32 */	fmuls f0, f1, f0
/* 8004EA0C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004EA10  4C 40 13 82 */	cror 2, 0, 2
/* 8004EA14  41 82 00 5C */	beq lbl_8004EA70
/* 8004EA18  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004EA1C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004EA20  4C 40 13 82 */	cror 2, 0, 2
/* 8004EA24  40 82 00 0C */	bne lbl_8004EA30
/* 8004EA28  FF 80 20 90 */	fmr f28, f4
/* 8004EA2C  48 00 00 2C */	b lbl_8004EA58
lbl_8004EA30:
/* 8004EA30  FC 60 20 34 */	frsqrte f3, f4
/* 8004EA34  FC 60 18 18 */	frsp f3, f3
/* 8004EA38  C0 02 85 8C */	lfs f0, lit_5066(r2)
/* 8004EA3C  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8004EA40  C0 22 85 DC */	lfs f1, lit_6076(r2)
/* 8004EA44  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8004EA48  EC 04 00 32 */	fmuls f0, f4, f0
/* 8004EA4C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8004EA50  EC 02 00 32 */	fmuls f0, f2, f0
/* 8004EA54  FF 80 00 90 */	fmr f28, f0
lbl_8004EA58:
/* 8004EA58  E0 01 00 14 */	psq_l f0, 20(r1), 0, 0 /* qr0 */
/* 8004EA5C  E0 21 80 1C */	psq_l f1, 28(r1), 1, 0 /* qr0 */
/* 8004EA60  10 00 07 18 */	ps_muls0 f0, f0, f28
/* 8004EA64  F0 01 00 14 */	psq_st f0, 20(r1), 0, 0 /* qr0 */
/* 8004EA68  10 01 07 18 */	ps_muls0 f0, f1, f28
/* 8004EA6C  F0 01 80 1C */	psq_st f0, 28(r1), 1, 0 /* qr0 */
lbl_8004EA70:
/* 8004EA70  E0 01 00 08 */	psq_l f0, 8(r1), 0, 0 /* qr0 */
/* 8004EA74  10 00 00 32 */	ps_mul f0, f0, f0
/* 8004EA78  C2 E1 00 10 */	lfs f23, 0x10(r1)
/* 8004EA7C  10 97 05 FA */	ps_madd f4, f23, f23, f0
/* 8004EA80  10 84 00 14 */	ps_sum0 f4, f4, f0, f0
/* 8004EA84  C0 22 85 D8 */	lfs f1, lit_6075(r2)
/* 8004EA88  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8004EA8C  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8004EA90  EC 01 00 32 */	fmuls f0, f1, f0
/* 8004EA94  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004EA98  4C 40 13 82 */	cror 2, 0, 2
/* 8004EA9C  41 82 00 5C */	beq lbl_8004EAF8
/* 8004EAA0  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004EAA4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004EAA8  4C 40 13 82 */	cror 2, 0, 2
/* 8004EAAC  40 82 00 0C */	bne lbl_8004EAB8
/* 8004EAB0  FF 60 20 90 */	fmr f27, f4
/* 8004EAB4  48 00 00 2C */	b lbl_8004EAE0
lbl_8004EAB8:
/* 8004EAB8  FC 60 20 34 */	frsqrte f3, f4
/* 8004EABC  FC 60 18 18 */	frsp f3, f3
/* 8004EAC0  C0 02 85 8C */	lfs f0, lit_5066(r2)
/* 8004EAC4  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8004EAC8  C0 22 85 DC */	lfs f1, lit_6076(r2)
/* 8004EACC  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8004EAD0  EC 04 00 32 */	fmuls f0, f4, f0
/* 8004EAD4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8004EAD8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8004EADC  FF 60 00 90 */	fmr f27, f0
lbl_8004EAE0:
/* 8004EAE0  E0 01 00 08 */	psq_l f0, 8(r1), 0, 0 /* qr0 */
/* 8004EAE4  E0 21 80 10 */	psq_l f1, 16(r1), 1, 0 /* qr0 */
/* 8004EAE8  10 00 06 D8 */	ps_muls0 f0, f0, f27
/* 8004EAEC  F0 01 00 08 */	psq_st f0, 8(r1), 0, 0 /* qr0 */
/* 8004EAF0  10 01 06 D8 */	ps_muls0 f0, f1, f27
/* 8004EAF4  F0 01 80 10 */	psq_st f0, 16(r1), 1, 0 /* qr0 */
lbl_8004EAF8:
/* 8004EAF8  38 60 00 A0 */	li r3, 0xa0
/* 8004EAFC  38 80 00 00 */	li r4, 0
/* 8004EB00  38 A0 00 06 */	li r5, 6
/* 8004EB04  48 30 DC 61 */	bl GXBegin
/* 8004EB08  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004EB0C  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 8004EB10  D0 03 80 00 */	stfs f0, 0x8000(r3)  /* 0xCC008000@l */
/* 8004EB14  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004EB18  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004EB1C  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004EB20  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004EB24  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8004EB28  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004EB2C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8004EB30  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004EB34  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8004EB38  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004EB3C  38 00 00 FF */	li r0, 0xff
/* 8004EB40  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004EB44  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004EB48  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004EB4C  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 8004EB50  9B E3 80 00 */	stb r31, -0x8000(r3)
/* 8004EB54  C0 02 85 8C */	lfs f0, lit_5066(r2)
/* 8004EB58  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004EB5C  C0 02 85 8C */	lfs f0, lit_5066(r2)
/* 8004EB60  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004EB64  C0 62 85 EC */	lfs f3, lit_6350(r2)
/* 8004EB68  D0 63 80 00 */	stfs f3, -0x8000(r3)
/* 8004EB6C  D0 63 80 00 */	stfs f3, -0x8000(r3)
/* 8004EB70  C0 42 85 50 */	lfs f2, lit_3964(r2)
/* 8004EB74  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 8004EB78  C0 81 00 2C */	lfs f4, 0x2c(r1)
/* 8004EB7C  D0 83 80 00 */	stfs f4, -0x8000(r3)
/* 8004EB80  C0 A1 00 30 */	lfs f5, 0x30(r1)
/* 8004EB84  D0 A3 80 00 */	stfs f5, -0x8000(r3)
/* 8004EB88  C0 C1 00 34 */	lfs f6, 0x34(r1)
/* 8004EB8C  D0 C3 80 00 */	stfs f6, -0x8000(r3)
/* 8004EB90  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004EB94  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004EB98  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004EB9C  9B E3 80 00 */	stb r31, -0x8000(r3)
/* 8004EBA0  C0 02 85 88 */	lfs f0, lit_4519(r2)
/* 8004EBA4  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004EBA8  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004EBAC  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004EBB0  D0 63 80 00 */	stfs f3, -0x8000(r3)
/* 8004EBB4  C0 22 85 F0 */	lfs f1, lit_6351(r2)
/* 8004EBB8  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 8004EBBC  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 8004EBC0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8004EBC4  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004EBC8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8004EBCC  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004EBD0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8004EBD4  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004EBD8  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004EBDC  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004EBE0  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004EBE4  9B E3 80 00 */	stb r31, -0x8000(r3)
/* 8004EBE8  C0 02 85 88 */	lfs f0, lit_4519(r2)
/* 8004EBEC  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004EBF0  C0 02 85 88 */	lfs f0, lit_4519(r2)
/* 8004EBF4  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004EBF8  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 8004EBFC  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 8004EC00  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 8004EC04  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8004EC08  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004EC0C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8004EC10  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004EC14  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8004EC18  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004EC1C  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004EC20  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004EC24  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004EC28  98 83 80 00 */	stb r4, -0x8000(r3)
/* 8004EC2C  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004EC30  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004EC34  C0 02 85 88 */	lfs f0, lit_4519(r2)
/* 8004EC38  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004EC3C  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 8004EC40  D0 63 80 00 */	stfs f3, -0x8000(r3)
/* 8004EC44  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 8004EC48  C0 01 00 08 */	lfs f0, 8(r1)
/* 8004EC4C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004EC50  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8004EC54  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004EC58  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8004EC5C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004EC60  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004EC64  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004EC68  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004EC6C  98 83 80 00 */	stb r4, -0x8000(r3)
/* 8004EC70  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004EC74  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004EC78  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004EC7C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004EC80  D0 63 80 00 */	stfs f3, -0x8000(r3)
/* 8004EC84  D0 63 80 00 */	stfs f3, -0x8000(r3)
/* 8004EC88  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 8004EC8C  D0 83 80 00 */	stfs f4, -0x8000(r3)
/* 8004EC90  D0 A3 80 00 */	stfs f5, -0x8000(r3)
/* 8004EC94  D0 C3 80 00 */	stfs f6, -0x8000(r3)
/* 8004EC98  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004EC9C  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004ECA0  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004ECA4  98 83 80 00 */	stb r4, -0x8000(r3)
/* 8004ECA8  C0 02 85 88 */	lfs f0, lit_4519(r2)
/* 8004ECAC  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004ECB0  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004ECB4  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004ECB8  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 8004ECBC  60 00 00 08 */	ori r0, r0, 8
/* 8004ECC0  90 1E 00 7C */	stw r0, 0x7c(r30)
/* 8004ECC4  E3 E1 01 58 */	psq_l f31, 344(r1), 0, 0 /* qr0 */
/* 8004ECC8  CB E1 01 50 */	lfd f31, 0x150(r1)
/* 8004ECCC  E3 C1 01 48 */	psq_l f30, 328(r1), 0, 0 /* qr0 */
/* 8004ECD0  CB C1 01 40 */	lfd f30, 0x140(r1)
/* 8004ECD4  E3 A1 01 38 */	psq_l f29, 312(r1), 0, 0 /* qr0 */
/* 8004ECD8  CB A1 01 30 */	lfd f29, 0x130(r1)
/* 8004ECDC  E3 81 01 28 */	psq_l f28, 296(r1), 0, 0 /* qr0 */
/* 8004ECE0  CB 81 01 20 */	lfd f28, 0x120(r1)
/* 8004ECE4  E3 61 01 18 */	psq_l f27, 280(r1), 0, 0 /* qr0 */
/* 8004ECE8  CB 61 01 10 */	lfd f27, 0x110(r1)
/* 8004ECEC  E3 41 01 08 */	psq_l f26, 264(r1), 0, 0 /* qr0 */
/* 8004ECF0  CB 41 01 00 */	lfd f26, 0x100(r1)
/* 8004ECF4  E3 21 00 F8 */	psq_l f25, 248(r1), 0, 0 /* qr0 */
/* 8004ECF8  CB 21 00 F0 */	lfd f25, 0xf0(r1)
/* 8004ECFC  E3 01 00 E8 */	psq_l f24, 232(r1), 0, 0 /* qr0 */
/* 8004ED00  CB 01 00 E0 */	lfd f24, 0xe0(r1)
/* 8004ED04  E2 E1 00 D8 */	psq_l f23, 216(r1), 0, 0 /* qr0 */
/* 8004ED08  CA E1 00 D0 */	lfd f23, 0xd0(r1)
/* 8004ED0C  E2 C1 00 C8 */	psq_l f22, 200(r1), 0, 0 /* qr0 */
/* 8004ED10  CA C1 00 C0 */	lfd f22, 0xc0(r1)
/* 8004ED14  E2 A1 00 B8 */	psq_l f21, 184(r1), 0, 0 /* qr0 */
/* 8004ED18  CA A1 00 B0 */	lfd f21, 0xb0(r1)
/* 8004ED1C  E2 81 00 A8 */	psq_l f20, 168(r1), 0, 0 /* qr0 */
/* 8004ED20  CA 81 00 A0 */	lfd f20, 0xa0(r1)
/* 8004ED24  E2 61 00 98 */	psq_l f19, 152(r1), 0, 0 /* qr0 */
/* 8004ED28  CA 61 00 90 */	lfd f19, 0x90(r1)
/* 8004ED2C  39 61 00 90 */	addi r11, r1, 0x90
/* 8004ED30  48 31 34 F9 */	bl _restgpr_29
/* 8004ED34  80 01 01 64 */	lwz r0, 0x164(r1)
/* 8004ED38  7C 08 03 A6 */	mtlr r0
/* 8004ED3C  38 21 01 60 */	addi r1, r1, 0x160
/* 8004ED40  4E 80 00 20 */	blr 
