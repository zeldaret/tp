lbl_8069DB68:
/* 8069DB68  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8069DB6C  7C 08 02 A6 */	mflr r0
/* 8069DB70  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8069DB74  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 8069DB78  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 8069DB7C  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 8069DB80  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 8069DB84  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 8069DB88  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, 0 /* qr0 */
/* 8069DB8C  DB 81 00 90 */	stfd f28, 0x90(r1)
/* 8069DB90  F3 81 00 98 */	psq_st f28, 152(r1), 0, 0 /* qr0 */
/* 8069DB94  DB 61 00 80 */	stfd f27, 0x80(r1)
/* 8069DB98  F3 61 00 88 */	psq_st f27, 136(r1), 0, 0 /* qr0 */
/* 8069DB9C  DB 41 00 70 */	stfd f26, 0x70(r1)
/* 8069DBA0  F3 41 00 78 */	psq_st f26, 120(r1), 0, 0 /* qr0 */
/* 8069DBA4  39 61 00 70 */	addi r11, r1, 0x70
/* 8069DBA8  4B CC 46 1D */	bl _savegpr_23
/* 8069DBAC  7C 7D 1B 78 */	mr r29, r3
/* 8069DBB0  3C 60 80 6A */	lis r3, lit_3902@ha /* 0x806A190C@ha */
/* 8069DBB4  38 63 19 0C */	addi r3, r3, lit_3902@l /* 0x806A190C@l */
/* 8069DBB8  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 8069DBBC  D0 1D 06 9C */	stfs f0, 0x69c(r29)
/* 8069DBC0  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 8069DBC4  D0 1D 06 A0 */	stfs f0, 0x6a0(r29)
/* 8069DBC8  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 8069DBCC  D0 1D 06 A4 */	stfs f0, 0x6a4(r29)
/* 8069DBD0  C0 23 00 04 */	lfs f1, 4(r3)
/* 8069DBD4  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8069DBD8  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8069DBDC  C0 1D 08 40 */	lfs f0, 0x840(r29)
/* 8069DBE0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8069DBE4  C3 C3 00 38 */	lfs f30, 0x38(r3)
/* 8069DBE8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8069DBEC  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8069DBF0  A8 1D 06 6A */	lha r0, 0x66a(r29)
/* 8069DBF4  2C 00 00 06 */	cmpwi r0, 6
/* 8069DBF8  3B DD 06 A8 */	addi r30, r29, 0x6a8
/* 8069DBFC  40 82 00 20 */	bne lbl_8069DC1C
/* 8069DC00  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8069DC04  C3 C3 00 A8 */	lfs f30, 0xa8(r3)
/* 8069DC08  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8069DC0C  C0 03 00 E8 */	lfs f0, 0xe8(r3)
/* 8069DC10  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8069DC14  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8069DC18  48 00 00 30 */	b lbl_8069DC48
lbl_8069DC1C:
/* 8069DC1C  2C 00 00 0A */	cmpwi r0, 0xa
/* 8069DC20  40 82 00 20 */	bne lbl_8069DC40
/* 8069DC24  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8069DC28  C3 C3 00 A8 */	lfs f30, 0xa8(r3)
/* 8069DC2C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8069DC30  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 8069DC34  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8069DC38  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8069DC3C  48 00 00 0C */	b lbl_8069DC48
lbl_8069DC40:
/* 8069DC40  C0 03 00 EC */	lfs f0, 0xec(r3)
/* 8069DC44  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_8069DC48:
/* 8069DC48  C3 BD 08 48 */	lfs f29, 0x848(r29)
/* 8069DC4C  3B E0 00 01 */	li r31, 1
/* 8069DC50  3B 80 00 02 */	li r28, 2
/* 8069DC54  3B 60 27 10 */	li r27, 0x2710
/* 8069DC58  3B 40 2E E0 */	li r26, 0x2ee0
/* 8069DC5C  C3 83 00 04 */	lfs f28, 4(r3)
/* 8069DC60  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8069DC64  3B 23 07 68 */	addi r25, r3, calc_mtx@l /* 0x80450768@l */
lbl_8069DC68:
/* 8069DC68  A8 1D 06 6A */	lha r0, 0x66a(r29)
/* 8069DC6C  2C 00 00 06 */	cmpwi r0, 6
/* 8069DC70  41 82 00 0C */	beq lbl_8069DC7C
/* 8069DC74  2C 00 00 0A */	cmpwi r0, 0xa
/* 8069DC78  40 82 00 40 */	bne lbl_8069DCB8
lbl_8069DC7C:
/* 8069DC7C  A8 9D 06 68 */	lha r4, 0x668(r29)
/* 8069DC80  1C 04 03 E8 */	mulli r0, r4, 0x3e8
/* 8069DC84  7C 00 D2 14 */	add r0, r0, r26
/* 8069DC88  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8069DC8C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8069DC90  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8069DC94  7C 03 04 2E */	lfsx f0, r3, r0
/* 8069DC98  EF 5E 00 32 */	fmuls f26, f30, f0
/* 8069DC9C  1C 04 05 14 */	mulli r0, r4, 0x514
/* 8069DCA0  7C 00 DA 14 */	add r0, r0, r27
/* 8069DCA4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8069DCA8  7C 63 02 14 */	add r3, r3, r0
/* 8069DCAC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8069DCB0  EF FE 00 32 */	fmuls f31, f30, f0
/* 8069DCB4  48 00 00 E0 */	b lbl_8069DD94
lbl_8069DCB8:
/* 8069DCB8  A8 9D 06 68 */	lha r4, 0x668(r29)
/* 8069DCBC  1C 04 07 D0 */	mulli r0, r4, 0x7d0
/* 8069DCC0  7C 00 D2 14 */	add r0, r0, r26
/* 8069DCC4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8069DCC8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8069DCCC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8069DCD0  7C 03 04 2E */	lfsx f0, r3, r0
/* 8069DCD4  EF 5E 00 32 */	fmuls f26, f30, f0
/* 8069DCD8  1C 04 08 FC */	mulli r0, r4, 0x8fc
/* 8069DCDC  7C 00 DA 14 */	add r0, r0, r27
/* 8069DCE0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8069DCE4  7C 63 02 14 */	add r3, r3, r0
/* 8069DCE8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8069DCEC  EF FE 00 32 */	fmuls f31, f30, f0
/* 8069DCF0  88 1D 08 50 */	lbz r0, 0x850(r29)
/* 8069DCF4  7C 00 07 75 */	extsb. r0, r0
/* 8069DCF8  41 82 00 48 */	beq lbl_8069DD40
/* 8069DCFC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8069DD00  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8069DD04  80 63 00 00 */	lwz r3, 0(r3)
/* 8069DD08  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8069DD0C  4B 96 E6 D1 */	bl mDoMtx_YrotS__FPA4_fs
/* 8069DD10  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8069DD14  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8069DD18  80 63 00 00 */	lwz r3, 0(r3)
/* 8069DD1C  3C 80 80 6A */	lis r4, pow_xa@ha /* 0x806A1AB0@ha */
/* 8069DD20  38 04 1A B0 */	addi r0, r4, pow_xa@l /* 0x806A1AB0@l */
/* 8069DD24  7C 80 E2 14 */	add r4, r0, r28
/* 8069DD28  A8 84 FF FE */	lha r4, -2(r4)
/* 8069DD2C  3C 84 00 01 */	addis r4, r4, 1
/* 8069DD30  38 04 80 00 */	addi r0, r4, -32768
/* 8069DD34  7C 04 07 34 */	extsh r4, r0
/* 8069DD38  4B 96 E6 65 */	bl mDoMtx_XrotM__FPA4_fs
/* 8069DD3C  48 00 00 38 */	b lbl_8069DD74
lbl_8069DD40:
/* 8069DD40  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8069DD44  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8069DD48  80 63 00 00 */	lwz r3, 0(r3)
/* 8069DD4C  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8069DD50  4B 96 E6 8D */	bl mDoMtx_YrotS__FPA4_fs
/* 8069DD54  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8069DD58  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8069DD5C  80 63 00 00 */	lwz r3, 0(r3)
/* 8069DD60  3C 80 80 6A */	lis r4, pow_xa@ha /* 0x806A1AB0@ha */
/* 8069DD64  38 04 1A B0 */	addi r0, r4, pow_xa@l /* 0x806A1AB0@l */
/* 8069DD68  7C 80 E2 14 */	add r4, r0, r28
/* 8069DD6C  A8 84 FF FE */	lha r4, -2(r4)
/* 8069DD70  4B 96 E6 2D */	bl mDoMtx_XrotM__FPA4_fs
lbl_8069DD74:
/* 8069DD74  FC 20 E8 90 */	fmr f1, f29
/* 8069DD78  FC 40 E8 90 */	fmr f2, f29
/* 8069DD7C  FC 60 E8 90 */	fmr f3, f29
/* 8069DD80  38 60 00 01 */	li r3, 1
/* 8069DD84  4B BD 31 21 */	bl MtxScale__FfffUc
/* 8069DD88  38 61 00 20 */	addi r3, r1, 0x20
/* 8069DD8C  38 81 00 14 */	addi r4, r1, 0x14
/* 8069DD90  4B BD 31 5D */	bl MtxPosition__FP4cXyzP4cXyz
lbl_8069DD94:
/* 8069DD94  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8069DD98  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8069DD9C  C0 1E FF F4 */	lfs f0, -0xc(r30)
/* 8069DDA0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8069DDA4  EC 02 00 2A */	fadds f0, f2, f0
/* 8069DDA8  EF 7A 00 2A */	fadds f27, f26, f0
/* 8069DDAC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8069DDB0  C0 1E FF F8 */	lfs f0, -8(r30)
/* 8069DDB4  EC 21 00 28 */	fsubs f1, f1, f0
/* 8069DDB8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8069DDBC  EF 41 00 28 */	fsubs f26, f1, f0
/* 8069DDC0  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8069DDC4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8069DDC8  C0 1E FF FC */	lfs f0, -4(r30)
/* 8069DDCC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8069DDD0  EC 02 00 2A */	fadds f0, f2, f0
/* 8069DDD4  EF FF 00 2A */	fadds f31, f31, f0
/* 8069DDD8  FC 20 D8 90 */	fmr f1, f27
/* 8069DDDC  FC 40 F8 90 */	fmr f2, f31
/* 8069DDE0  4B BC 98 95 */	bl cM_atan2s__Fff
/* 8069DDE4  7C 77 07 34 */	extsh r23, r3
/* 8069DDE8  EC 3B 06 F2 */	fmuls f1, f27, f27
/* 8069DDEC  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 8069DDF0  EC 41 00 2A */	fadds f2, f1, f0
/* 8069DDF4  FC 02 E0 40 */	fcmpo cr0, f2, f28
/* 8069DDF8  40 81 00 0C */	ble lbl_8069DE04
/* 8069DDFC  FC 00 10 34 */	frsqrte f0, f2
/* 8069DE00  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8069DE04:
/* 8069DE04  FC 20 D0 90 */	fmr f1, f26
/* 8069DE08  4B BC 98 6D */	bl cM_atan2s__Fff
/* 8069DE0C  7C 03 00 D0 */	neg r0, r3
/* 8069DE10  7C 18 07 34 */	extsh r24, r0
/* 8069DE14  80 79 00 00 */	lwz r3, 0(r25)
/* 8069DE18  7E E4 BB 78 */	mr r4, r23
/* 8069DE1C  4B 96 E5 C1 */	bl mDoMtx_YrotS__FPA4_fs
/* 8069DE20  80 79 00 00 */	lwz r3, 0(r25)
/* 8069DE24  7F 04 C3 78 */	mr r4, r24
/* 8069DE28  4B 96 E5 75 */	bl mDoMtx_XrotM__FPA4_fs
/* 8069DE2C  38 61 00 38 */	addi r3, r1, 0x38
/* 8069DE30  38 81 00 2C */	addi r4, r1, 0x2c
/* 8069DE34  4B BD 30 B9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8069DE38  38 61 00 08 */	addi r3, r1, 8
/* 8069DE3C  38 9E FF F4 */	addi r4, r30, -12
/* 8069DE40  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8069DE44  4B BC 8C A1 */	bl __pl__4cXyzCFRC3Vec
/* 8069DE48  C0 01 00 08 */	lfs f0, 8(r1)
/* 8069DE4C  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8069DE50  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8069DE54  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8069DE58  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8069DE5C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8069DE60  3B FF 00 01 */	addi r31, r31, 1
/* 8069DE64  2C 1F 00 0C */	cmpwi r31, 0xc
/* 8069DE68  3B 9C 00 02 */	addi r28, r28, 2
/* 8069DE6C  3B 7B 27 10 */	addi r27, r27, 0x2710
/* 8069DE70  3B 5A 2E E0 */	addi r26, r26, 0x2ee0
/* 8069DE74  3B DE 00 0C */	addi r30, r30, 0xc
/* 8069DE78  41 80 FD F0 */	blt lbl_8069DC68
/* 8069DE7C  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 8069DE80  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 8069DE84  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 8069DE88  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 8069DE8C  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, 0 /* qr0 */
/* 8069DE90  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 8069DE94  E3 81 00 98 */	psq_l f28, 152(r1), 0, 0 /* qr0 */
/* 8069DE98  CB 81 00 90 */	lfd f28, 0x90(r1)
/* 8069DE9C  E3 61 00 88 */	psq_l f27, 136(r1), 0, 0 /* qr0 */
/* 8069DEA0  CB 61 00 80 */	lfd f27, 0x80(r1)
/* 8069DEA4  E3 41 00 78 */	psq_l f26, 120(r1), 0, 0 /* qr0 */
/* 8069DEA8  CB 41 00 70 */	lfd f26, 0x70(r1)
/* 8069DEAC  39 61 00 70 */	addi r11, r1, 0x70
/* 8069DEB0  4B CC 43 61 */	bl _restgpr_23
/* 8069DEB4  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8069DEB8  7C 08 03 A6 */	mtlr r0
/* 8069DEBC  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8069DEC0  4E 80 00 20 */	blr 
