lbl_80208670:
/* 80208670  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80208674  7C 08 02 A6 */	mflr r0
/* 80208678  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020867C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80208680  7C 7F 1B 78 */	mr r31, r3
/* 80208684  80 63 00 54 */	lwz r3, 0x54(r3)
/* 80208688  28 03 00 00 */	cmplwi r3, 0
/* 8020868C  41 82 00 68 */	beq lbl_802086F4
/* 80208690  48 04 D1 99 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80208694  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80208698  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8020869C  41 82 00 58 */	beq lbl_802086F4
/* 802086A0  A8 1F 04 A0 */	lha r0, 0x4a0(r31)
/* 802086A4  2C 00 00 00 */	cmpwi r0, 0
/* 802086A8  40 82 00 0C */	bne lbl_802086B4
/* 802086AC  38 00 00 1E */	li r0, 0x1e
/* 802086B0  B0 1F 04 A0 */	sth r0, 0x4a0(r31)
lbl_802086B4:
/* 802086B4  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 802086B8  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 802086BC  48 04 D1 15 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802086C0  38 00 00 00 */	li r0, 0
/* 802086C4  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 802086C8  B0 03 00 16 */	sth r0, 0x16(r3)
/* 802086CC  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 802086D0  48 04 D1 59 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802086D4  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 802086D8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802086DC  40 82 00 18 */	bne lbl_802086F4
/* 802086E0  7F E3 FB 78 */	mr r3, r31
/* 802086E4  38 80 00 0E */	li r4, 0xe
/* 802086E8  48 00 22 65 */	bl hide_button__14dMeterButton_cFUc
/* 802086EC  38 00 00 00 */	li r0, 0
/* 802086F0  98 1F 04 CE */	stb r0, 0x4ce(r31)
lbl_802086F4:
/* 802086F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802086F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802086FC  7C 08 03 A6 */	mtlr r0
/* 80208700  38 21 00 10 */	addi r1, r1, 0x10
/* 80208704  4E 80 00 20 */	blr 
