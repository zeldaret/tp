lbl_80ABCA40:
/* 80ABCA40  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80ABCA44  7C 08 02 A6 */	mflr r0
/* 80ABCA48  90 01 00 44 */	stw r0, 0x44(r1)
/* 80ABCA4C  39 61 00 40 */	addi r11, r1, 0x40
/* 80ABCA50  4B 8A 57 8C */	b _savegpr_29
/* 80ABCA54  7C 7E 1B 78 */	mr r30, r3
/* 80ABCA58  3C 80 80 AC */	lis r4, m__19daNpcRafrel_Param_c@ha
/* 80ABCA5C  3B E4 F9 E0 */	addi r31, r4, m__19daNpcRafrel_Param_c@l
/* 80ABCA60  C0 1F 03 80 */	lfs f0, 0x380(r31)
/* 80ABCA64  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80ABCA68  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80ABCA6C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80ABCA70  C0 1F 03 84 */	lfs f0, 0x384(r31)
/* 80ABCA74  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80ABCA78  A0 03 0E 10 */	lhz r0, 0xe10(r3)
/* 80ABCA7C  2C 00 00 02 */	cmpwi r0, 2
/* 80ABCA80  41 82 00 6C */	beq lbl_80ABCAEC
/* 80ABCA84  40 80 02 D4 */	bge lbl_80ABCD58
/* 80ABCA88  2C 00 00 00 */	cmpwi r0, 0
/* 80ABCA8C  41 82 00 0C */	beq lbl_80ABCA98
/* 80ABCA90  48 00 02 C8 */	b lbl_80ABCD58
/* 80ABCA94  48 00 02 C4 */	b lbl_80ABCD58
lbl_80ABCA98:
/* 80ABCA98  38 80 00 07 */	li r4, 7
/* 80ABCA9C  C0 3F 03 50 */	lfs f1, 0x350(r31)
/* 80ABCAA0  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80ABCAA4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABCAA8  7D 89 03 A6 */	mtctr r12
/* 80ABCAAC  4E 80 04 21 */	bctrl 
/* 80ABCAB0  7F C3 F3 78 */	mr r3, r30
/* 80ABCAB4  38 80 00 0F */	li r4, 0xf
/* 80ABCAB8  C0 3F 03 50 */	lfs f1, 0x350(r31)
/* 80ABCABC  38 A0 00 00 */	li r5, 0
/* 80ABCAC0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80ABCAC4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ABCAC8  7D 89 03 A6 */	mtctr r12
/* 80ABCACC  4E 80 04 21 */	bctrl 
/* 80ABCAD0  38 00 00 00 */	li r0, 0
/* 80ABCAD4  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 80ABCAD8  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80ABCADC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80ABCAE0  38 00 00 02 */	li r0, 2
/* 80ABCAE4  B0 1E 0E 10 */	sth r0, 0xe10(r30)
/* 80ABCAE8  48 00 02 70 */	b lbl_80ABCD58
lbl_80ABCAEC:
/* 80ABCAEC  A8 1E 09 DA */	lha r0, 0x9da(r30)
/* 80ABCAF0  2C 00 00 00 */	cmpwi r0, 0
/* 80ABCAF4  40 81 02 64 */	ble lbl_80ABCD58
/* 80ABCAF8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80ABCAFC  38 81 00 0C */	addi r4, r1, 0xc
/* 80ABCB00  4B 7B 41 04 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80ABCB04  7C 7D 1B 78 */	mr r29, r3
/* 80ABCB08  80 1E 09 6C */	lwz r0, 0x96c(r30)
/* 80ABCB0C  2C 00 00 00 */	cmpwi r0, 0
/* 80ABCB10  40 82 00 D4 */	bne lbl_80ABCBE4
/* 80ABCB14  C0 5F 03 58 */	lfs f2, 0x358(r31)
/* 80ABCB18  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80ABCB1C  7C 00 E8 50 */	subf r0, r0, r29
/* 80ABCB20  7C 00 07 34 */	extsh r0, r0
/* 80ABCB24  C8 3F 03 70 */	lfd f1, 0x370(r31)
/* 80ABCB28  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80ABCB2C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80ABCB30  3C 00 43 30 */	lis r0, 0x4330
/* 80ABCB34  90 01 00 18 */	stw r0, 0x18(r1)
/* 80ABCB38  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80ABCB3C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80ABCB40  EC 02 00 32 */	fmuls f0, f2, f0
/* 80ABCB44  FC 00 02 10 */	fabs f0, f0
/* 80ABCB48  FC 00 00 18 */	frsp f0, f0
/* 80ABCB4C  FC 00 00 1E */	fctiwz f0, f0
/* 80ABCB50  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80ABCB54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ABCB58  2C 00 00 28 */	cmpwi r0, 0x28
/* 80ABCB5C  40 81 00 40 */	ble lbl_80ABCB9C
/* 80ABCB60  7F C3 F3 78 */	mr r3, r30
/* 80ABCB64  38 80 00 07 */	li r4, 7
/* 80ABCB68  C0 3F 03 50 */	lfs f1, 0x350(r31)
/* 80ABCB6C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80ABCB70  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABCB74  7D 89 03 A6 */	mtctr r12
/* 80ABCB78  4E 80 04 21 */	bctrl 
/* 80ABCB7C  7F C3 F3 78 */	mr r3, r30
/* 80ABCB80  38 80 00 12 */	li r4, 0x12
/* 80ABCB84  C0 3F 03 50 */	lfs f1, 0x350(r31)
/* 80ABCB88  38 A0 00 00 */	li r5, 0
/* 80ABCB8C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80ABCB90  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ABCB94  7D 89 03 A6 */	mtctr r12
/* 80ABCB98  4E 80 04 21 */	bctrl 
lbl_80ABCB9C:
/* 80ABCB9C  B3 BE 09 96 */	sth r29, 0x996(r30)
/* 80ABCBA0  38 00 00 00 */	li r0, 0
/* 80ABCBA4  90 1E 09 68 */	stw r0, 0x968(r30)
/* 80ABCBA8  A8 7E 08 F2 */	lha r3, 0x8f2(r30)
/* 80ABCBAC  A8 1E 09 96 */	lha r0, 0x996(r30)
/* 80ABCBB0  7C 03 00 00 */	cmpw r3, r0
/* 80ABCBB4  40 82 00 10 */	bne lbl_80ABCBC4
/* 80ABCBB8  80 7E 09 6C */	lwz r3, 0x96c(r30)
/* 80ABCBBC  38 03 00 01 */	addi r0, r3, 1
/* 80ABCBC0  90 1E 09 6C */	stw r0, 0x96c(r30)
lbl_80ABCBC4:
/* 80ABCBC4  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80ABCBC8  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80ABCBCC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80ABCBD0  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80ABCBD4  80 7E 09 6C */	lwz r3, 0x96c(r30)
/* 80ABCBD8  38 03 00 01 */	addi r0, r3, 1
/* 80ABCBDC  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 80ABCBE0  48 00 00 60 */	b lbl_80ABCC40
lbl_80ABCBE4:
/* 80ABCBE4  2C 00 00 01 */	cmpwi r0, 1
/* 80ABCBE8  40 82 00 58 */	bne lbl_80ABCC40
/* 80ABCBEC  7F C3 F3 78 */	mr r3, r30
/* 80ABCBF0  A8 9E 09 96 */	lha r4, 0x996(r30)
/* 80ABCBF4  C0 3F 03 5C */	lfs f1, 0x35c(r31)
/* 80ABCBF8  38 A0 00 00 */	li r5, 0
/* 80ABCBFC  4B 69 72 F8 */	b turn__8daNpcF_cFsfi
/* 80ABCC00  2C 03 00 00 */	cmpwi r3, 0
/* 80ABCC04  41 82 00 2C */	beq lbl_80ABCC30
/* 80ABCC08  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80ABCC0C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80ABCC10  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80ABCC14  B0 1E 08 F2 */	sth r0, 0x8f2(r30)
/* 80ABCC18  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80ABCC1C  B0 1E 08 F8 */	sth r0, 0x8f8(r30)
/* 80ABCC20  80 7E 09 6C */	lwz r3, 0x96c(r30)
/* 80ABCC24  38 03 00 01 */	addi r0, r3, 1
/* 80ABCC28  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 80ABCC2C  48 00 00 14 */	b lbl_80ABCC40
lbl_80ABCC30:
/* 80ABCC30  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80ABCC34  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80ABCC38  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80ABCC3C  B0 1E 08 F2 */	sth r0, 0x8f2(r30)
lbl_80ABCC40:
/* 80ABCC40  C0 1F 03 88 */	lfs f0, 0x388(r31)
/* 80ABCC44  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80ABCC48  80 1E 05 FC */	lwz r0, 0x5fc(r30)
/* 80ABCC4C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80ABCC50  40 82 01 00 */	bne lbl_80ABCD50
/* 80ABCC54  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80ABCC58  38 81 00 0C */	addi r4, r1, 0xc
/* 80ABCC5C  4B 88 A7 40 */	b PSVECSquareDistance
/* 80ABCC60  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80ABCC64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80ABCC68  40 81 00 58 */	ble lbl_80ABCCC0
/* 80ABCC6C  FC 00 08 34 */	frsqrte f0, f1
/* 80ABCC70  C8 9F 03 90 */	lfd f4, 0x390(r31)
/* 80ABCC74  FC 44 00 32 */	fmul f2, f4, f0
/* 80ABCC78  C8 7F 03 98 */	lfd f3, 0x398(r31)
/* 80ABCC7C  FC 00 00 32 */	fmul f0, f0, f0
/* 80ABCC80  FC 01 00 32 */	fmul f0, f1, f0
/* 80ABCC84  FC 03 00 28 */	fsub f0, f3, f0
/* 80ABCC88  FC 02 00 32 */	fmul f0, f2, f0
/* 80ABCC8C  FC 44 00 32 */	fmul f2, f4, f0
/* 80ABCC90  FC 00 00 32 */	fmul f0, f0, f0
/* 80ABCC94  FC 01 00 32 */	fmul f0, f1, f0
/* 80ABCC98  FC 03 00 28 */	fsub f0, f3, f0
/* 80ABCC9C  FC 02 00 32 */	fmul f0, f2, f0
/* 80ABCCA0  FC 44 00 32 */	fmul f2, f4, f0
/* 80ABCCA4  FC 00 00 32 */	fmul f0, f0, f0
/* 80ABCCA8  FC 01 00 32 */	fmul f0, f1, f0
/* 80ABCCAC  FC 03 00 28 */	fsub f0, f3, f0
/* 80ABCCB0  FC 02 00 32 */	fmul f0, f2, f0
/* 80ABCCB4  FC 21 00 32 */	fmul f1, f1, f0
/* 80ABCCB8  FC 20 08 18 */	frsp f1, f1
/* 80ABCCBC  48 00 00 88 */	b lbl_80ABCD44
lbl_80ABCCC0:
/* 80ABCCC0  C8 1F 03 A0 */	lfd f0, 0x3a0(r31)
/* 80ABCCC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80ABCCC8  40 80 00 10 */	bge lbl_80ABCCD8
/* 80ABCCCC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80ABCCD0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80ABCCD4  48 00 00 70 */	b lbl_80ABCD44
lbl_80ABCCD8:
/* 80ABCCD8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80ABCCDC  80 81 00 08 */	lwz r4, 8(r1)
/* 80ABCCE0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80ABCCE4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80ABCCE8  7C 03 00 00 */	cmpw r3, r0
/* 80ABCCEC  41 82 00 14 */	beq lbl_80ABCD00
/* 80ABCCF0  40 80 00 40 */	bge lbl_80ABCD30
/* 80ABCCF4  2C 03 00 00 */	cmpwi r3, 0
/* 80ABCCF8  41 82 00 20 */	beq lbl_80ABCD18
/* 80ABCCFC  48 00 00 34 */	b lbl_80ABCD30
lbl_80ABCD00:
/* 80ABCD00  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80ABCD04  41 82 00 0C */	beq lbl_80ABCD10
/* 80ABCD08  38 00 00 01 */	li r0, 1
/* 80ABCD0C  48 00 00 28 */	b lbl_80ABCD34
lbl_80ABCD10:
/* 80ABCD10  38 00 00 02 */	li r0, 2
/* 80ABCD14  48 00 00 20 */	b lbl_80ABCD34
lbl_80ABCD18:
/* 80ABCD18  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80ABCD1C  41 82 00 0C */	beq lbl_80ABCD28
/* 80ABCD20  38 00 00 05 */	li r0, 5
/* 80ABCD24  48 00 00 10 */	b lbl_80ABCD34
lbl_80ABCD28:
/* 80ABCD28  38 00 00 03 */	li r0, 3
/* 80ABCD2C  48 00 00 08 */	b lbl_80ABCD34
lbl_80ABCD30:
/* 80ABCD30  38 00 00 04 */	li r0, 4
lbl_80ABCD34:
/* 80ABCD34  2C 00 00 01 */	cmpwi r0, 1
/* 80ABCD38  40 82 00 0C */	bne lbl_80ABCD44
/* 80ABCD3C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80ABCD40  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80ABCD44:
/* 80ABCD44  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80ABCD48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80ABCD4C  40 80 00 0C */	bge lbl_80ABCD58
lbl_80ABCD50:
/* 80ABCD50  7F C3 F3 78 */	mr r3, r30
/* 80ABCD54  4B 55 CF 28 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80ABCD58:
/* 80ABCD58  38 60 00 01 */	li r3, 1
/* 80ABCD5C  39 61 00 40 */	addi r11, r1, 0x40
/* 80ABCD60  4B 8A 54 C8 */	b _restgpr_29
/* 80ABCD64  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80ABCD68  7C 08 03 A6 */	mtlr r0
/* 80ABCD6C  38 21 00 40 */	addi r1, r1, 0x40
/* 80ABCD70  4E 80 00 20 */	blr 
