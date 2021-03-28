lbl_802089A0:
/* 802089A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802089A4  7C 08 02 A6 */	mflr r0
/* 802089A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802089AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802089B0  7C 7F 1B 78 */	mr r31, r3
/* 802089B4  80 63 00 5C */	lwz r3, 0x5c(r3)
/* 802089B8  28 03 00 00 */	cmplwi r3, 0
/* 802089BC  41 82 00 68 */	beq lbl_80208A24
/* 802089C0  48 04 CE 69 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802089C4  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 802089C8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802089CC  41 82 00 58 */	beq lbl_80208A24
/* 802089D0  A8 1F 04 A4 */	lha r0, 0x4a4(r31)
/* 802089D4  2C 00 00 00 */	cmpwi r0, 0
/* 802089D8  40 82 00 0C */	bne lbl_802089E4
/* 802089DC  38 00 00 1E */	li r0, 0x1e
/* 802089E0  B0 1F 04 A4 */	sth r0, 0x4a4(r31)
lbl_802089E4:
/* 802089E4  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 802089E8  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 802089EC  48 04 CD E5 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802089F0  38 00 00 00 */	li r0, 0
/* 802089F4  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 802089F8  B0 03 00 16 */	sth r0, 0x16(r3)
/* 802089FC  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 80208A00  48 04 CE 29 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80208A04  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80208A08  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80208A0C  40 82 00 18 */	bne lbl_80208A24
/* 80208A10  7F E3 FB 78 */	mr r3, r31
/* 80208A14  38 80 00 10 */	li r4, 0x10
/* 80208A18  48 00 1F 35 */	bl hide_button__14dMeterButton_cFUc
/* 80208A1C  38 00 00 00 */	li r0, 0
/* 80208A20  98 1F 04 D0 */	stb r0, 0x4d0(r31)
lbl_80208A24:
/* 80208A24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80208A28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80208A2C  7C 08 03 A6 */	mtlr r0
/* 80208A30  38 21 00 10 */	addi r1, r1, 0x10
/* 80208A34  4E 80 00 20 */	blr 
