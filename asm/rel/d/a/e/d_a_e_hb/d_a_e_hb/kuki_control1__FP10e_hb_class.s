lbl_804FE5C8:
/* 804FE5C8  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 804FE5CC  7C 08 02 A6 */	mflr r0
/* 804FE5D0  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 804FE5D4  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 804FE5D8  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 804FE5DC  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 804FE5E0  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 804FE5E4  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 804FE5E8  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, 0 /* qr0 */
/* 804FE5EC  DB 81 00 90 */	stfd f28, 0x90(r1)
/* 804FE5F0  F3 81 00 98 */	psq_st f28, 152(r1), 0, 0 /* qr0 */
/* 804FE5F4  DB 61 00 80 */	stfd f27, 0x80(r1)
/* 804FE5F8  F3 61 00 88 */	psq_st f27, 136(r1), 0, 0 /* qr0 */
/* 804FE5FC  DB 41 00 70 */	stfd f26, 0x70(r1)
/* 804FE600  F3 41 00 78 */	psq_st f26, 120(r1), 0, 0 /* qr0 */
/* 804FE604  39 61 00 70 */	addi r11, r1, 0x70
/* 804FE608  4B E6 3B BD */	bl _savegpr_23
/* 804FE60C  7C 7D 1B 78 */	mr r29, r3
/* 804FE610  3C 60 80 50 */	lis r3, lit_3788@ha /* 0x80500B04@ha */
/* 804FE614  38 63 0B 04 */	addi r3, r3, lit_3788@l /* 0x80500B04@l */
/* 804FE618  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 804FE61C  D0 1D 06 A0 */	stfs f0, 0x6a0(r29)
/* 804FE620  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 804FE624  D0 1D 06 A4 */	stfs f0, 0x6a4(r29)
/* 804FE628  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 804FE62C  D0 1D 06 A8 */	stfs f0, 0x6a8(r29)
/* 804FE630  C0 23 00 04 */	lfs f1, 4(r3)
/* 804FE634  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 804FE638  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 804FE63C  C0 1D 08 44 */	lfs f0, 0x844(r29)
/* 804FE640  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804FE644  C3 C3 00 34 */	lfs f30, 0x34(r3)
/* 804FE648  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804FE64C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 804FE650  A8 1D 06 6A */	lha r0, 0x66a(r29)
/* 804FE654  2C 00 00 06 */	cmpwi r0, 6
/* 804FE658  3B DD 06 AC */	addi r30, r29, 0x6ac
/* 804FE65C  40 82 00 20 */	bne lbl_804FE67C
/* 804FE660  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 804FE664  C3 C3 00 B0 */	lfs f30, 0xb0(r3)
/* 804FE668  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804FE66C  C0 03 00 D8 */	lfs f0, 0xd8(r3)
/* 804FE670  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804FE674  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 804FE678  48 00 00 0C */	b lbl_804FE684
lbl_804FE67C:
/* 804FE67C  C0 03 00 DC */	lfs f0, 0xdc(r3)
/* 804FE680  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_804FE684:
/* 804FE684  C3 BD 08 4C */	lfs f29, 0x84c(r29)
/* 804FE688  3B E0 00 01 */	li r31, 1
/* 804FE68C  3B 80 00 02 */	li r28, 2
/* 804FE690  3B 60 27 10 */	li r27, 0x2710
/* 804FE694  3B 40 2E E0 */	li r26, 0x2ee0
/* 804FE698  C3 83 00 04 */	lfs f28, 4(r3)
/* 804FE69C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804FE6A0  3B 23 07 68 */	addi r25, r3, calc_mtx@l /* 0x80450768@l */
lbl_804FE6A4:
/* 804FE6A4  A8 1D 06 6A */	lha r0, 0x66a(r29)
/* 804FE6A8  2C 00 00 06 */	cmpwi r0, 6
/* 804FE6AC  40 82 00 40 */	bne lbl_804FE6EC
/* 804FE6B0  A8 9D 06 68 */	lha r4, 0x668(r29)
/* 804FE6B4  1C 04 03 E8 */	mulli r0, r4, 0x3e8
/* 804FE6B8  7C 00 D2 14 */	add r0, r0, r26
/* 804FE6BC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804FE6C0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804FE6C4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804FE6C8  7C 03 04 2E */	lfsx f0, r3, r0
/* 804FE6CC  EF 5E 00 32 */	fmuls f26, f30, f0
/* 804FE6D0  1C 04 05 14 */	mulli r0, r4, 0x514
/* 804FE6D4  7C 00 DA 14 */	add r0, r0, r27
/* 804FE6D8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804FE6DC  7C 63 02 14 */	add r3, r3, r0
/* 804FE6E0  C0 03 00 04 */	lfs f0, 4(r3)
/* 804FE6E4  EF FE 00 32 */	fmuls f31, f30, f0
/* 804FE6E8  48 00 00 E0 */	b lbl_804FE7C8
lbl_804FE6EC:
/* 804FE6EC  A8 9D 06 68 */	lha r4, 0x668(r29)
/* 804FE6F0  1C 04 07 D0 */	mulli r0, r4, 0x7d0
/* 804FE6F4  7C 00 D2 14 */	add r0, r0, r26
/* 804FE6F8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804FE6FC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804FE700  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804FE704  7C 03 04 2E */	lfsx f0, r3, r0
/* 804FE708  EF 5E 00 32 */	fmuls f26, f30, f0
/* 804FE70C  1C 04 08 FC */	mulli r0, r4, 0x8fc
/* 804FE710  7C 00 DA 14 */	add r0, r0, r27
/* 804FE714  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804FE718  7C 63 02 14 */	add r3, r3, r0
/* 804FE71C  C0 03 00 04 */	lfs f0, 4(r3)
/* 804FE720  EF FE 00 32 */	fmuls f31, f30, f0
/* 804FE724  88 1D 08 51 */	lbz r0, 0x851(r29)
/* 804FE728  7C 00 07 75 */	extsb. r0, r0
/* 804FE72C  41 82 00 48 */	beq lbl_804FE774
/* 804FE730  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804FE734  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804FE738  80 63 00 00 */	lwz r3, 0(r3)
/* 804FE73C  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 804FE740  4B B0 DC 9D */	bl mDoMtx_YrotS__FPA4_fs
/* 804FE744  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804FE748  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804FE74C  80 63 00 00 */	lwz r3, 0(r3)
/* 804FE750  3C 80 80 50 */	lis r4, pow_xa@ha /* 0x80500C78@ha */
/* 804FE754  38 04 0C 78 */	addi r0, r4, pow_xa@l /* 0x80500C78@l */
/* 804FE758  7C 80 E2 14 */	add r4, r0, r28
/* 804FE75C  A8 84 FF FE */	lha r4, -2(r4)
/* 804FE760  3C 84 00 01 */	addis r4, r4, 1
/* 804FE764  38 04 80 00 */	addi r0, r4, -32768
/* 804FE768  7C 04 07 34 */	extsh r4, r0
/* 804FE76C  4B B0 DC 31 */	bl mDoMtx_XrotM__FPA4_fs
/* 804FE770  48 00 00 38 */	b lbl_804FE7A8
lbl_804FE774:
/* 804FE774  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804FE778  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804FE77C  80 63 00 00 */	lwz r3, 0(r3)
/* 804FE780  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 804FE784  4B B0 DC 59 */	bl mDoMtx_YrotS__FPA4_fs
/* 804FE788  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804FE78C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804FE790  80 63 00 00 */	lwz r3, 0(r3)
/* 804FE794  3C 80 80 50 */	lis r4, pow_xa@ha /* 0x80500C78@ha */
/* 804FE798  38 04 0C 78 */	addi r0, r4, pow_xa@l /* 0x80500C78@l */
/* 804FE79C  7C 80 E2 14 */	add r4, r0, r28
/* 804FE7A0  A8 84 FF FE */	lha r4, -2(r4)
/* 804FE7A4  4B B0 DB F9 */	bl mDoMtx_XrotM__FPA4_fs
lbl_804FE7A8:
/* 804FE7A8  FC 20 E8 90 */	fmr f1, f29
/* 804FE7AC  FC 40 E8 90 */	fmr f2, f29
/* 804FE7B0  FC 60 E8 90 */	fmr f3, f29
/* 804FE7B4  38 60 00 01 */	li r3, 1
/* 804FE7B8  4B D7 26 ED */	bl MtxScale__FfffUc
/* 804FE7BC  38 61 00 20 */	addi r3, r1, 0x20
/* 804FE7C0  38 81 00 14 */	addi r4, r1, 0x14
/* 804FE7C4  4B D7 27 29 */	bl MtxPosition__FP4cXyzP4cXyz
lbl_804FE7C8:
/* 804FE7C8  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 804FE7CC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 804FE7D0  C0 1E FF F4 */	lfs f0, -0xc(r30)
/* 804FE7D4  EC 01 00 28 */	fsubs f0, f1, f0
/* 804FE7D8  EC 02 00 2A */	fadds f0, f2, f0
/* 804FE7DC  EF 7A 00 2A */	fadds f27, f26, f0
/* 804FE7E0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 804FE7E4  C0 1E FF F8 */	lfs f0, -8(r30)
/* 804FE7E8  EC 21 00 28 */	fsubs f1, f1, f0
/* 804FE7EC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804FE7F0  EF 41 00 28 */	fsubs f26, f1, f0
/* 804FE7F4  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 804FE7F8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 804FE7FC  C0 1E FF FC */	lfs f0, -4(r30)
/* 804FE800  EC 01 00 28 */	fsubs f0, f1, f0
/* 804FE804  EC 02 00 2A */	fadds f0, f2, f0
/* 804FE808  EF FF 00 2A */	fadds f31, f31, f0
/* 804FE80C  FC 20 D8 90 */	fmr f1, f27
/* 804FE810  FC 40 F8 90 */	fmr f2, f31
/* 804FE814  4B D6 8E 61 */	bl cM_atan2s__Fff
/* 804FE818  7C 77 07 34 */	extsh r23, r3
/* 804FE81C  EC 3B 06 F2 */	fmuls f1, f27, f27
/* 804FE820  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 804FE824  EC 41 00 2A */	fadds f2, f1, f0
/* 804FE828  FC 02 E0 40 */	fcmpo cr0, f2, f28
/* 804FE82C  40 81 00 0C */	ble lbl_804FE838
/* 804FE830  FC 00 10 34 */	frsqrte f0, f2
/* 804FE834  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804FE838:
/* 804FE838  FC 20 D0 90 */	fmr f1, f26
/* 804FE83C  4B D6 8E 39 */	bl cM_atan2s__Fff
/* 804FE840  7C 03 00 D0 */	neg r0, r3
/* 804FE844  7C 18 07 34 */	extsh r24, r0
/* 804FE848  80 79 00 00 */	lwz r3, 0(r25)
/* 804FE84C  7E E4 BB 78 */	mr r4, r23
/* 804FE850  4B B0 DB 8D */	bl mDoMtx_YrotS__FPA4_fs
/* 804FE854  80 79 00 00 */	lwz r3, 0(r25)
/* 804FE858  7F 04 C3 78 */	mr r4, r24
/* 804FE85C  4B B0 DB 41 */	bl mDoMtx_XrotM__FPA4_fs
/* 804FE860  38 61 00 38 */	addi r3, r1, 0x38
/* 804FE864  38 81 00 2C */	addi r4, r1, 0x2c
/* 804FE868  4B D7 26 85 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804FE86C  38 61 00 08 */	addi r3, r1, 8
/* 804FE870  38 9E FF F4 */	addi r4, r30, -12
/* 804FE874  38 A1 00 2C */	addi r5, r1, 0x2c
/* 804FE878  4B D6 82 6D */	bl __pl__4cXyzCFRC3Vec
/* 804FE87C  C0 01 00 08 */	lfs f0, 8(r1)
/* 804FE880  D0 1E 00 00 */	stfs f0, 0(r30)
/* 804FE884  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804FE888  D0 1E 00 04 */	stfs f0, 4(r30)
/* 804FE88C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804FE890  D0 1E 00 08 */	stfs f0, 8(r30)
/* 804FE894  3B FF 00 01 */	addi r31, r31, 1
/* 804FE898  2C 1F 00 0C */	cmpwi r31, 0xc
/* 804FE89C  3B 9C 00 02 */	addi r28, r28, 2
/* 804FE8A0  3B 7B 27 10 */	addi r27, r27, 0x2710
/* 804FE8A4  3B 5A 2E E0 */	addi r26, r26, 0x2ee0
/* 804FE8A8  3B DE 00 0C */	addi r30, r30, 0xc
/* 804FE8AC  41 80 FD F8 */	blt lbl_804FE6A4
/* 804FE8B0  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 804FE8B4  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 804FE8B8  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 804FE8BC  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 804FE8C0  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, 0 /* qr0 */
/* 804FE8C4  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 804FE8C8  E3 81 00 98 */	psq_l f28, 152(r1), 0, 0 /* qr0 */
/* 804FE8CC  CB 81 00 90 */	lfd f28, 0x90(r1)
/* 804FE8D0  E3 61 00 88 */	psq_l f27, 136(r1), 0, 0 /* qr0 */
/* 804FE8D4  CB 61 00 80 */	lfd f27, 0x80(r1)
/* 804FE8D8  E3 41 00 78 */	psq_l f26, 120(r1), 0, 0 /* qr0 */
/* 804FE8DC  CB 41 00 70 */	lfd f26, 0x70(r1)
/* 804FE8E0  39 61 00 70 */	addi r11, r1, 0x70
/* 804FE8E4  4B E6 39 2D */	bl _restgpr_23
/* 804FE8E8  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 804FE8EC  7C 08 03 A6 */	mtlr r0
/* 804FE8F0  38 21 00 D0 */	addi r1, r1, 0xd0
/* 804FE8F4  4E 80 00 20 */	blr 
