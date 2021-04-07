lbl_8048A6F8:
/* 8048A6F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8048A6FC  7C 08 02 A6 */	mflr r0
/* 8048A700  90 01 00 34 */	stw r0, 0x34(r1)
/* 8048A704  39 61 00 30 */	addi r11, r1, 0x30
/* 8048A708  4B ED 7A D5 */	bl _savegpr_29
/* 8048A70C  7C 7E 1B 78 */	mr r30, r3
/* 8048A710  3C 60 80 49 */	lis r3, lit_3769@ha /* 0x8048AC28@ha */
/* 8048A714  3B E3 AC 28 */	addi r31, r3, lit_3769@l /* 0x8048AC28@l */
/* 8048A718  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8048A71C  7C 05 07 74 */	extsb r5, r0
/* 8048A720  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 8048A724  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 8048A728  7C 00 07 74 */	extsb r0, r0
/* 8048A72C  7C 05 00 00 */	cmpw r5, r0
/* 8048A730  41 82 00 0C */	beq lbl_8048A73C
/* 8048A734  38 60 00 00 */	li r3, 0
/* 8048A738  48 00 02 9C */	b lbl_8048A9D4
lbl_8048A73C:
/* 8048A73C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8048A740  80 1F 00 04 */	lwz r0, 4(r31)
/* 8048A744  90 61 00 0C */	stw r3, 0xc(r1)
/* 8048A748  90 01 00 10 */	stw r0, 0x10(r1)
/* 8048A74C  88 1F 00 08 */	lbz r0, 8(r31)
/* 8048A750  98 01 00 14 */	stb r0, 0x14(r1)
/* 8048A754  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8048A758  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 8048A75C  28 04 00 FF */	cmplwi r4, 0xff
/* 8048A760  40 82 00 0C */	bne lbl_8048A76C
/* 8048A764  3B A0 00 00 */	li r29, 0
/* 8048A768  48 00 00 24 */	b lbl_8048A78C
lbl_8048A76C:
/* 8048A76C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048A770  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048A774  4B BA AB ED */	bl isSwitch__10dSv_info_cCFii
/* 8048A778  2C 03 00 00 */	cmpwi r3, 0
/* 8048A77C  41 82 00 0C */	beq lbl_8048A788
/* 8048A780  3B A0 00 01 */	li r29, 1
/* 8048A784  48 00 00 08 */	b lbl_8048A78C
lbl_8048A788:
/* 8048A788  3B A0 00 02 */	li r29, 2
lbl_8048A78C:
/* 8048A78C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8048A790  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 8048A794  28 04 00 FF */	cmplwi r4, 0xff
/* 8048A798  40 82 00 0C */	bne lbl_8048A7A4
/* 8048A79C  38 80 00 00 */	li r4, 0
/* 8048A7A0  48 00 00 2C */	b lbl_8048A7CC
lbl_8048A7A4:
/* 8048A7A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048A7A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048A7AC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8048A7B0  7C 05 07 74 */	extsb r5, r0
/* 8048A7B4  4B BA AB AD */	bl isSwitch__10dSv_info_cCFii
/* 8048A7B8  2C 03 00 00 */	cmpwi r3, 0
/* 8048A7BC  41 82 00 0C */	beq lbl_8048A7C8
/* 8048A7C0  38 80 00 01 */	li r4, 1
/* 8048A7C4  48 00 00 08 */	b lbl_8048A7CC
lbl_8048A7C8:
/* 8048A7C8  38 80 00 02 */	li r4, 2
lbl_8048A7CC:
/* 8048A7CC  38 C0 00 00 */	li r6, 0
/* 8048A7D0  1C 1D 00 03 */	mulli r0, r29, 3
/* 8048A7D4  38 61 00 0C */	addi r3, r1, 0xc
/* 8048A7D8  7C 00 22 14 */	add r0, r0, r4
/* 8048A7DC  7C 03 00 AE */	lbzx r0, r3, r0
/* 8048A7E0  28 00 00 00 */	cmplwi r0, 0
/* 8048A7E4  41 82 01 CC */	beq lbl_8048A9B0
/* 8048A7E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048A7EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048A7F0  80 83 5D B4 */	lwz r4, 0x5db4(r3)
/* 8048A7F4  A8 1E 04 B8 */	lha r0, 0x4b8(r30)
/* 8048A7F8  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8048A7FC  40 82 00 78 */	bne lbl_8048A874
/* 8048A800  C0 1E 05 70 */	lfs f0, 0x570(r30)
/* 8048A804  C0 24 04 D0 */	lfs f1, 0x4d0(r4)
/* 8048A808  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8048A80C  4C 40 13 82 */	cror 2, 0, 2
/* 8048A810  40 82 01 A0 */	bne lbl_8048A9B0
/* 8048A814  C0 1E 05 7C */	lfs f0, 0x57c(r30)
/* 8048A818  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8048A81C  4C 40 13 82 */	cror 2, 0, 2
/* 8048A820  40 82 01 90 */	bne lbl_8048A9B0
/* 8048A824  C0 1E 05 74 */	lfs f0, 0x574(r30)
/* 8048A828  C0 24 04 D4 */	lfs f1, 0x4d4(r4)
/* 8048A82C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8048A830  4C 40 13 82 */	cror 2, 0, 2
/* 8048A834  40 82 01 7C */	bne lbl_8048A9B0
/* 8048A838  C0 1E 05 80 */	lfs f0, 0x580(r30)
/* 8048A83C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8048A840  4C 40 13 82 */	cror 2, 0, 2
/* 8048A844  40 82 01 6C */	bne lbl_8048A9B0
/* 8048A848  C0 1E 05 78 */	lfs f0, 0x578(r30)
/* 8048A84C  C0 24 04 D8 */	lfs f1, 0x4d8(r4)
/* 8048A850  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8048A854  4C 40 13 82 */	cror 2, 0, 2
/* 8048A858  40 82 01 58 */	bne lbl_8048A9B0
/* 8048A85C  C0 1E 05 84 */	lfs f0, 0x584(r30)
/* 8048A860  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8048A864  4C 40 13 82 */	cror 2, 0, 2
/* 8048A868  40 82 01 48 */	bne lbl_8048A9B0
/* 8048A86C  38 C0 00 01 */	li r6, 1
/* 8048A870  48 00 01 40 */	b lbl_8048A9B0
lbl_8048A874:
/* 8048A874  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8048A878  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 8048A87C  EC 41 00 28 */	fsubs f2, f1, f0
/* 8048A880  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 8048A884  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 8048A888  EC 01 00 28 */	fsubs f0, f1, f0
/* 8048A88C  EC 22 00 B2 */	fmuls f1, f2, f2
/* 8048A890  EC 00 00 32 */	fmuls f0, f0, f0
/* 8048A894  EC 81 00 2A */	fadds f4, f1, f0
/* 8048A898  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8048A89C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8048A8A0  40 81 00 58 */	ble lbl_8048A8F8
/* 8048A8A4  FC 00 20 34 */	frsqrte f0, f4
/* 8048A8A8  C8 7F 00 10 */	lfd f3, 0x10(r31)
/* 8048A8AC  FC 23 00 32 */	fmul f1, f3, f0
/* 8048A8B0  C8 5F 00 18 */	lfd f2, 0x18(r31)
/* 8048A8B4  FC 00 00 32 */	fmul f0, f0, f0
/* 8048A8B8  FC 04 00 32 */	fmul f0, f4, f0
/* 8048A8BC  FC 02 00 28 */	fsub f0, f2, f0
/* 8048A8C0  FC 01 00 32 */	fmul f0, f1, f0
/* 8048A8C4  FC 23 00 32 */	fmul f1, f3, f0
/* 8048A8C8  FC 00 00 32 */	fmul f0, f0, f0
/* 8048A8CC  FC 04 00 32 */	fmul f0, f4, f0
/* 8048A8D0  FC 02 00 28 */	fsub f0, f2, f0
/* 8048A8D4  FC 01 00 32 */	fmul f0, f1, f0
/* 8048A8D8  FC 23 00 32 */	fmul f1, f3, f0
/* 8048A8DC  FC 00 00 32 */	fmul f0, f0, f0
/* 8048A8E0  FC 04 00 32 */	fmul f0, f4, f0
/* 8048A8E4  FC 02 00 28 */	fsub f0, f2, f0
/* 8048A8E8  FC 01 00 32 */	fmul f0, f1, f0
/* 8048A8EC  FC 84 00 32 */	fmul f4, f4, f0
/* 8048A8F0  FC 80 20 18 */	frsp f4, f4
/* 8048A8F4  48 00 00 88 */	b lbl_8048A97C
lbl_8048A8F8:
/* 8048A8F8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8048A8FC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8048A900  40 80 00 10 */	bge lbl_8048A910
/* 8048A904  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8048A908  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8048A90C  48 00 00 70 */	b lbl_8048A97C
lbl_8048A910:
/* 8048A910  D0 81 00 08 */	stfs f4, 8(r1)
/* 8048A914  80 A1 00 08 */	lwz r5, 8(r1)
/* 8048A918  54 A3 00 50 */	rlwinm r3, r5, 0, 1, 8
/* 8048A91C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8048A920  7C 03 00 00 */	cmpw r3, r0
/* 8048A924  41 82 00 14 */	beq lbl_8048A938
/* 8048A928  40 80 00 40 */	bge lbl_8048A968
/* 8048A92C  2C 03 00 00 */	cmpwi r3, 0
/* 8048A930  41 82 00 20 */	beq lbl_8048A950
/* 8048A934  48 00 00 34 */	b lbl_8048A968
lbl_8048A938:
/* 8048A938  54 A0 02 7F */	clrlwi. r0, r5, 9
/* 8048A93C  41 82 00 0C */	beq lbl_8048A948
/* 8048A940  38 00 00 01 */	li r0, 1
/* 8048A944  48 00 00 28 */	b lbl_8048A96C
lbl_8048A948:
/* 8048A948  38 00 00 02 */	li r0, 2
/* 8048A94C  48 00 00 20 */	b lbl_8048A96C
lbl_8048A950:
/* 8048A950  54 A0 02 7F */	clrlwi. r0, r5, 9
/* 8048A954  41 82 00 0C */	beq lbl_8048A960
/* 8048A958  38 00 00 05 */	li r0, 5
/* 8048A95C  48 00 00 10 */	b lbl_8048A96C
lbl_8048A960:
/* 8048A960  38 00 00 03 */	li r0, 3
/* 8048A964  48 00 00 08 */	b lbl_8048A96C
lbl_8048A968:
/* 8048A968  38 00 00 04 */	li r0, 4
lbl_8048A96C:
/* 8048A96C  2C 00 00 01 */	cmpwi r0, 1
/* 8048A970  40 82 00 0C */	bne lbl_8048A97C
/* 8048A974  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8048A978  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8048A97C:
/* 8048A97C  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 8048A980  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8048A984  40 80 00 2C */	bge lbl_8048A9B0
/* 8048A988  C0 1E 05 74 */	lfs f0, 0x574(r30)
/* 8048A98C  C0 24 04 D4 */	lfs f1, 0x4d4(r4)
/* 8048A990  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8048A994  4C 40 13 82 */	cror 2, 0, 2
/* 8048A998  40 82 00 18 */	bne lbl_8048A9B0
/* 8048A99C  C0 1E 05 80 */	lfs f0, 0x580(r30)
/* 8048A9A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8048A9A4  4C 40 13 82 */	cror 2, 0, 2
/* 8048A9A8  40 82 00 08 */	bne lbl_8048A9B0
/* 8048A9AC  38 C0 00 01 */	li r6, 1
lbl_8048A9B0:
/* 8048A9B0  38 00 00 00 */	li r0, 0
/* 8048A9B4  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8048A9B8  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 8048A9BC  41 82 00 14 */	beq lbl_8048A9D0
/* 8048A9C0  38 7E 05 50 */	addi r3, r30, 0x550
/* 8048A9C4  4B CD 4B 2D */	bl setLookPos__9daPy_py_cFP4cXyz
/* 8048A9C8  38 00 01 00 */	li r0, 0x100
/* 8048A9CC  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_8048A9D0:
/* 8048A9D0  38 60 00 01 */	li r3, 1
lbl_8048A9D4:
/* 8048A9D4  39 61 00 30 */	addi r11, r1, 0x30
/* 8048A9D8  4B ED 78 51 */	bl _restgpr_29
/* 8048A9DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8048A9E0  7C 08 03 A6 */	mtlr r0
/* 8048A9E4  38 21 00 30 */	addi r1, r1, 0x30
/* 8048A9E8  4E 80 00 20 */	blr 
