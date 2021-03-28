lbl_80A6F800:
/* 80A6F800  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80A6F804  7C 08 02 A6 */	mflr r0
/* 80A6F808  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A6F80C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80A6F810  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80A6F814  39 61 00 60 */	addi r11, r1, 0x60
/* 80A6F818  4B 8F 29 C4 */	b _savegpr_29
/* 80A6F81C  7C 7F 1B 78 */	mr r31, r3
/* 80A6F820  7C 80 23 78 */	mr r0, r4
/* 80A6F824  FF E0 08 90 */	fmr f31, f1
/* 80A6F828  7C BD 2B 78 */	mr r29, r5
/* 80A6F82C  3C 60 80 A7 */	lis r3, m__17daNpc_Lud_Param_c@ha
/* 80A6F830  3B C3 FD 7C */	addi r30, r3, m__17daNpc_Lud_Param_c@l
/* 80A6F834  38 A0 00 00 */	li r5, 0
/* 80A6F838  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80A6F83C  28 04 00 00 */	cmplwi r4, 0
/* 80A6F840  41 82 01 40 */	beq lbl_80A6F980
/* 80A6F844  38 61 00 18 */	addi r3, r1, 0x18
/* 80A6F848  7C 05 03 78 */	mr r5, r0
/* 80A6F84C  4B 7F 72 E8 */	b __mi__4cXyzCFRC3Vec
/* 80A6F850  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80A6F854  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80A6F858  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A6F85C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A6F860  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80A6F864  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80A6F868  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80A6F86C  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80A6F870  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A6F874  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80A6F878  38 61 00 0C */	addi r3, r1, 0xc
/* 80A6F87C  4B 8D 78 BC */	b PSVECSquareMag
/* 80A6F880  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80A6F884  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A6F888  40 81 00 58 */	ble lbl_80A6F8E0
/* 80A6F88C  FC 00 08 34 */	frsqrte f0, f1
/* 80A6F890  C8 9E 01 08 */	lfd f4, 0x108(r30)
/* 80A6F894  FC 44 00 32 */	fmul f2, f4, f0
/* 80A6F898  C8 7E 01 10 */	lfd f3, 0x110(r30)
/* 80A6F89C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A6F8A0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A6F8A4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A6F8A8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A6F8AC  FC 44 00 32 */	fmul f2, f4, f0
/* 80A6F8B0  FC 00 00 32 */	fmul f0, f0, f0
/* 80A6F8B4  FC 01 00 32 */	fmul f0, f1, f0
/* 80A6F8B8  FC 03 00 28 */	fsub f0, f3, f0
/* 80A6F8BC  FC 02 00 32 */	fmul f0, f2, f0
/* 80A6F8C0  FC 44 00 32 */	fmul f2, f4, f0
/* 80A6F8C4  FC 00 00 32 */	fmul f0, f0, f0
/* 80A6F8C8  FC 01 00 32 */	fmul f0, f1, f0
/* 80A6F8CC  FC 03 00 28 */	fsub f0, f3, f0
/* 80A6F8D0  FC 02 00 32 */	fmul f0, f2, f0
/* 80A6F8D4  FC 41 00 32 */	fmul f2, f1, f0
/* 80A6F8D8  FC 40 10 18 */	frsp f2, f2
/* 80A6F8DC  48 00 00 90 */	b lbl_80A6F96C
lbl_80A6F8E0:
/* 80A6F8E0  C8 1E 01 18 */	lfd f0, 0x118(r30)
/* 80A6F8E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A6F8E8  40 80 00 10 */	bge lbl_80A6F8F8
/* 80A6F8EC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A6F8F0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80A6F8F4  48 00 00 78 */	b lbl_80A6F96C
lbl_80A6F8F8:
/* 80A6F8F8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A6F8FC  80 81 00 08 */	lwz r4, 8(r1)
/* 80A6F900  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A6F904  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A6F908  7C 03 00 00 */	cmpw r3, r0
/* 80A6F90C  41 82 00 14 */	beq lbl_80A6F920
/* 80A6F910  40 80 00 40 */	bge lbl_80A6F950
/* 80A6F914  2C 03 00 00 */	cmpwi r3, 0
/* 80A6F918  41 82 00 20 */	beq lbl_80A6F938
/* 80A6F91C  48 00 00 34 */	b lbl_80A6F950
lbl_80A6F920:
/* 80A6F920  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A6F924  41 82 00 0C */	beq lbl_80A6F930
/* 80A6F928  38 00 00 01 */	li r0, 1
/* 80A6F92C  48 00 00 28 */	b lbl_80A6F954
lbl_80A6F930:
/* 80A6F930  38 00 00 02 */	li r0, 2
/* 80A6F934  48 00 00 20 */	b lbl_80A6F954
lbl_80A6F938:
/* 80A6F938  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A6F93C  41 82 00 0C */	beq lbl_80A6F948
/* 80A6F940  38 00 00 05 */	li r0, 5
/* 80A6F944  48 00 00 10 */	b lbl_80A6F954
lbl_80A6F948:
/* 80A6F948  38 00 00 03 */	li r0, 3
/* 80A6F94C  48 00 00 08 */	b lbl_80A6F954
lbl_80A6F950:
/* 80A6F950  38 00 00 04 */	li r0, 4
lbl_80A6F954:
/* 80A6F954  2C 00 00 01 */	cmpwi r0, 1
/* 80A6F958  40 82 00 10 */	bne lbl_80A6F968
/* 80A6F95C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A6F960  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80A6F964  48 00 00 08 */	b lbl_80A6F96C
lbl_80A6F968:
/* 80A6F968  FC 40 08 90 */	fmr f2, f1
lbl_80A6F96C:
/* 80A6F96C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80A6F970  4B 7F 7D 04 */	b cM_atan2s__Fff
/* 80A6F974  7C 03 00 D0 */	neg r0, r3
/* 80A6F978  7C 05 07 34 */	extsh r5, r0
/* 80A6F97C  7C A5 EA 14 */	add r5, r5, r29
lbl_80A6F980:
/* 80A6F980  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80A6F984  7C A5 02 14 */	add r5, r5, r0
/* 80A6F988  C0 7E 00 D4 */	lfs f3, 0xd4(r30)
/* 80A6F98C  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80A6F990  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80A6F994  C8 5E 01 00 */	lfd f2, 0x100(r30)
/* 80A6F998  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A6F99C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A6F9A0  3C 60 43 30 */	lis r3, 0x4330
/* 80A6F9A4  90 61 00 30 */	stw r3, 0x30(r1)
/* 80A6F9A8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80A6F9AC  EC 20 10 28 */	fsubs f1, f0, f2
/* 80A6F9B0  EC 03 20 28 */	fsubs f0, f3, f4
/* 80A6F9B4  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A6F9B8  7C A0 07 34 */	extsh r0, r5
/* 80A6F9BC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A6F9C0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A6F9C4  90 61 00 38 */	stw r3, 0x38(r1)
/* 80A6F9C8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80A6F9CC  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A6F9D0  EC 00 01 32 */	fmuls f0, f0, f4
/* 80A6F9D4  EC 01 00 2A */	fadds f0, f1, f0
/* 80A6F9D8  FC 00 00 1E */	fctiwz f0, f0
/* 80A6F9DC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80A6F9E0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A6F9E4  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80A6F9E8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80A6F9EC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80A6F9F0  39 61 00 60 */	addi r11, r1, 0x60
/* 80A6F9F4  4B 8F 28 34 */	b _restgpr_29
/* 80A6F9F8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A6F9FC  7C 08 03 A6 */	mtlr r0
/* 80A6FA00  38 21 00 70 */	addi r1, r1, 0x70
/* 80A6FA04  4E 80 00 20 */	blr 
