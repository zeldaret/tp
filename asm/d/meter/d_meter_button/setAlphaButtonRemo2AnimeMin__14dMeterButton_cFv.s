lbl_802081B4:
/* 802081B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802081B8  7C 08 02 A6 */	mflr r0
/* 802081BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802081C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802081C4  7C 7F 1B 78 */	mr r31, r3
/* 802081C8  80 63 00 48 */	lwz r3, 0x48(r3)
/* 802081CC  28 03 00 00 */	cmplwi r3, 0
/* 802081D0  41 82 00 68 */	beq lbl_80208238
/* 802081D4  48 04 D6 55 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802081D8  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 802081DC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802081E0  41 82 00 58 */	beq lbl_80208238
/* 802081E4  A8 1F 04 9A */	lha r0, 0x49a(r31)
/* 802081E8  2C 00 00 00 */	cmpwi r0, 0
/* 802081EC  40 82 00 0C */	bne lbl_802081F8
/* 802081F0  38 00 00 1E */	li r0, 0x1e
/* 802081F4  B0 1F 04 9A */	sth r0, 0x49a(r31)
lbl_802081F8:
/* 802081F8  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 802081FC  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 80208200  48 04 D5 D1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80208204  38 00 00 00 */	li r0, 0
/* 80208208  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 8020820C  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80208210  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 80208214  48 04 D6 15 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80208218  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 8020821C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80208220  40 82 00 18 */	bne lbl_80208238
/* 80208224  7F E3 FB 78 */	mr r3, r31
/* 80208228  38 80 00 0B */	li r4, 0xb
/* 8020822C  48 00 27 21 */	bl hide_button__14dMeterButton_cFUc
/* 80208230  38 00 00 00 */	li r0, 0
/* 80208234  98 1F 04 CB */	stb r0, 0x4cb(r31)
lbl_80208238:
/* 80208238  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020823C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80208240  7C 08 03 A6 */	mtlr r0
/* 80208244  38 21 00 10 */	addi r1, r1, 0x10
/* 80208248  4E 80 00 20 */	blr 
