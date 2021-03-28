lbl_8052A838:
/* 8052A838  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8052A83C  7C 08 02 A6 */	mflr r0
/* 8052A840  90 01 00 54 */	stw r0, 0x54(r1)
/* 8052A844  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8052A848  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8052A84C  39 61 00 40 */	addi r11, r1, 0x40
/* 8052A850  4B E3 79 8C */	b _savegpr_29
/* 8052A854  7C 7F 1B 78 */	mr r31, r3
/* 8052A858  3C 60 80 53 */	lis r3, lit_3679@ha
/* 8052A85C  3B A3 61 68 */	addi r29, r3, lit_3679@l
/* 8052A860  3C 60 80 53 */	lis r3, s_bait_sub__FPvPv@ha
/* 8052A864  38 63 A3 80 */	addi r3, r3, s_bait_sub__FPvPv@l
/* 8052A868  7F E4 FB 78 */	mr r4, r31
/* 8052A86C  4B AF 6A CC */	b fpcEx_Search__FPFPvPv_PvPv
/* 8052A870  7C 7E 1B 79 */	or. r30, r3, r3
/* 8052A874  41 82 01 58 */	beq lbl_8052A9CC
/* 8052A878  41 82 00 0C */	beq lbl_8052A884
/* 8052A87C  80 1E 00 04 */	lwz r0, 4(r30)
/* 8052A880  48 00 00 08 */	b lbl_8052A888
lbl_8052A884:
/* 8052A884  38 00 FF FF */	li r0, -1
lbl_8052A888:
/* 8052A888  90 1F 06 48 */	stw r0, 0x648(r31)
/* 8052A88C  3C 60 80 53 */	lis r3, s_other_bait_sub__FPvPv@ha
/* 8052A890  38 63 A7 BC */	addi r3, r3, s_other_bait_sub__FPvPv@l
/* 8052A894  7F E4 FB 78 */	mr r4, r31
/* 8052A898  4B AF 6A A0 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8052A89C  28 03 00 00 */	cmplwi r3, 0
/* 8052A8A0  40 82 01 2C */	bne lbl_8052A9CC
/* 8052A8A4  C3 FF 05 EC */	lfs f31, 0x5ec(r31)
/* 8052A8A8  38 61 00 0C */	addi r3, r1, 0xc
/* 8052A8AC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8052A8B0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8052A8B4  4B D3 C2 80 */	b __mi__4cXyzCFRC3Vec
/* 8052A8B8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8052A8BC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8052A8C0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8052A8C4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8052A8C8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8052A8CC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8052A8D0  38 61 00 18 */	addi r3, r1, 0x18
/* 8052A8D4  4B E1 C8 64 */	b PSVECSquareMag
/* 8052A8D8  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 8052A8DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052A8E0  40 81 00 58 */	ble lbl_8052A938
/* 8052A8E4  FC 00 08 34 */	frsqrte f0, f1
/* 8052A8E8  C8 9D 00 30 */	lfd f4, 0x30(r29)
/* 8052A8EC  FC 44 00 32 */	fmul f2, f4, f0
/* 8052A8F0  C8 7D 00 38 */	lfd f3, 0x38(r29)
/* 8052A8F4  FC 00 00 32 */	fmul f0, f0, f0
/* 8052A8F8  FC 01 00 32 */	fmul f0, f1, f0
/* 8052A8FC  FC 03 00 28 */	fsub f0, f3, f0
/* 8052A900  FC 02 00 32 */	fmul f0, f2, f0
/* 8052A904  FC 44 00 32 */	fmul f2, f4, f0
/* 8052A908  FC 00 00 32 */	fmul f0, f0, f0
/* 8052A90C  FC 01 00 32 */	fmul f0, f1, f0
/* 8052A910  FC 03 00 28 */	fsub f0, f3, f0
/* 8052A914  FC 02 00 32 */	fmul f0, f2, f0
/* 8052A918  FC 44 00 32 */	fmul f2, f4, f0
/* 8052A91C  FC 00 00 32 */	fmul f0, f0, f0
/* 8052A920  FC 01 00 32 */	fmul f0, f1, f0
/* 8052A924  FC 03 00 28 */	fsub f0, f3, f0
/* 8052A928  FC 02 00 32 */	fmul f0, f2, f0
/* 8052A92C  FC 21 00 32 */	fmul f1, f1, f0
/* 8052A930  FC 20 08 18 */	frsp f1, f1
/* 8052A934  48 00 00 88 */	b lbl_8052A9BC
lbl_8052A938:
/* 8052A938  C8 1D 00 40 */	lfd f0, 0x40(r29)
/* 8052A93C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052A940  40 80 00 10 */	bge lbl_8052A950
/* 8052A944  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8052A948  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8052A94C  48 00 00 70 */	b lbl_8052A9BC
lbl_8052A950:
/* 8052A950  D0 21 00 08 */	stfs f1, 8(r1)
/* 8052A954  80 81 00 08 */	lwz r4, 8(r1)
/* 8052A958  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8052A95C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8052A960  7C 03 00 00 */	cmpw r3, r0
/* 8052A964  41 82 00 14 */	beq lbl_8052A978
/* 8052A968  40 80 00 40 */	bge lbl_8052A9A8
/* 8052A96C  2C 03 00 00 */	cmpwi r3, 0
/* 8052A970  41 82 00 20 */	beq lbl_8052A990
/* 8052A974  48 00 00 34 */	b lbl_8052A9A8
lbl_8052A978:
/* 8052A978  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052A97C  41 82 00 0C */	beq lbl_8052A988
/* 8052A980  38 00 00 01 */	li r0, 1
/* 8052A984  48 00 00 28 */	b lbl_8052A9AC
lbl_8052A988:
/* 8052A988  38 00 00 02 */	li r0, 2
/* 8052A98C  48 00 00 20 */	b lbl_8052A9AC
lbl_8052A990:
/* 8052A990  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052A994  41 82 00 0C */	beq lbl_8052A9A0
/* 8052A998  38 00 00 05 */	li r0, 5
/* 8052A99C  48 00 00 10 */	b lbl_8052A9AC
lbl_8052A9A0:
/* 8052A9A0  38 00 00 03 */	li r0, 3
/* 8052A9A4  48 00 00 08 */	b lbl_8052A9AC
lbl_8052A9A8:
/* 8052A9A8  38 00 00 04 */	li r0, 4
lbl_8052A9AC:
/* 8052A9AC  2C 00 00 01 */	cmpwi r0, 1
/* 8052A9B0  40 82 00 0C */	bne lbl_8052A9BC
/* 8052A9B4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8052A9B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8052A9BC:
/* 8052A9BC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8052A9C0  40 80 00 0C */	bge lbl_8052A9CC
/* 8052A9C4  80 7F 06 48 */	lwz r3, 0x648(r31)
/* 8052A9C8  48 00 00 08 */	b lbl_8052A9D0
lbl_8052A9CC:
/* 8052A9CC  38 60 FF FF */	li r3, -1
lbl_8052A9D0:
/* 8052A9D0  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8052A9D4  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8052A9D8  39 61 00 40 */	addi r11, r1, 0x40
/* 8052A9DC  4B E3 78 4C */	b _restgpr_29
/* 8052A9E0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8052A9E4  7C 08 03 A6 */	mtlr r0
/* 8052A9E8  38 21 00 50 */	addi r1, r1, 0x50
/* 8052A9EC  4E 80 00 20 */	blr 
