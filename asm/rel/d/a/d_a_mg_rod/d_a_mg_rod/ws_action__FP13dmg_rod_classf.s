lbl_804ADDD4:
/* 804ADDD4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804ADDD8  7C 08 02 A6 */	mflr r0
/* 804ADDDC  90 01 00 44 */	stw r0, 0x44(r1)
/* 804ADDE0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804ADDE4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804ADDE8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804ADDEC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804ADDF0  7C 7E 1B 78 */	mr r30, r3
/* 804ADDF4  FF E0 08 90 */	fmr f31, f1
/* 804ADDF8  3C 60 80 4C */	lis r3, lit_3879@ha /* 0x804BB534@ha */
/* 804ADDFC  3B E3 B5 34 */	addi r31, r3, lit_3879@l /* 0x804BB534@l */
/* 804ADE00  80 1E 14 F0 */	lwz r0, 0x14f0(r30)
/* 804ADE04  2C 00 00 00 */	cmpwi r0, 0
/* 804ADE08  41 82 00 9C */	beq lbl_804ADEA4
/* 804ADE0C  C0 1E 14 F4 */	lfs f0, 0x14f4(r30)
/* 804ADE10  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 804ADE14  A8 7E 05 78 */	lha r3, 0x578(r30)
/* 804ADE18  54 60 06 B7 */	rlwinm. r0, r3, 0, 0x1a, 0x1b
/* 804ADE1C  41 82 00 34 */	beq lbl_804ADE50
/* 804ADE20  1C 03 0B B8 */	mulli r0, r3, 0xbb8
/* 804ADE24  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804ADE28  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804ADE2C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804ADE30  7C 23 04 2E */	lfsx f1, r3, r0
/* 804ADE34  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804ADE38  EC 00 00 72 */	fmuls f0, f0, f1
/* 804ADE3C  FC 00 00 1E */	fctiwz f0, f0
/* 804ADE40  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804ADE44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ADE48  B0 1E 0F FE */	sth r0, 0xffe(r30)
/* 804ADE4C  48 00 00 0C */	b lbl_804ADE58
lbl_804ADE50:
/* 804ADE50  38 00 00 00 */	li r0, 0
/* 804ADE54  B0 1E 0F FE */	sth r0, 0xffe(r30)
lbl_804ADE58:
/* 804ADE58  38 00 00 04 */	li r0, 4
/* 804ADE5C  98 1E 10 09 */	stb r0, 0x1009(r30)
/* 804ADE60  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 804ADE64  4B DB 9A F1 */	bl cM_rndF__Ff
/* 804ADE68  C0 1F 01 64 */	lfs f0, 0x164(r31)
/* 804ADE6C  EC 00 08 2A */	fadds f0, f0, f1
/* 804ADE70  FC 00 00 1E */	fctiwz f0, f0
/* 804ADE74  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804ADE78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ADE7C  B0 1E 10 20 */	sth r0, 0x1020(r30)
/* 804ADE80  C0 3F 01 30 */	lfs f1, 0x130(r31)
/* 804ADE84  4B DB 9A D1 */	bl cM_rndF__Ff
/* 804ADE88  C0 1F 01 68 */	lfs f0, 0x168(r31)
/* 804ADE8C  EC 00 08 2A */	fadds f0, f0, f1
/* 804ADE90  FC 00 00 50 */	fneg f0, f0
/* 804ADE94  FC 00 00 1E */	fctiwz f0, f0
/* 804ADE98  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804ADE9C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804ADEA0  B0 1E 10 22 */	sth r0, 0x1022(r30)
lbl_804ADEA4:
/* 804ADEA4  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 804ADEA8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804ADEAC  4C 41 13 82 */	cror 2, 1, 2
/* 804ADEB0  40 82 00 90 */	bne lbl_804ADF40
/* 804ADEB4  88 1E 10 0E */	lbz r0, 0x100e(r30)
/* 804ADEB8  7C 00 07 75 */	extsb. r0, r0
/* 804ADEBC  40 82 00 84 */	bne lbl_804ADF40
/* 804ADEC0  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 804ADEC4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 804ADEC8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 804ADECC  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 804ADED0  4B DB 9A 85 */	bl cM_rndF__Ff
/* 804ADED4  C0 5F 01 6C */	lfs f2, 0x16c(r31)
/* 804ADED8  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 804ADEDC  EC 02 00 32 */	fmuls f0, f2, f0
/* 804ADEE0  EC 00 08 2A */	fadds f0, f0, f1
/* 804ADEE4  FC 00 00 1E */	fctiwz f0, f0
/* 804ADEE8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804ADEEC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804ADEF0  B0 1E 10 20 */	sth r0, 0x1020(r30)
/* 804ADEF4  C0 3F 01 30 */	lfs f1, 0x130(r31)
/* 804ADEF8  4B DB 9A 5D */	bl cM_rndF__Ff
/* 804ADEFC  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804ADF00  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 804ADF04  EC 02 00 32 */	fmuls f0, f2, f0
/* 804ADF08  EC 00 08 2A */	fadds f0, f0, f1
/* 804ADF0C  FC 00 00 50 */	fneg f0, f0
/* 804ADF10  FC 00 00 1E */	fctiwz f0, f0
/* 804ADF14  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804ADF18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ADF1C  B0 1E 10 22 */	sth r0, 0x1022(r30)
/* 804ADF20  38 00 00 00 */	li r0, 0
/* 804ADF24  B0 1E 0F FE */	sth r0, 0xffe(r30)
/* 804ADF28  C0 3E 0F 5C */	lfs f1, 0xf5c(r30)
/* 804ADF2C  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 804ADF30  EC 01 00 28 */	fsubs f0, f1, f0
/* 804ADF34  D0 1E 0F 5C */	stfs f0, 0xf5c(r30)
/* 804ADF38  38 00 00 03 */	li r0, 3
/* 804ADF3C  98 1E 10 0E */	stb r0, 0x100e(r30)
lbl_804ADF40:
/* 804ADF40  C0 3E 05 90 */	lfs f1, 0x590(r30)
/* 804ADF44  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804ADF48  EC 21 00 28 */	fsubs f1, f1, f0
/* 804ADF4C  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 804ADF50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804ADF54  4C 40 13 82 */	cror 2, 0, 2
/* 804ADF58  40 82 00 58 */	bne lbl_804ADFB0
/* 804ADF5C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 804ADF60  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 804ADF64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804ADF68  40 81 00 48 */	ble lbl_804ADFB0
/* 804ADF6C  C0 1F 01 70 */	lfs f0, 0x170(r31)
/* 804ADF70  EC 20 00 72 */	fmuls f1, f0, f1
/* 804ADF74  4B EB 41 39 */	bl __cvt_fp2unsigned
/* 804ADF78  7C 65 1B 78 */	mr r5, r3
/* 804ADF7C  28 05 00 7F */	cmplwi r5, 0x7f
/* 804ADF80  40 81 00 08 */	ble lbl_804ADF88
/* 804ADF84  38 A0 00 7F */	li r5, 0x7f
lbl_804ADF88:
/* 804ADF88  3C 60 00 02 */	lis r3, 0x0002 /* 0x000200C6@ha */
/* 804ADF8C  38 03 00 C6 */	addi r0, r3, 0x00C6 /* 0x000200C6@l */
/* 804ADF90  90 01 00 08 */	stw r0, 8(r1)
/* 804ADF94  38 7E 10 B4 */	addi r3, r30, 0x10b4
/* 804ADF98  38 81 00 08 */	addi r4, r1, 8
/* 804ADF9C  38 C0 FF FF */	li r6, -1
/* 804ADFA0  81 9E 10 B4 */	lwz r12, 0x10b4(r30)
/* 804ADFA4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 804ADFA8  7D 89 03 A6 */	mtctr r12
/* 804ADFAC  4E 80 04 21 */	bctrl 
lbl_804ADFB0:
/* 804ADFB0  C3 FE 05 2C */	lfs f31, 0x52c(r30)
/* 804ADFB4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 804ADFB8  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 804ADFBC  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 804ADFC0  4B DC 1A C1 */	bl cLib_addCalc0__FPfff
/* 804ADFC4  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 804ADFC8  C0 1F 01 54 */	lfs f0, 0x154(r31)
/* 804ADFCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804ADFD0  40 80 00 40 */	bge lbl_804AE010
/* 804ADFD4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804ADFD8  4C 41 13 82 */	cror 2, 1, 2
/* 804ADFDC  40 82 00 34 */	bne lbl_804AE010
/* 804ADFE0  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804ADFE4  4B DB 99 71 */	bl cM_rndF__Ff
/* 804ADFE8  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 804ADFEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804ADFF0  40 80 00 10 */	bge lbl_804AE000
/* 804ADFF4  38 00 D8 F0 */	li r0, -10000
/* 804ADFF8  B0 1E 0F FE */	sth r0, 0xffe(r30)
/* 804ADFFC  48 00 00 0C */	b lbl_804AE008
lbl_804AE000:
/* 804AE000  38 00 27 10 */	li r0, 0x2710
/* 804AE004  B0 1E 0F FE */	sth r0, 0xffe(r30)
lbl_804AE008:
/* 804AE008  38 00 00 0A */	li r0, 0xa
/* 804AE00C  98 1E 10 09 */	stb r0, 0x1009(r30)
lbl_804AE010:
/* 804AE010  38 7E 0F FC */	addi r3, r30, 0xffc
/* 804AE014  A8 9E 0F FE */	lha r4, 0xffe(r30)
/* 804AE018  38 A0 00 04 */	li r5, 4
/* 804AE01C  38 C0 17 70 */	li r6, 0x1770
/* 804AE020  4B DC 25 E9 */	bl cLib_addCalcAngleS2__FPssss
/* 804AE024  38 7E 10 00 */	addi r3, r30, 0x1000
/* 804AE028  38 80 00 00 */	li r4, 0
/* 804AE02C  38 A0 00 08 */	li r5, 8
/* 804AE030  38 C0 03 E8 */	li r6, 0x3e8
/* 804AE034  4B DC 25 D5 */	bl cLib_addCalcAngleS2__FPssss
/* 804AE038  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 804AE03C  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 804AE040  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AE044  40 81 00 08 */	ble lbl_804AE04C
/* 804AE048  D0 3E 11 88 */	stfs f1, 0x1188(r30)
lbl_804AE04C:
/* 804AE04C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804AE050  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804AE054  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804AE058  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804AE05C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804AE060  7C 08 03 A6 */	mtlr r0
/* 804AE064  38 21 00 40 */	addi r1, r1, 0x40
/* 804AE068  4E 80 00 20 */	blr 
