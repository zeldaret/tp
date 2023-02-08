lbl_80BBD740:
/* 80BBD740  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80BBD744  7C 08 02 A6 */	mflr r0
/* 80BBD748  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80BBD74C  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80BBD750  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80BBD754  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 80BBD758  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 80BBD75C  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 80BBD760  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 80BBD764  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 80BBD768  F3 81 00 88 */	psq_st f28, 136(r1), 0, 0 /* qr0 */
/* 80BBD76C  DB 61 00 70 */	stfd f27, 0x70(r1)
/* 80BBD770  F3 61 00 78 */	psq_st f27, 120(r1), 0, 0 /* qr0 */
/* 80BBD774  39 61 00 70 */	addi r11, r1, 0x70
/* 80BBD778  4B 7A 4A 4D */	bl _savegpr_23
/* 80BBD77C  7C 7B 1B 78 */	mr r27, r3
/* 80BBD780  3C 60 80 BC */	lis r3, lit_3896@ha /* 0x80BC2148@ha */
/* 80BBD784  3B A3 21 48 */	addi r29, r3, lit_3896@l /* 0x80BC2148@l */
/* 80BBD788  3C BB 00 01 */	addis r5, r27, 1
/* 80BBD78C  A8 65 AF 22 */	lha r3, -0x50de(r5)
/* 80BBD790  A8 05 AF 26 */	lha r0, -0x50da(r5)
/* 80BBD794  7C 03 02 14 */	add r0, r3, r0
/* 80BBD798  B0 05 AF 22 */	sth r0, -0x50de(r5)
/* 80BBD79C  A8 65 AF 24 */	lha r3, -0x50dc(r5)
/* 80BBD7A0  A8 05 AF 28 */	lha r0, -0x50d8(r5)
/* 80BBD7A4  7C 03 02 14 */	add r0, r3, r0
/* 80BBD7A8  B0 05 AF 24 */	sth r0, -0x50dc(r5)
/* 80BBD7AC  88 05 B1 EA */	lbz r0, -0x4e16(r5)
/* 80BBD7B0  7C 00 07 74 */	extsb r0, r0
/* 80BBD7B4  2C 00 00 0A */	cmpwi r0, 0xa
/* 80BBD7B8  3B C0 1F 40 */	li r30, 0x1f40
/* 80BBD7BC  3B 44 07 0C */	addi r26, r4, 0x70c
/* 80BBD7C0  40 81 00 08 */	ble lbl_80BBD7C8
/* 80BBD7C4  3B C0 0F A0 */	li r30, 0xfa0
lbl_80BBD7C8:
/* 80BBD7C8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BBD7CC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BBD7D0  3C 9B 00 01 */	addis r4, r27, 1
/* 80BBD7D4  A8 04 AF 22 */	lha r0, -0x50de(r4)
/* 80BBD7D8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BBD7DC  7C 63 02 14 */	add r3, r3, r0
/* 80BBD7E0  C0 23 00 04 */	lfs f1, 4(r3)
/* 80BBD7E4  C0 04 AE EC */	lfs f0, -0x5114(r4)
/* 80BBD7E8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BBD7EC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BBD7F0  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80BBD7F4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BBD7F8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80BBD7FC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BBD800  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BBD804  80 63 00 00 */	lwz r3, 0(r3)
/* 80BBD808  A8 9B 04 B6 */	lha r4, 0x4b6(r27)
/* 80BBD80C  4B 44 EB D1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80BBD810  38 61 00 38 */	addi r3, r1, 0x38
/* 80BBD814  38 81 00 20 */	addi r4, r1, 0x20
/* 80BBD818  4B 6B 36 D5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BBD81C  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 80BBD820  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BBD824  38 61 00 38 */	addi r3, r1, 0x38
/* 80BBD828  38 81 00 14 */	addi r4, r1, 0x14
/* 80BBD82C  4B 6B 36 C1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BBD830  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80BBD834  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BBD838  C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 80BBD83C  3C 7B 00 01 */	addis r3, r27, 1
/* 80BBD840  C0 03 AF 30 */	lfs f0, -0x50d0(r3)
/* 80BBD844  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BBD848  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80BBD84C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BBD850  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BBD854  80 63 00 00 */	lwz r3, 0(r3)
/* 80BBD858  3C 80 80 BC */	lis r4, struct_80BC2524+0x2@ha /* 0x80BC2526@ha */
/* 80BBD85C  38 84 25 26 */	addi r4, r4, struct_80BC2524+0x2@l /* 0x80BC2526@l */
/* 80BBD860  A8 84 00 00 */	lha r4, 0(r4)
/* 80BBD864  4B 44 EB 79 */	bl mDoMtx_YrotS__FPA4_fs
/* 80BBD868  38 61 00 38 */	addi r3, r1, 0x38
/* 80BBD86C  38 81 00 08 */	addi r4, r1, 8
/* 80BBD870  4B 6B 36 7D */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BBD874  C3 DD 00 00 */	lfs f30, 0(r29)
/* 80BBD878  D3 C1 00 38 */	stfs f30, 0x38(r1)
/* 80BBD87C  C0 3D 00 2C */	lfs f1, 0x2c(r29)
/* 80BBD880  3F FB 00 01 */	addis r31, r27, 1
/* 80BBD884  C0 1F AE DC */	lfs f0, -0x5124(r31)
/* 80BBD888  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BBD88C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80BBD890  3B 60 00 01 */	li r27, 1
/* 80BBD894  7F DC 07 34 */	extsh r28, r30
/* 80BBD898  3B DC 03 E8 */	addi r30, r28, 0x3e8
/* 80BBD89C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BBD8A0  3B 23 9A 20 */	addi r25, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BBD8A4  C3 FD 00 58 */	lfs f31, 0x58(r29)
/* 80BBD8A8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BBD8AC  3B A3 07 68 */	addi r29, r3, calc_mtx@l /* 0x80450768@l */
/* 80BBD8B0  48 00 01 64 */	b lbl_80BBDA14
lbl_80BBD8B4:
/* 80BBD8B4  A8 7F AF 22 */	lha r3, -0x50de(r31)
/* 80BBD8B8  7C 1B E1 D6 */	mullw r0, r27, r28
/* 80BBD8BC  7C 03 02 14 */	add r0, r3, r0
/* 80BBD8C0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BBD8C4  7C 59 04 2E */	lfsx f2, r25, r0
/* 80BBD8C8  C0 1A 00 E0 */	lfs f0, 0xe0(r26)
/* 80BBD8CC  C0 3F AE E8 */	lfs f1, -0x5118(r31)
/* 80BBD8D0  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80BBD8D4  EC 20 00 72 */	fmuls f1, f0, f1
/* 80BBD8D8  A8 7F AF 24 */	lha r3, -0x50dc(r31)
/* 80BBD8DC  7C 1B F1 D6 */	mullw r0, r27, r30
/* 80BBD8E0  7C 03 02 14 */	add r0, r3, r0
/* 80BBD8E4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BBD8E8  7C D9 04 2E */	lfsx f6, r25, r0
/* 80BBD8EC  C0 A1 00 08 */	lfs f5, 8(r1)
/* 80BBD8F0  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80BBD8F4  EC 82 00 32 */	fmuls f4, f2, f0
/* 80BBD8F8  C0 7A 00 B0 */	lfs f3, 0xb0(r26)
/* 80BBD8FC  C0 5A F9 A4 */	lfs f2, -0x65c(r26)
/* 80BBD900  EC 63 10 28 */	fsubs f3, f3, f2
/* 80BBD904  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80BBD908  EC 41 00 B2 */	fmuls f2, f1, f2
/* 80BBD90C  EC 43 10 2A */	fadds f2, f3, f2
/* 80BBD910  EC 44 10 2A */	fadds f2, f4, f2
/* 80BBD914  EF A5 10 2A */	fadds f29, f5, f2
/* 80BBD918  C0 5F AE F0 */	lfs f2, -0x5110(r31)
/* 80BBD91C  EC 42 01 B2 */	fmuls f2, f2, f6
/* 80BBD920  EC A0 00 B2 */	fmuls f5, f0, f2
/* 80BBD924  C0 5A 00 E8 */	lfs f2, 0xe8(r26)
/* 80BBD928  EC 9F 00 B2 */	fmuls f4, f31, f2
/* 80BBD92C  C0 7A 00 B4 */	lfs f3, 0xb4(r26)
/* 80BBD930  C0 5A 00 EC */	lfs f2, 0xec(r26)
/* 80BBD934  EC 42 00 32 */	fmuls f2, f2, f0
/* 80BBD938  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 80BBD93C  EC 43 10 2A */	fadds f2, f3, f2
/* 80BBD940  EC 64 10 2A */	fadds f3, f4, f2
/* 80BBD944  C0 5A F9 A8 */	lfs f2, -0x658(r26)
/* 80BBD948  EC 43 10 28 */	fsubs f2, f3, f2
/* 80BBD94C  EF 85 10 2A */	fadds f28, f5, f2
/* 80BBD950  C0 81 00 10 */	lfs f4, 0x10(r1)
/* 80BBD954  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80BBD958  EC 62 00 32 */	fmuls f3, f2, f0
/* 80BBD95C  C0 5A 00 B8 */	lfs f2, 0xb8(r26)
/* 80BBD960  C0 1A F9 AC */	lfs f0, -0x654(r26)
/* 80BBD964  EC 42 00 28 */	fsubs f2, f2, f0
/* 80BBD968  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80BBD96C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BBD970  EC 02 00 2A */	fadds f0, f2, f0
/* 80BBD974  EC 03 00 2A */	fadds f0, f3, f0
/* 80BBD978  EF 64 00 2A */	fadds f27, f4, f0
/* 80BBD97C  FC 20 E8 90 */	fmr f1, f29
/* 80BBD980  FC 40 D8 90 */	fmr f2, f27
/* 80BBD984  4B 6A 9C F1 */	bl cM_atan2s__Fff
/* 80BBD988  7C 77 07 34 */	extsh r23, r3
/* 80BBD98C  EC 3D 07 72 */	fmuls f1, f29, f29
/* 80BBD990  EC 1B 06 F2 */	fmuls f0, f27, f27
/* 80BBD994  EC 41 00 2A */	fadds f2, f1, f0
/* 80BBD998  FC 02 F0 40 */	fcmpo cr0, f2, f30
/* 80BBD99C  40 81 00 0C */	ble lbl_80BBD9A8
/* 80BBD9A0  FC 00 10 34 */	frsqrte f0, f2
/* 80BBD9A4  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80BBD9A8:
/* 80BBD9A8  FC 20 E0 90 */	fmr f1, f28
/* 80BBD9AC  4B 6A 9C C9 */	bl cM_atan2s__Fff
/* 80BBD9B0  7C 03 00 D0 */	neg r0, r3
/* 80BBD9B4  7C 18 07 34 */	extsh r24, r0
/* 80BBD9B8  80 7D 00 00 */	lwz r3, 0(r29)
/* 80BBD9BC  7E E4 BB 78 */	mr r4, r23
/* 80BBD9C0  4B 44 EA 1D */	bl mDoMtx_YrotS__FPA4_fs
/* 80BBD9C4  80 7D 00 00 */	lwz r3, 0(r29)
/* 80BBD9C8  7F 04 C3 78 */	mr r4, r24
/* 80BBD9CC  4B 44 E9 D1 */	bl mDoMtx_XrotM__FPA4_fs
/* 80BBD9D0  38 61 00 38 */	addi r3, r1, 0x38
/* 80BBD9D4  38 81 00 2C */	addi r4, r1, 0x2c
/* 80BBD9D8  4B 6B 35 15 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BBD9DC  C0 3A F9 A4 */	lfs f1, -0x65c(r26)
/* 80BBD9E0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80BBD9E4  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBD9E8  D0 1A 00 B0 */	stfs f0, 0xb0(r26)
/* 80BBD9EC  C0 3A F9 A8 */	lfs f1, -0x658(r26)
/* 80BBD9F0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80BBD9F4  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBD9F8  D0 1A 00 B4 */	stfs f0, 0xb4(r26)
/* 80BBD9FC  C0 3A F9 AC */	lfs f1, -0x654(r26)
/* 80BBDA00  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80BBDA04  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBDA08  D0 1A 00 B8 */	stfs f0, 0xb8(r26)
/* 80BBDA0C  3B 7B 00 01 */	addi r27, r27, 1
/* 80BBDA10  3B 5A 07 0C */	addi r26, r26, 0x70c
lbl_80BBDA14:
/* 80BBDA14  88 1F B1 EA */	lbz r0, -0x4e16(r31)
/* 80BBDA18  7C 00 07 74 */	extsb r0, r0
/* 80BBDA1C  7C 1B 00 00 */	cmpw r27, r0
/* 80BBDA20  41 80 FE 94 */	blt lbl_80BBD8B4
/* 80BBDA24  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80BBDA28  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80BBDA2C  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 80BBDA30  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 80BBDA34  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 80BBDA38  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 80BBDA3C  E3 81 00 88 */	psq_l f28, 136(r1), 0, 0 /* qr0 */
/* 80BBDA40  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 80BBDA44  E3 61 00 78 */	psq_l f27, 120(r1), 0, 0 /* qr0 */
/* 80BBDA48  CB 61 00 70 */	lfd f27, 0x70(r1)
/* 80BBDA4C  39 61 00 70 */	addi r11, r1, 0x70
/* 80BBDA50  4B 7A 47 C1 */	bl _restgpr_23
/* 80BBDA54  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80BBDA58  7C 08 03 A6 */	mtlr r0
/* 80BBDA5C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80BBDA60  4E 80 00 20 */	blr 
