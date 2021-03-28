lbl_804AD918:
/* 804AD918  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804AD91C  7C 08 02 A6 */	mflr r0
/* 804AD920  90 01 00 34 */	stw r0, 0x34(r1)
/* 804AD924  39 61 00 30 */	addi r11, r1, 0x30
/* 804AD928  4B EB 48 B0 */	b _savegpr_28
/* 804AD92C  7C 7E 1B 78 */	mr r30, r3
/* 804AD930  3C 60 80 4C */	lis r3, lit_3879@ha
/* 804AD934  3B E3 B5 34 */	addi r31, r3, lit_3879@l
/* 804AD938  80 1E 14 F0 */	lwz r0, 0x14f0(r30)
/* 804AD93C  2C 00 00 00 */	cmpwi r0, 0
/* 804AD940  41 82 00 68 */	beq lbl_804AD9A8
/* 804AD944  C0 1E 14 F4 */	lfs f0, 0x14f4(r30)
/* 804AD948  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 804AD94C  A8 7E 05 78 */	lha r3, 0x578(r30)
/* 804AD950  54 60 06 B7 */	rlwinm. r0, r3, 0, 0x1a, 0x1b
/* 804AD954  41 82 00 34 */	beq lbl_804AD988
/* 804AD958  1C 03 13 88 */	mulli r0, r3, 0x1388
/* 804AD95C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804AD960  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804AD964  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804AD968  7C 43 04 2E */	lfsx f2, r3, r0
/* 804AD96C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804AD970  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804AD974  FC 00 00 1E */	fctiwz f0, f0
/* 804AD978  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804AD97C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AD980  B0 1E 0F FE */	sth r0, 0xffe(r30)
/* 804AD984  48 00 00 0C */	b lbl_804AD990
lbl_804AD988:
/* 804AD988  38 00 00 00 */	li r0, 0
/* 804AD98C  B0 1E 0F FE */	sth r0, 0xffe(r30)
lbl_804AD990:
/* 804AD990  C0 5E 05 2C */	lfs f2, 0x52c(r30)
/* 804AD994  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 804AD998  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804AD99C  40 81 00 0C */	ble lbl_804AD9A8
/* 804AD9A0  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 804AD9A4  D0 1E 11 88 */	stfs f0, 0x1188(r30)
lbl_804AD9A8:
/* 804AD9A8  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 804AD9AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AD9B0  4C 41 13 82 */	cror 2, 1, 2
/* 804AD9B4  40 82 00 84 */	bne lbl_804ADA38
/* 804AD9B8  88 1E 10 0E */	lbz r0, 0x100e(r30)
/* 804AD9BC  7C 00 07 75 */	extsb. r0, r0
/* 804AD9C0  40 82 00 78 */	bne lbl_804ADA38
/* 804AD9C4  C0 1F 01 4C */	lfs f0, 0x14c(r31)
/* 804AD9C8  EC 00 00 72 */	fmuls f0, f0, f1
/* 804AD9CC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 804AD9D0  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 804AD9D4  EC 00 00 72 */	fmuls f0, f0, f1
/* 804AD9D8  FC 00 00 1E */	fctiwz f0, f0
/* 804AD9DC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804AD9E0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 804AD9E4  A8 1E 0F FE */	lha r0, 0xffe(r30)
/* 804AD9E8  2C 00 00 00 */	cmpwi r0, 0
/* 804AD9EC  40 81 00 10 */	ble lbl_804AD9FC
/* 804AD9F0  7C 03 00 D0 */	neg r0, r3
/* 804AD9F4  B0 1E 0F FE */	sth r0, 0xffe(r30)
/* 804AD9F8  48 00 00 08 */	b lbl_804ADA00
lbl_804AD9FC:
/* 804AD9FC  B0 7E 0F FE */	sth r3, 0xffe(r30)
lbl_804ADA00:
/* 804ADA00  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 804ADA04  EC 00 00 72 */	fmuls f0, f0, f1
/* 804ADA08  FC 00 00 1E */	fctiwz f0, f0
/* 804ADA0C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804ADA10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ADA14  B0 1E 10 00 */	sth r0, 0x1000(r30)
/* 804ADA18  C0 3E 0F 5C */	lfs f1, 0xf5c(r30)
/* 804ADA1C  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 804ADA20  EC 01 00 28 */	fsubs f0, f1, f0
/* 804ADA24  D0 1E 0F 5C */	stfs f0, 0xf5c(r30)
/* 804ADA28  38 00 00 1E */	li r0, 0x1e
/* 804ADA2C  98 1E 10 09 */	stb r0, 0x1009(r30)
/* 804ADA30  38 00 00 03 */	li r0, 3
/* 804ADA34  98 1E 10 0E */	stb r0, 0x100e(r30)
lbl_804ADA38:
/* 804ADA38  38 7E 0F FC */	addi r3, r30, 0xffc
/* 804ADA3C  A8 9E 0F FE */	lha r4, 0xffe(r30)
/* 804ADA40  38 A0 00 04 */	li r5, 4
/* 804ADA44  38 C0 2E E0 */	li r6, 0x2ee0
/* 804ADA48  4B DC 2B C0 */	b cLib_addCalcAngleS2__FPssss
/* 804ADA4C  3B A0 00 04 */	li r29, 4
/* 804ADA50  3B 80 01 F4 */	li r28, 0x1f4
/* 804ADA54  88 1E 10 A4 */	lbz r0, 0x10a4(r30)
/* 804ADA58  7C 00 07 75 */	extsb. r0, r0
/* 804ADA5C  41 82 00 08 */	beq lbl_804ADA64
/* 804ADA60  3B 80 13 88 */	li r28, 0x1388
lbl_804ADA64:
/* 804ADA64  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 804ADA68  C0 1F 01 54 */	lfs f0, 0x154(r31)
/* 804ADA6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804ADA70  40 81 00 44 */	ble lbl_804ADAB4
/* 804ADA74  3C 60 00 02 */	lis r3, 0x0002 /* 0x0002007B@ha */
/* 804ADA78  38 03 00 7B */	addi r0, r3, 0x007B /* 0x0002007B@l */
/* 804ADA7C  90 01 00 08 */	stw r0, 8(r1)
/* 804ADA80  38 7E 10 B4 */	addi r3, r30, 0x10b4
/* 804ADA84  38 81 00 08 */	addi r4, r1, 8
/* 804ADA88  38 A0 00 00 */	li r5, 0
/* 804ADA8C  38 C0 FF FF */	li r6, -1
/* 804ADA90  81 9E 10 B4 */	lwz r12, 0x10b4(r30)
/* 804ADA94  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 804ADA98  7D 89 03 A6 */	mtctr r12
/* 804ADA9C  4E 80 04 21 */	bctrl 
/* 804ADAA0  38 00 FE 0C */	li r0, -500
/* 804ADAA4  B0 1E 10 02 */	sth r0, 0x1002(r30)
/* 804ADAA8  3B A0 00 04 */	li r29, 4
/* 804ADAAC  3B 80 3A 98 */	li r28, 0x3a98
/* 804ADAB0  48 00 00 38 */	b lbl_804ADAE8
lbl_804ADAB4:
/* 804ADAB4  A8 1E 05 78 */	lha r0, 0x578(r30)
/* 804ADAB8  1C 00 05 DC */	mulli r0, r0, 0x5dc
/* 804ADABC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804ADAC0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804ADAC4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804ADAC8  7C 23 04 2E */	lfsx f1, r3, r0
/* 804ADACC  C0 1F 01 58 */	lfs f0, 0x158(r31)
/* 804ADAD0  EC 00 00 72 */	fmuls f0, f0, f1
/* 804ADAD4  FC 00 00 1E */	fctiwz f0, f0
/* 804ADAD8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804ADADC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 804ADAE0  38 03 F6 3C */	addi r0, r3, -2500
/* 804ADAE4  B0 1E 10 02 */	sth r0, 0x1002(r30)
lbl_804ADAE8:
/* 804ADAE8  38 7E 05 2C */	addi r3, r30, 0x52c
/* 804ADAEC  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 804ADAF0  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 804ADAF4  4B DC 1F 8C */	b cLib_addCalc0__FPfff
/* 804ADAF8  38 7E 10 00 */	addi r3, r30, 0x1000
/* 804ADAFC  A8 9E 10 02 */	lha r4, 0x1002(r30)
/* 804ADB00  7F A5 EB 78 */	mr r5, r29
/* 804ADB04  7F 86 E3 78 */	mr r6, r28
/* 804ADB08  4B DC 2B 00 */	b cLib_addCalcAngleS2__FPssss
/* 804ADB0C  A8 7E 10 00 */	lha r3, 0x1000(r30)
/* 804ADB10  7C 60 07 35 */	extsh. r0, r3
/* 804ADB14  40 81 00 24 */	ble lbl_804ADB38
/* 804ADB18  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 804ADB1C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804ADB20  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804ADB24  7C 23 04 2E */	lfsx f1, r3, r0
/* 804ADB28  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 804ADB2C  EC 00 00 72 */	fmuls f0, f0, f1
/* 804ADB30  D0 1E 05 94 */	stfs f0, 0x594(r30)
/* 804ADB34  48 00 00 0C */	b lbl_804ADB40
lbl_804ADB38:
/* 804ADB38  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804ADB3C  D0 1E 05 94 */	stfs f0, 0x594(r30)
lbl_804ADB40:
/* 804ADB40  39 61 00 30 */	addi r11, r1, 0x30
/* 804ADB44  4B EB 46 E0 */	b _restgpr_28
/* 804ADB48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804ADB4C  7C 08 03 A6 */	mtlr r0
/* 804ADB50  38 21 00 30 */	addi r1, r1, 0x30
/* 804ADB54  4E 80 00 20 */	blr 
