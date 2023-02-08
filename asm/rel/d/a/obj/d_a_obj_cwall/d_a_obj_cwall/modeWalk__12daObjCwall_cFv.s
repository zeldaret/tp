lbl_80BD8778:
/* 80BD8778  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80BD877C  7C 08 02 A6 */	mflr r0
/* 80BD8780  90 01 00 84 */	stw r0, 0x84(r1)
/* 80BD8784  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80BD8788  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80BD878C  39 61 00 70 */	addi r11, r1, 0x70
/* 80BD8790  4B 78 9A 4D */	bl _savegpr_29
/* 80BD8794  7C 7D 1B 78 */	mr r29, r3
/* 80BD8798  3C 60 80 BE */	lis r3, l_wallBmd@ha /* 0x80BD9FA4@ha */
/* 80BD879C  3B E3 9F A4 */	addi r31, r3, l_wallBmd@l /* 0x80BD9FA4@l */
/* 80BD87A0  38 7D 0F 14 */	addi r3, r29, 0xf14
/* 80BD87A4  48 00 17 09 */	bl func_80BD9EAC
/* 80BD87A8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BD87AC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BD87B0  3B C3 00 04 */	addi r30, r3, 4
/* 80BD87B4  A8 7D 0F 16 */	lha r3, 0xf16(r29)
/* 80BD87B8  A8 1D 0F 14 */	lha r0, 0xf14(r29)
/* 80BD87BC  20 00 00 0D */	subfic r0, r0, 0xd
/* 80BD87C0  7C 03 01 D6 */	mullw r0, r3, r0
/* 80BD87C4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BD87C8  7C 1E 04 2E */	lfsx f0, r30, r0
/* 80BD87CC  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 80BD87D0  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80BD87D4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BD87D8  EF E2 00 32 */	fmuls f31, f2, f0
/* 80BD87DC  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80BD87E0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80BD87E4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80BD87E8  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80BD87EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD87F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BD87F4  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 80BD87F8  4B 43 3B E5 */	bl mDoMtx_YrotS__FPA4_fs
/* 80BD87FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD8800  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BD8804  38 81 00 40 */	addi r4, r1, 0x40
/* 80BD8808  7C 85 23 78 */	mr r5, r4
/* 80BD880C  4B 76 E5 61 */	bl PSMTXMultVec
/* 80BD8810  C0 5D 04 A8 */	lfs f2, 0x4a8(r29)
/* 80BD8814  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80BD8818  C0 9F 00 D4 */	lfs f4, 0xd4(r31)
/* 80BD881C  88 1D 0F 0D */	lbz r0, 0xf0d(r29)
/* 80BD8820  C8 7F 00 E0 */	lfd f3, 0xe0(r31)
/* 80BD8824  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BD8828  3C 60 43 30 */	lis r3, 0x4330
/* 80BD882C  90 61 00 50 */	stw r3, 0x50(r1)
/* 80BD8830  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80BD8834  EC 00 18 28 */	fsubs f0, f0, f3
/* 80BD8838  EC 00 F8 2A */	fadds f0, f0, f31
/* 80BD883C  EC 04 00 32 */	fmuls f0, f4, f0
/* 80BD8840  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BD8844  EC 02 00 2A */	fadds f0, f2, f0
/* 80BD8848  D0 1D 0F 38 */	stfs f0, 0xf38(r29)
/* 80BD884C  C0 5D 04 B0 */	lfs f2, 0x4b0(r29)
/* 80BD8850  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 80BD8854  88 1D 0F 0D */	lbz r0, 0xf0d(r29)
/* 80BD8858  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80BD885C  90 61 00 58 */	stw r3, 0x58(r1)
/* 80BD8860  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80BD8864  EC 00 18 28 */	fsubs f0, f0, f3
/* 80BD8868  EC 00 F8 2A */	fadds f0, f0, f31
/* 80BD886C  EC 04 00 32 */	fmuls f0, f4, f0
/* 80BD8870  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BD8874  EC 02 00 2A */	fadds f0, f2, f0
/* 80BD8878  D0 1D 0F 40 */	stfs f0, 0xf40(r29)
/* 80BD887C  C0 5D 0F 40 */	lfs f2, 0xf40(r29)
/* 80BD8880  C0 1D 0F 38 */	lfs f0, 0xf38(r29)
/* 80BD8884  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BD8888  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80BD888C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80BD8890  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80BD8894  C0 5D 0F 4C */	lfs f2, 0xf4c(r29)
/* 80BD8898  C0 1D 0F 44 */	lfs f0, 0xf44(r29)
/* 80BD889C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BD88A0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80BD88A4  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80BD88A8  38 61 00 1C */	addi r3, r1, 0x1c
/* 80BD88AC  38 81 00 28 */	addi r4, r1, 0x28
/* 80BD88B0  4B 76 EA ED */	bl PSVECSquareDistance
/* 80BD88B4  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80BD88B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD88BC  40 81 00 58 */	ble lbl_80BD8914
/* 80BD88C0  FC 00 08 34 */	frsqrte f0, f1
/* 80BD88C4  C8 9F 00 70 */	lfd f4, 0x70(r31)
/* 80BD88C8  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD88CC  C8 7F 00 78 */	lfd f3, 0x78(r31)
/* 80BD88D0  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD88D4  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD88D8  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD88DC  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD88E0  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD88E4  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD88E8  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD88EC  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD88F0  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD88F4  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD88F8  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD88FC  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD8900  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD8904  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD8908  FC 21 00 32 */	fmul f1, f1, f0
/* 80BD890C  FC 20 08 18 */	frsp f1, f1
/* 80BD8910  48 00 00 88 */	b lbl_80BD8998
lbl_80BD8914:
/* 80BD8914  C8 1F 00 80 */	lfd f0, 0x80(r31)
/* 80BD8918  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD891C  40 80 00 10 */	bge lbl_80BD892C
/* 80BD8920  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BD8924  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BD8928  48 00 00 70 */	b lbl_80BD8998
lbl_80BD892C:
/* 80BD892C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BD8930  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80BD8934  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BD8938  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BD893C  7C 03 00 00 */	cmpw r3, r0
/* 80BD8940  41 82 00 14 */	beq lbl_80BD8954
/* 80BD8944  40 80 00 40 */	bge lbl_80BD8984
/* 80BD8948  2C 03 00 00 */	cmpwi r3, 0
/* 80BD894C  41 82 00 20 */	beq lbl_80BD896C
/* 80BD8950  48 00 00 34 */	b lbl_80BD8984
lbl_80BD8954:
/* 80BD8954  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD8958  41 82 00 0C */	beq lbl_80BD8964
/* 80BD895C  38 00 00 01 */	li r0, 1
/* 80BD8960  48 00 00 28 */	b lbl_80BD8988
lbl_80BD8964:
/* 80BD8964  38 00 00 02 */	li r0, 2
/* 80BD8968  48 00 00 20 */	b lbl_80BD8988
lbl_80BD896C:
/* 80BD896C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD8970  41 82 00 0C */	beq lbl_80BD897C
/* 80BD8974  38 00 00 05 */	li r0, 5
/* 80BD8978  48 00 00 10 */	b lbl_80BD8988
lbl_80BD897C:
/* 80BD897C  38 00 00 03 */	li r0, 3
/* 80BD8980  48 00 00 08 */	b lbl_80BD8988
lbl_80BD8984:
/* 80BD8984  38 00 00 04 */	li r0, 4
lbl_80BD8988:
/* 80BD8988  2C 00 00 01 */	cmpwi r0, 1
/* 80BD898C  40 82 00 0C */	bne lbl_80BD8998
/* 80BD8990  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BD8994  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BD8998:
/* 80BD8998  FC 00 0A 10 */	fabs f0, f1
/* 80BD899C  FC 00 00 18 */	frsp f0, f0
/* 80BD89A0  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80BD89A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD89A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD89AC  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80BD89B0  A8 64 04 DE */	lha r3, 0x4de(r4)
/* 80BD89B4  38 03 7F FF */	addi r0, r3, 0x7fff
/* 80BD89B8  B0 01 00 08 */	sth r0, 8(r1)
/* 80BD89BC  A8 04 04 DE */	lha r0, 0x4de(r4)
/* 80BD89C0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BD89C4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BD89C8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BD89CC  7C 23 04 2E */	lfsx f1, r3, r0
/* 80BD89D0  C0 04 05 2C */	lfs f0, 0x52c(r4)
/* 80BD89D4  EC 20 00 72 */	fmuls f1, f0, f1
/* 80BD89D8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80BD89DC  7C 5E 04 2E */	lfsx f2, r30, r0
/* 80BD89E0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80BD89E4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BD89E8  EC 21 00 72 */	fmuls f1, f1, f1
/* 80BD89EC  EC 00 00 32 */	fmuls f0, f0, f0
/* 80BD89F0  EC 21 00 2A */	fadds f1, f1, f0
/* 80BD89F4  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80BD89F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD89FC  40 81 00 58 */	ble lbl_80BD8A54
/* 80BD8A00  FC 00 08 34 */	frsqrte f0, f1
/* 80BD8A04  C8 9F 00 70 */	lfd f4, 0x70(r31)
/* 80BD8A08  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD8A0C  C8 7F 00 78 */	lfd f3, 0x78(r31)
/* 80BD8A10  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD8A14  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD8A18  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD8A1C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD8A20  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD8A24  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD8A28  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD8A2C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD8A30  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD8A34  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD8A38  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD8A3C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD8A40  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD8A44  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD8A48  FC 21 00 32 */	fmul f1, f1, f0
/* 80BD8A4C  FC 20 08 18 */	frsp f1, f1
/* 80BD8A50  48 00 00 88 */	b lbl_80BD8AD8
lbl_80BD8A54:
/* 80BD8A54  C8 1F 00 80 */	lfd f0, 0x80(r31)
/* 80BD8A58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD8A5C  40 80 00 10 */	bge lbl_80BD8A6C
/* 80BD8A60  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BD8A64  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BD8A68  48 00 00 70 */	b lbl_80BD8AD8
lbl_80BD8A6C:
/* 80BD8A6C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BD8A70  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80BD8A74  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BD8A78  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BD8A7C  7C 03 00 00 */	cmpw r3, r0
/* 80BD8A80  41 82 00 14 */	beq lbl_80BD8A94
/* 80BD8A84  40 80 00 40 */	bge lbl_80BD8AC4
/* 80BD8A88  2C 03 00 00 */	cmpwi r3, 0
/* 80BD8A8C  41 82 00 20 */	beq lbl_80BD8AAC
/* 80BD8A90  48 00 00 34 */	b lbl_80BD8AC4
lbl_80BD8A94:
/* 80BD8A94  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD8A98  41 82 00 0C */	beq lbl_80BD8AA4
/* 80BD8A9C  38 00 00 01 */	li r0, 1
/* 80BD8AA0  48 00 00 28 */	b lbl_80BD8AC8
lbl_80BD8AA4:
/* 80BD8AA4  38 00 00 02 */	li r0, 2
/* 80BD8AA8  48 00 00 20 */	b lbl_80BD8AC8
lbl_80BD8AAC:
/* 80BD8AAC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD8AB0  41 82 00 0C */	beq lbl_80BD8ABC
/* 80BD8AB4  38 00 00 05 */	li r0, 5
/* 80BD8AB8  48 00 00 10 */	b lbl_80BD8AC8
lbl_80BD8ABC:
/* 80BD8ABC  38 00 00 03 */	li r0, 3
/* 80BD8AC0  48 00 00 08 */	b lbl_80BD8AC8
lbl_80BD8AC4:
/* 80BD8AC4  38 00 00 04 */	li r0, 4
lbl_80BD8AC8:
/* 80BD8AC8  2C 00 00 01 */	cmpwi r0, 1
/* 80BD8ACC  40 82 00 0C */	bne lbl_80BD8AD8
/* 80BD8AD0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BD8AD4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BD8AD8:
/* 80BD8AD8  7F A3 EB 78 */	mr r3, r29
/* 80BD8ADC  38 81 00 08 */	addi r4, r1, 8
/* 80BD8AE0  48 00 08 7D */	bl setPower__12daObjCwall_cFfPs
/* 80BD8AE4  7F A3 EB 78 */	mr r3, r29
/* 80BD8AE8  C0 3D 05 00 */	lfs f1, 0x500(r29)
/* 80BD8AEC  38 9D 04 E6 */	addi r4, r29, 0x4e6
/* 80BD8AF0  48 00 08 6D */	bl setPower__12daObjCwall_cFfPs
/* 80BD8AF4  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80BD8AF8  D0 1D 0F 50 */	stfs f0, 0xf50(r29)
/* 80BD8AFC  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080135@ha */
/* 80BD8B00  38 03 01 35 */	addi r0, r3, 0x0135 /* 0x00080135@l */
/* 80BD8B04  90 01 00 18 */	stw r0, 0x18(r1)
/* 80BD8B08  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BD8B0C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BD8B10  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD8B14  38 81 00 18 */	addi r4, r1, 0x18
/* 80BD8B18  38 BD 0F 2C */	addi r5, r29, 0xf2c
/* 80BD8B1C  38 C0 00 00 */	li r6, 0
/* 80BD8B20  38 E0 00 00 */	li r7, 0
/* 80BD8B24  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80BD8B28  FC 40 08 90 */	fmr f2, f1
/* 80BD8B2C  C0 7F 00 D8 */	lfs f3, 0xd8(r31)
/* 80BD8B30  FC 80 18 90 */	fmr f4, f3
/* 80BD8B34  39 00 00 00 */	li r8, 0
/* 80BD8B38  4B 6D 39 D5 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BD8B3C  A8 1D 0F 14 */	lha r0, 0xf14(r29)
/* 80BD8B40  2C 00 00 00 */	cmpwi r0, 0
/* 80BD8B44  40 82 00 64 */	bne lbl_80BD8BA8
/* 80BD8B48  7F A3 EB 78 */	mr r3, r29
/* 80BD8B4C  4B FF FA 49 */	bl initWait__12daObjCwall_cFv
/* 80BD8B50  88 7D 0F 0D */	lbz r3, 0xf0d(r29)
/* 80BD8B54  38 03 00 01 */	addi r0, r3, 1
/* 80BD8B58  98 1D 0F 0D */	stb r0, 0xf0d(r29)
/* 80BD8B5C  88 1D 0F 0D */	lbz r0, 0xf0d(r29)
/* 80BD8B60  28 00 00 09 */	cmplwi r0, 9
/* 80BD8B64  40 82 00 44 */	bne lbl_80BD8BA8
/* 80BD8B68  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080136@ha */
/* 80BD8B6C  38 03 01 36 */	addi r0, r3, 0x0136 /* 0x00080136@l */
/* 80BD8B70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD8B74  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BD8B78  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BD8B7C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD8B80  38 81 00 14 */	addi r4, r1, 0x14
/* 80BD8B84  38 BD 0F 2C */	addi r5, r29, 0xf2c
/* 80BD8B88  38 C0 00 00 */	li r6, 0
/* 80BD8B8C  38 E0 00 00 */	li r7, 0
/* 80BD8B90  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80BD8B94  FC 40 08 90 */	fmr f2, f1
/* 80BD8B98  C0 7F 00 D8 */	lfs f3, 0xd8(r31)
/* 80BD8B9C  FC 80 18 90 */	fmr f4, f3
/* 80BD8BA0  39 00 00 00 */	li r8, 0
/* 80BD8BA4  4B 6D 2D E1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BD8BA8:
/* 80BD8BA8  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80BD8BAC  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80BD8BB0  39 61 00 70 */	addi r11, r1, 0x70
/* 80BD8BB4  4B 78 96 75 */	bl _restgpr_29
/* 80BD8BB8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80BD8BBC  7C 08 03 A6 */	mtlr r0
/* 80BD8BC0  38 21 00 80 */	addi r1, r1, 0x80
/* 80BD8BC4  4E 80 00 20 */	blr 
