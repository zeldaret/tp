lbl_80A8B61C:
/* 80A8B61C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A8B620  7C 08 02 A6 */	mflr r0
/* 80A8B624  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A8B628  39 61 00 50 */	addi r11, r1, 0x50
/* 80A8B62C  4B 8D 6B B0 */	b _savegpr_29
/* 80A8B630  7C 7D 1B 78 */	mr r29, r3
/* 80A8B634  3C 80 80 A9 */	lis r4, lit_3990@ha
/* 80A8B638  3B E4 24 1C */	addi r31, r4, lit_3990@l
/* 80A8B63C  4B FF E4 75 */	bl search_bird__FP12npc_ne_class
/* 80A8B640  28 03 00 00 */	cmplwi r3, 0
/* 80A8B644  40 82 00 14 */	bne lbl_80A8B658
/* 80A8B648  38 00 00 00 */	li r0, 0
/* 80A8B64C  B0 1D 06 42 */	sth r0, 0x642(r29)
/* 80A8B650  B0 1D 06 46 */	sth r0, 0x646(r29)
/* 80A8B654  48 00 04 90 */	b lbl_80A8BAE4
lbl_80A8B658:
/* 80A8B658  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80A8B65C  D0 1D 05 C4 */	stfs f0, 0x5c4(r29)
/* 80A8B660  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80A8B664  D0 1D 05 C8 */	stfs f0, 0x5c8(r29)
/* 80A8B668  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80A8B66C  D0 1D 05 CC */	stfs f0, 0x5cc(r29)
/* 80A8B670  38 61 00 0C */	addi r3, r1, 0xc
/* 80A8B674  38 9D 05 C4 */	addi r4, r29, 0x5c4
/* 80A8B678  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80A8B67C  4B 7D B4 B8 */	b __mi__4cXyzCFRC3Vec
/* 80A8B680  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80A8B684  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80A8B688  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A8B68C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A8B690  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80A8B694  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80A8B698  4B 7D BF DC */	b cM_atan2s__Fff
/* 80A8B69C  B0 7D 05 D0 */	sth r3, 0x5d0(r29)
/* 80A8B6A0  38 61 00 18 */	addi r3, r1, 0x18
/* 80A8B6A4  4B 8B BA 94 */	b PSVECSquareMag
/* 80A8B6A8  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8B6AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8B6B0  40 81 00 58 */	ble lbl_80A8B708
/* 80A8B6B4  FC 00 08 34 */	frsqrte f0, f1
/* 80A8B6B8  C8 9F 00 C8 */	lfd f4, 0xc8(r31)
/* 80A8B6BC  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8B6C0  C8 7F 00 D0 */	lfd f3, 0xd0(r31)
/* 80A8B6C4  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8B6C8  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8B6CC  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8B6D0  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8B6D4  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8B6D8  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8B6DC  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8B6E0  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8B6E4  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8B6E8  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8B6EC  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8B6F0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8B6F4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8B6F8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8B6FC  FC 21 00 32 */	fmul f1, f1, f0
/* 80A8B700  FC 20 08 18 */	frsp f1, f1
/* 80A8B704  48 00 00 88 */	b lbl_80A8B78C
lbl_80A8B708:
/* 80A8B708  C8 1F 00 D8 */	lfd f0, 0xd8(r31)
/* 80A8B70C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8B710  40 80 00 10 */	bge lbl_80A8B720
/* 80A8B714  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A8B718  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80A8B71C  48 00 00 70 */	b lbl_80A8B78C
lbl_80A8B720:
/* 80A8B720  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A8B724  80 81 00 08 */	lwz r4, 8(r1)
/* 80A8B728  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A8B72C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A8B730  7C 03 00 00 */	cmpw r3, r0
/* 80A8B734  41 82 00 14 */	beq lbl_80A8B748
/* 80A8B738  40 80 00 40 */	bge lbl_80A8B778
/* 80A8B73C  2C 03 00 00 */	cmpwi r3, 0
/* 80A8B740  41 82 00 20 */	beq lbl_80A8B760
/* 80A8B744  48 00 00 34 */	b lbl_80A8B778
lbl_80A8B748:
/* 80A8B748  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A8B74C  41 82 00 0C */	beq lbl_80A8B758
/* 80A8B750  38 00 00 01 */	li r0, 1
/* 80A8B754  48 00 00 28 */	b lbl_80A8B77C
lbl_80A8B758:
/* 80A8B758  38 00 00 02 */	li r0, 2
/* 80A8B75C  48 00 00 20 */	b lbl_80A8B77C
lbl_80A8B760:
/* 80A8B760  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A8B764  41 82 00 0C */	beq lbl_80A8B770
/* 80A8B768  38 00 00 05 */	li r0, 5
/* 80A8B76C  48 00 00 10 */	b lbl_80A8B77C
lbl_80A8B770:
/* 80A8B770  38 00 00 03 */	li r0, 3
/* 80A8B774  48 00 00 08 */	b lbl_80A8B77C
lbl_80A8B778:
/* 80A8B778  38 00 00 04 */	li r0, 4
lbl_80A8B77C:
/* 80A8B77C  2C 00 00 01 */	cmpwi r0, 1
/* 80A8B780  40 82 00 0C */	bne lbl_80A8B78C
/* 80A8B784  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A8B788  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80A8B78C:
/* 80A8B78C  D0 3D 05 D8 */	stfs f1, 0x5d8(r29)
/* 80A8B790  3B C0 00 00 */	li r30, 0
/* 80A8B794  38 00 00 02 */	li r0, 2
/* 80A8B798  98 1D 06 68 */	stb r0, 0x668(r29)
/* 80A8B79C  C0 1D 05 C4 */	lfs f0, 0x5c4(r29)
/* 80A8B7A0  D0 1D 06 6C */	stfs f0, 0x66c(r29)
/* 80A8B7A4  C0 1D 05 C8 */	lfs f0, 0x5c8(r29)
/* 80A8B7A8  D0 1D 06 70 */	stfs f0, 0x670(r29)
/* 80A8B7AC  C0 1D 05 CC */	lfs f0, 0x5cc(r29)
/* 80A8B7B0  D0 1D 06 74 */	stfs f0, 0x674(r29)
/* 80A8B7B4  A8 1D 06 46 */	lha r0, 0x646(r29)
/* 80A8B7B8  2C 00 00 02 */	cmpwi r0, 2
/* 80A8B7BC  41 82 01 C0 */	beq lbl_80A8B97C
/* 80A8B7C0  40 80 00 14 */	bge lbl_80A8B7D4
/* 80A8B7C4  2C 00 00 00 */	cmpwi r0, 0
/* 80A8B7C8  41 82 00 24 */	beq lbl_80A8B7EC
/* 80A8B7CC  40 80 00 60 */	bge lbl_80A8B82C
/* 80A8B7D0  48 00 02 F4 */	b lbl_80A8BAC4
lbl_80A8B7D4:
/* 80A8B7D4  2C 00 00 06 */	cmpwi r0, 6
/* 80A8B7D8  41 82 02 74 */	beq lbl_80A8BA4C
/* 80A8B7DC  40 80 02 E8 */	bge lbl_80A8BAC4
/* 80A8B7E0  2C 00 00 05 */	cmpwi r0, 5
/* 80A8B7E4  40 80 02 3C */	bge lbl_80A8BA20
/* 80A8B7E8  48 00 02 DC */	b lbl_80A8BAC4
lbl_80A8B7EC:
/* 80A8B7EC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A8B7F0  D0 1D 06 38 */	stfs f0, 0x638(r29)
/* 80A8B7F4  7F A3 EB 78 */	mr r3, r29
/* 80A8B7F8  38 80 00 19 */	li r4, 0x19
/* 80A8B7FC  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80A8B800  38 A0 00 02 */	li r5, 2
/* 80A8B804  C0 5D 06 38 */	lfs f2, 0x638(r29)
/* 80A8B808  4B FF D5 0D */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8B80C  A8 7D 06 46 */	lha r3, 0x646(r29)
/* 80A8B810  38 03 00 01 */	addi r0, r3, 1
/* 80A8B814  B0 1D 06 46 */	sth r0, 0x646(r29)
/* 80A8B818  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80A8B81C  4B 7D C1 70 */	b cM_rndFX__Ff
/* 80A8B820  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A8B824  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8B828  D0 1D 05 E0 */	stfs f0, 0x5e0(r29)
lbl_80A8B82C:
/* 80A8B82C  3B C0 04 00 */	li r30, 0x400
/* 80A8B830  38 00 C5 68 */	li r0, -15000
/* 80A8B834  B0 1D 06 8A */	sth r0, 0x68a(r29)
/* 80A8B838  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80A8B83C  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 80A8B840  C0 7D 05 D8 */	lfs f3, 0x5d8(r29)
/* 80A8B844  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80A8B848  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 80A8B84C  40 80 00 B0 */	bge lbl_80A8B8FC
/* 80A8B850  38 7D 06 38 */	addi r3, r29, 0x638
/* 80A8B854  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80A8B858  FC 40 08 90 */	fmr f2, f1
/* 80A8B85C  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 80A8B860  4B 7E 41 DC */	b cLib_addCalc2__FPffff
/* 80A8B864  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80A8B868  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80A8B86C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80A8B870  4B 7E 42 10 */	b cLib_addCalc0__FPfff
/* 80A8B874  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80A8B878  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A8B87C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8B880  40 80 02 44 */	bge lbl_80A8BAC4
/* 80A8B884  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80A8B888  4B 7D C0 CC */	b cM_rndF__Ff
/* 80A8B88C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80A8B890  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8B894  D0 1D 06 38 */	stfs f0, 0x638(r29)
/* 80A8B898  7F A3 EB 78 */	mr r3, r29
/* 80A8B89C  38 80 00 18 */	li r4, 0x18
/* 80A8B8A0  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80A8B8A4  38 A0 00 02 */	li r5, 2
/* 80A8B8A8  C0 5D 06 38 */	lfs f2, 0x638(r29)
/* 80A8B8AC  4B FF D4 69 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8B8B0  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80A8B8B4  4B 7D C0 A0 */	b cM_rndF__Ff
/* 80A8B8B8  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A8B8BC  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8B8C0  FC 00 00 1E */	fctiwz f0, f0
/* 80A8B8C4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80A8B8C8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80A8B8CC  B0 1D 06 4C */	sth r0, 0x64c(r29)
/* 80A8B8D0  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80A8B8D4  4B 7D C0 80 */	b cM_rndF__Ff
/* 80A8B8D8  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80A8B8DC  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8B8E0  FC 00 00 1E */	fctiwz f0, f0
/* 80A8B8E4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80A8B8E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A8B8EC  B0 1D 06 4E */	sth r0, 0x64e(r29)
/* 80A8B8F0  38 00 00 02 */	li r0, 2
/* 80A8B8F4  B0 1D 06 46 */	sth r0, 0x646(r29)
/* 80A8B8F8  48 00 01 CC */	b lbl_80A8BAC4
lbl_80A8B8FC:
/* 80A8B8FC  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80A8B900  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80A8B904  40 81 00 10 */	ble lbl_80A8B914
/* 80A8B908  38 00 00 05 */	li r0, 5
/* 80A8B90C  B0 1D 06 46 */	sth r0, 0x646(r29)
/* 80A8B910  48 00 01 B4 */	b lbl_80A8BAC4
lbl_80A8B914:
/* 80A8B914  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80A8B918  EC 03 10 28 */	fsubs f0, f3, f2
/* 80A8B91C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A8B920  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80A8B924  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8B928  40 81 00 08 */	ble lbl_80A8B930
/* 80A8B92C  FC 20 00 90 */	fmr f1, f0
lbl_80A8B930:
/* 80A8B930  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80A8B934  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8B938  40 80 00 08 */	bge lbl_80A8B940
/* 80A8B93C  FC 20 00 90 */	fmr f1, f0
lbl_80A8B940:
/* 80A8B940  38 7D 06 38 */	addi r3, r29, 0x638
/* 80A8B944  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8B948  C0 7F 00 70 */	lfs f3, 0x70(r31)
/* 80A8B94C  4B 7E 40 F0 */	b cLib_addCalc2__FPffff
/* 80A8B950  3C 60 80 A9 */	lis r3, l_HIO@ha
/* 80A8B954  38 63 2A D4 */	addi r3, r3, l_HIO@l
/* 80A8B958  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 80A8B95C  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80A8B960  C0 1D 06 38 */	lfs f0, 0x638(r29)
/* 80A8B964  EC 20 00 F2 */	fmuls f1, f0, f3
/* 80A8B968  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8B96C  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80A8B970  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80A8B974  4B 7E 40 C8 */	b cLib_addCalc2__FPffff
/* 80A8B978  48 00 01 4C */	b lbl_80A8BAC4
lbl_80A8B97C:
/* 80A8B97C  A8 1D 06 4C */	lha r0, 0x64c(r29)
/* 80A8B980  2C 00 00 00 */	cmpwi r0, 0
/* 80A8B984  41 82 00 14 */	beq lbl_80A8B998
/* 80A8B988  38 00 C5 68 */	li r0, -15000
/* 80A8B98C  B0 1D 06 8A */	sth r0, 0x68a(r29)
/* 80A8B990  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80A8B994  D0 1D 06 90 */	stfs f0, 0x690(r29)
lbl_80A8B998:
/* 80A8B998  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80A8B99C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80A8B9A0  FC 40 08 90 */	fmr f2, f1
/* 80A8B9A4  4B 7E 40 DC */	b cLib_addCalc0__FPfff
/* 80A8B9A8  C0 3D 05 D8 */	lfs f1, 0x5d8(r29)
/* 80A8B9AC  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80A8B9B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8B9B4  40 81 00 0C */	ble lbl_80A8B9C0
/* 80A8B9B8  38 00 00 00 */	li r0, 0
/* 80A8B9BC  B0 1D 06 46 */	sth r0, 0x646(r29)
lbl_80A8B9C0:
/* 80A8B9C0  A8 1D 06 4E */	lha r0, 0x64e(r29)
/* 80A8B9C4  2C 00 00 01 */	cmpwi r0, 1
/* 80A8B9C8  40 82 00 28 */	bne lbl_80A8B9F0
/* 80A8B9CC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80A8B9D0  4B 7D BF 84 */	b cM_rndF__Ff
/* 80A8B9D4  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80A8B9D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8B9DC  40 80 00 14 */	bge lbl_80A8B9F0
/* 80A8B9E0  38 00 00 05 */	li r0, 5
/* 80A8B9E4  B0 1D 06 42 */	sth r0, 0x642(r29)
/* 80A8B9E8  38 00 00 00 */	li r0, 0
/* 80A8B9EC  B0 1D 06 46 */	sth r0, 0x646(r29)
lbl_80A8B9F0:
/* 80A8B9F0  A8 1D 06 4C */	lha r0, 0x64c(r29)
/* 80A8B9F4  2C 00 00 01 */	cmpwi r0, 1
/* 80A8B9F8  40 82 00 CC */	bne lbl_80A8BAC4
/* 80A8B9FC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A8BA00  D0 1D 06 38 */	stfs f0, 0x638(r29)
/* 80A8BA04  7F A3 EB 78 */	mr r3, r29
/* 80A8BA08  38 80 00 12 */	li r4, 0x12
/* 80A8BA0C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80A8BA10  38 A0 00 00 */	li r5, 0
/* 80A8BA14  C0 5D 06 38 */	lfs f2, 0x638(r29)
/* 80A8BA18  4B FF D2 FD */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8BA1C  48 00 00 A8 */	b lbl_80A8BAC4
lbl_80A8BA20:
/* 80A8BA20  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A8BA24  D0 1D 06 38 */	stfs f0, 0x638(r29)
/* 80A8BA28  7F A3 EB 78 */	mr r3, r29
/* 80A8BA2C  38 80 00 11 */	li r4, 0x11
/* 80A8BA30  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80A8BA34  38 A0 00 02 */	li r5, 2
/* 80A8BA38  C0 5D 06 38 */	lfs f2, 0x638(r29)
/* 80A8BA3C  4B FF D2 D9 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8BA40  A8 7D 06 46 */	lha r3, 0x646(r29)
/* 80A8BA44  38 03 00 01 */	addi r0, r3, 1
/* 80A8BA48  B0 1D 06 46 */	sth r0, 0x646(r29)
lbl_80A8BA4C:
/* 80A8BA4C  3B C0 0A 00 */	li r30, 0xa00
/* 80A8BA50  38 7D 06 38 */	addi r3, r29, 0x638
/* 80A8BA54  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A8BA58  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8BA5C  C0 7F 00 70 */	lfs f3, 0x70(r31)
/* 80A8BA60  4B 7E 3F DC */	b cLib_addCalc2__FPffff
/* 80A8BA64  3C 60 80 A9 */	lis r3, l_HIO@ha
/* 80A8BA68  38 63 2A D4 */	addi r3, r3, l_HIO@l
/* 80A8BA6C  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 80A8BA70  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80A8BA74  C0 1D 06 38 */	lfs f0, 0x638(r29)
/* 80A8BA78  EC 20 00 F2 */	fmuls f1, f0, f3
/* 80A8BA7C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8BA80  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80A8BA84  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80A8BA88  4B 7E 3F B4 */	b cLib_addCalc2__FPffff
/* 80A8BA8C  C0 3D 05 D8 */	lfs f1, 0x5d8(r29)
/* 80A8BA90  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80A8BA94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8BA98  40 80 00 2C */	bge lbl_80A8BAC4
/* 80A8BA9C  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80A8BAA0  D0 1D 06 38 */	stfs f0, 0x638(r29)
/* 80A8BAA4  7F A3 EB 78 */	mr r3, r29
/* 80A8BAA8  38 80 00 19 */	li r4, 0x19
/* 80A8BAAC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80A8BAB0  38 A0 00 02 */	li r5, 2
/* 80A8BAB4  C0 5D 06 38 */	lfs f2, 0x638(r29)
/* 80A8BAB8  4B FF D2 5D */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8BABC  38 00 00 01 */	li r0, 1
/* 80A8BAC0  B0 1D 06 46 */	sth r0, 0x646(r29)
lbl_80A8BAC4:
/* 80A8BAC4  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80A8BAC8  A8 9D 05 D0 */	lha r4, 0x5d0(r29)
/* 80A8BACC  38 A0 00 04 */	li r5, 4
/* 80A8BAD0  7F C6 F3 78 */	mr r6, r30
/* 80A8BAD4  4B 7E 4B 34 */	b cLib_addCalcAngleS2__FPssss
/* 80A8BAD8  C0 1D 06 38 */	lfs f0, 0x638(r29)
/* 80A8BADC  80 7D 05 E8 */	lwz r3, 0x5e8(r29)
/* 80A8BAE0  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80A8BAE4:
/* 80A8BAE4  39 61 00 50 */	addi r11, r1, 0x50
/* 80A8BAE8  4B 8D 67 40 */	b _restgpr_29
/* 80A8BAEC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A8BAF0  7C 08 03 A6 */	mtlr r0
/* 80A8BAF4  38 21 00 50 */	addi r1, r1, 0x50
/* 80A8BAF8  4E 80 00 20 */	blr 
