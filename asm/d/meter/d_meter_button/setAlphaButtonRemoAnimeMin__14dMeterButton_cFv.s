lbl_80208028:
/* 80208028  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020802C  7C 08 02 A6 */	mflr r0
/* 80208030  90 01 00 14 */	stw r0, 0x14(r1)
/* 80208034  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80208038  7C 7F 1B 78 */	mr r31, r3
/* 8020803C  80 63 00 44 */	lwz r3, 0x44(r3)
/* 80208040  28 03 00 00 */	cmplwi r3, 0
/* 80208044  41 82 00 68 */	beq lbl_802080AC
/* 80208048  48 04 D7 E1 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 8020804C  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80208050  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80208054  41 82 00 58 */	beq lbl_802080AC
/* 80208058  A8 1F 04 98 */	lha r0, 0x498(r31)
/* 8020805C  2C 00 00 00 */	cmpwi r0, 0
/* 80208060  40 82 00 0C */	bne lbl_8020806C
/* 80208064  38 00 00 1E */	li r0, 0x1e
/* 80208068  B0 1F 04 98 */	sth r0, 0x498(r31)
lbl_8020806C:
/* 8020806C  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 80208070  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 80208074  48 04 D7 5D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80208078  38 00 00 00 */	li r0, 0
/* 8020807C  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 80208080  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80208084  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 80208088  48 04 D7 A1 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 8020808C  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80208090  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80208094  40 82 00 18 */	bne lbl_802080AC
/* 80208098  7F E3 FB 78 */	mr r3, r31
/* 8020809C  38 80 00 0A */	li r4, 0xa
/* 802080A0  48 00 28 AD */	bl hide_button__14dMeterButton_cFUc
/* 802080A4  38 00 00 00 */	li r0, 0
/* 802080A8  98 1F 04 CA */	stb r0, 0x4ca(r31)
lbl_802080AC:
/* 802080AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802080B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802080B4  7C 08 03 A6 */	mtlr r0
/* 802080B8  38 21 00 10 */	addi r1, r1, 0x10
/* 802080BC  4E 80 00 20 */	blr 
