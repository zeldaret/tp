lbl_8078A6EC:
/* 8078A6EC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8078A6F0  7C 08 02 A6 */	mflr r0
/* 8078A6F4  90 01 00 64 */	stw r0, 0x64(r1)
/* 8078A6F8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8078A6FC  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8078A700  39 61 00 50 */	addi r11, r1, 0x50
/* 8078A704  4B BD 7A C9 */	bl _savegpr_25
/* 8078A708  7C 7B 1B 78 */	mr r27, r3
/* 8078A70C  3C 60 80 79 */	lis r3, lit_1109@ha /* 0x8078E0A0@ha */
/* 8078A710  3B A3 E0 A0 */	addi r29, r3, lit_1109@l /* 0x8078E0A0@l */
/* 8078A714  3C 60 80 79 */	lis r3, lit_3767@ha /* 0x8078DDA4@ha */
/* 8078A718  3B C3 DD A4 */	addi r30, r3, lit_3767@l /* 0x8078DDA4@l */
/* 8078A71C  38 C0 00 00 */	li r6, 0
/* 8078A720  90 DD 01 20 */	stw r6, 0x120(r29)
/* 8078A724  7C C4 33 78 */	mr r4, r6
/* 8078A728  38 BD 00 68 */	addi r5, r29, 0x68
/* 8078A72C  38 1D 00 90 */	addi r0, r29, 0x90
/* 8078A730  7C 03 03 78 */	mr r3, r0
/* 8078A734  38 00 00 0A */	li r0, 0xa
/* 8078A738  7C 09 03 A6 */	mtctr r0
lbl_8078A73C:
/* 8078A73C  7C C5 21 2E */	stwx r6, r5, r4
/* 8078A740  98 C3 00 00 */	stb r6, 0(r3)
/* 8078A744  38 63 00 01 */	addi r3, r3, 1
/* 8078A748  38 84 00 04 */	addi r4, r4, 4
/* 8078A74C  42 00 FF F0 */	bdnz lbl_8078A73C
/* 8078A750  3C 60 80 79 */	lis r3, s_box_sub__FPvPv@ha /* 0x8078A67C@ha */
/* 8078A754  38 63 A6 7C */	addi r3, r3, s_box_sub__FPvPv@l /* 0x8078A67C@l */
/* 8078A758  7F 64 DB 78 */	mr r4, r27
/* 8078A75C  4B 89 6B DD */	bl fpcEx_Search__FPFPvPv_PvPv
/* 8078A760  C3 FE 00 10 */	lfs f31, 0x10(r30)
/* 8078A764  80 1D 01 20 */	lwz r0, 0x120(r29)
/* 8078A768  2C 00 00 00 */	cmpwi r0, 0
/* 8078A76C  41 82 02 20 */	beq lbl_8078A98C
/* 8078A770  3B 20 00 00 */	li r25, 0
/* 8078A774  48 00 02 00 */	b lbl_8078A974
lbl_8078A778:
/* 8078A778  57 20 10 3A */	slwi r0, r25, 2
/* 8078A77C  7F 5F 00 2E */	lwzx r26, r31, r0
/* 8078A780  7C 1C C8 AE */	lbzx r0, r28, r25
/* 8078A784  7C 00 07 75 */	extsb. r0, r0
/* 8078A788  40 82 00 24 */	bne lbl_8078A7AC
/* 8078A78C  7F 63 DB 78 */	mr r3, r27
/* 8078A790  38 9A 05 B4 */	addi r4, r26, 0x5b4
/* 8078A794  1C 19 00 0C */	mulli r0, r25, 0xc
/* 8078A798  38 BD 00 A8 */	addi r5, r29, 0xa8
/* 8078A79C  7C A5 02 14 */	add r5, r5, r0
/* 8078A7A0  4B FF FD E9 */	bl otherBgCheck__FP10fopAc_ac_cP4cXyzP4cXyz
/* 8078A7A4  2C 03 00 00 */	cmpwi r3, 0
/* 8078A7A8  41 82 01 9C */	beq lbl_8078A944
lbl_8078A7AC:
/* 8078A7AC  38 00 00 01 */	li r0, 1
/* 8078A7B0  7C 1C C9 AE */	stbx r0, r28, r25
/* 8078A7B4  38 61 00 18 */	addi r3, r1, 0x18
/* 8078A7B8  1C 19 00 0C */	mulli r0, r25, 0xc
/* 8078A7BC  38 9D 00 A8 */	addi r4, r29, 0xa8
/* 8078A7C0  7C 84 02 14 */	add r4, r4, r0
/* 8078A7C4  38 BA 05 B4 */	addi r5, r26, 0x5b4
/* 8078A7C8  4B AD C3 6D */	bl __mi__4cXyzCFRC3Vec
/* 8078A7CC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8078A7D0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8078A7D4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8078A7D8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8078A7DC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8078A7E0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8078A7E4  38 61 00 24 */	addi r3, r1, 0x24
/* 8078A7E8  4B BB C9 51 */	bl PSVECSquareMag
/* 8078A7EC  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8078A7F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078A7F4  40 81 00 58 */	ble lbl_8078A84C
/* 8078A7F8  FC 00 08 34 */	frsqrte f0, f1
/* 8078A7FC  C8 9E 00 28 */	lfd f4, 0x28(r30)
/* 8078A800  FC 44 00 32 */	fmul f2, f4, f0
/* 8078A804  C8 7E 00 30 */	lfd f3, 0x30(r30)
/* 8078A808  FC 00 00 32 */	fmul f0, f0, f0
/* 8078A80C  FC 01 00 32 */	fmul f0, f1, f0
/* 8078A810  FC 03 00 28 */	fsub f0, f3, f0
/* 8078A814  FC 02 00 32 */	fmul f0, f2, f0
/* 8078A818  FC 44 00 32 */	fmul f2, f4, f0
/* 8078A81C  FC 00 00 32 */	fmul f0, f0, f0
/* 8078A820  FC 01 00 32 */	fmul f0, f1, f0
/* 8078A824  FC 03 00 28 */	fsub f0, f3, f0
/* 8078A828  FC 02 00 32 */	fmul f0, f2, f0
/* 8078A82C  FC 44 00 32 */	fmul f2, f4, f0
/* 8078A830  FC 00 00 32 */	fmul f0, f0, f0
/* 8078A834  FC 01 00 32 */	fmul f0, f1, f0
/* 8078A838  FC 03 00 28 */	fsub f0, f3, f0
/* 8078A83C  FC 02 00 32 */	fmul f0, f2, f0
/* 8078A840  FC 21 00 32 */	fmul f1, f1, f0
/* 8078A844  FC 20 08 18 */	frsp f1, f1
/* 8078A848  48 00 00 88 */	b lbl_8078A8D0
lbl_8078A84C:
/* 8078A84C  C8 1E 00 38 */	lfd f0, 0x38(r30)
/* 8078A850  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078A854  40 80 00 10 */	bge lbl_8078A864
/* 8078A858  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8078A85C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8078A860  48 00 00 70 */	b lbl_8078A8D0
lbl_8078A864:
/* 8078A864  D0 21 00 08 */	stfs f1, 8(r1)
/* 8078A868  80 81 00 08 */	lwz r4, 8(r1)
/* 8078A86C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8078A870  3C 00 7F 80 */	lis r0, 0x7f80
/* 8078A874  7C 03 00 00 */	cmpw r3, r0
/* 8078A878  41 82 00 14 */	beq lbl_8078A88C
/* 8078A87C  40 80 00 40 */	bge lbl_8078A8BC
/* 8078A880  2C 03 00 00 */	cmpwi r3, 0
/* 8078A884  41 82 00 20 */	beq lbl_8078A8A4
/* 8078A888  48 00 00 34 */	b lbl_8078A8BC
lbl_8078A88C:
/* 8078A88C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8078A890  41 82 00 0C */	beq lbl_8078A89C
/* 8078A894  38 00 00 01 */	li r0, 1
/* 8078A898  48 00 00 28 */	b lbl_8078A8C0
lbl_8078A89C:
/* 8078A89C  38 00 00 02 */	li r0, 2
/* 8078A8A0  48 00 00 20 */	b lbl_8078A8C0
lbl_8078A8A4:
/* 8078A8A4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8078A8A8  41 82 00 0C */	beq lbl_8078A8B4
/* 8078A8AC  38 00 00 05 */	li r0, 5
/* 8078A8B0  48 00 00 10 */	b lbl_8078A8C0
lbl_8078A8B4:
/* 8078A8B4  38 00 00 03 */	li r0, 3
/* 8078A8B8  48 00 00 08 */	b lbl_8078A8C0
lbl_8078A8BC:
/* 8078A8BC  38 00 00 04 */	li r0, 4
lbl_8078A8C0:
/* 8078A8C0  2C 00 00 01 */	cmpwi r0, 1
/* 8078A8C4  40 82 00 0C */	bne lbl_8078A8D0
/* 8078A8C8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8078A8CC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8078A8D0:
/* 8078A8D0  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8078A8D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078A8D8  40 80 00 6C */	bge lbl_8078A944
/* 8078A8DC  C0 3A 05 B8 */	lfs f1, 0x5b8(r26)
/* 8078A8E0  C0 1B 06 B8 */	lfs f0, 0x6b8(r27)
/* 8078A8E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078A8E8  40 80 00 5C */	bge lbl_8078A944
/* 8078A8EC  38 61 00 0C */	addi r3, r1, 0xc
/* 8078A8F0  38 9A 05 B4 */	addi r4, r26, 0x5b4
/* 8078A8F4  38 BB 04 A8 */	addi r5, r27, 0x4a8
/* 8078A8F8  4B AD C2 3D */	bl __mi__4cXyzCFRC3Vec
/* 8078A8FC  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8078A900  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8078A904  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8078A908  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8078A90C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8078A910  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8078A914  EC 21 00 72 */	fmuls f1, f1, f1
/* 8078A918  EC 00 00 32 */	fmuls f0, f0, f0
/* 8078A91C  EC 21 00 2A */	fadds f1, f1, f0
/* 8078A920  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8078A924  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078A928  40 81 00 0C */	ble lbl_8078A934
/* 8078A92C  FC 00 08 34 */	frsqrte f0, f1
/* 8078A930  EC 20 00 72 */	fmuls f1, f0, f1
lbl_8078A934:
/* 8078A934  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8078A938  40 80 00 0C */	bge lbl_8078A944
/* 8078A93C  7F 43 D3 78 */	mr r3, r26
/* 8078A940  48 00 00 58 */	b lbl_8078A998
lbl_8078A944:
/* 8078A944  80 1D 01 20 */	lwz r0, 0x120(r29)
/* 8078A948  3B 39 00 01 */	addi r25, r25, 1
/* 8078A94C  7C 19 00 00 */	cmpw r25, r0
/* 8078A950  40 82 00 2C */	bne lbl_8078A97C
/* 8078A954  3B 20 00 00 */	li r25, 0
/* 8078A958  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8078A95C  EF FF 00 2A */	fadds f31, f31, f0
/* 8078A960  C0 1B 06 74 */	lfs f0, 0x674(r27)
/* 8078A964  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8078A968  40 81 00 14 */	ble lbl_8078A97C
/* 8078A96C  38 60 00 00 */	li r3, 0
/* 8078A970  48 00 00 28 */	b lbl_8078A998
lbl_8078A974:
/* 8078A974  3B FD 00 68 */	addi r31, r29, 0x68
/* 8078A978  3B 9D 00 90 */	addi r28, r29, 0x90
lbl_8078A97C:
/* 8078A97C  80 1D 01 20 */	lwz r0, 0x120(r29)
/* 8078A980  7C 19 00 00 */	cmpw r25, r0
/* 8078A984  41 80 FD F4 */	blt lbl_8078A778
/* 8078A988  48 00 00 0C */	b lbl_8078A994
lbl_8078A98C:
/* 8078A98C  38 60 00 00 */	li r3, 0
/* 8078A990  48 00 00 08 */	b lbl_8078A998
lbl_8078A994:
/* 8078A994  38 60 00 00 */	li r3, 0
lbl_8078A998:
/* 8078A998  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8078A99C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8078A9A0  39 61 00 50 */	addi r11, r1, 0x50
/* 8078A9A4  4B BD 78 75 */	bl _restgpr_25
/* 8078A9A8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8078A9AC  7C 08 03 A6 */	mtlr r0
/* 8078A9B0  38 21 00 60 */	addi r1, r1, 0x60
/* 8078A9B4  4E 80 00 20 */	blr 
