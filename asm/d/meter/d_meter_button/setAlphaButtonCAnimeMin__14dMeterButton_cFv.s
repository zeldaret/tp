lbl_80207748:
/* 80207748  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020774C  7C 08 02 A6 */	mflr r0
/* 80207750  90 01 00 14 */	stw r0, 0x14(r1)
/* 80207754  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80207758  7C 7F 1B 78 */	mr r31, r3
/* 8020775C  80 63 00 30 */	lwz r3, 0x30(r3)
/* 80207760  48 04 E0 C9 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80207764  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80207768  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8020776C  41 82 00 58 */	beq lbl_802077C4
/* 80207770  A8 1F 04 8E */	lha r0, 0x48e(r31)
/* 80207774  2C 00 00 00 */	cmpwi r0, 0
/* 80207778  40 82 00 0C */	bne lbl_80207784
/* 8020777C  38 00 00 1E */	li r0, 0x1e
/* 80207780  B0 1F 04 8E */	sth r0, 0x48e(r31)
lbl_80207784:
/* 80207784  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80207788  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 8020778C  48 04 E0 45 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80207790  38 00 00 00 */	li r0, 0
/* 80207794  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80207798  B0 03 00 16 */	sth r0, 0x16(r3)
/* 8020779C  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 802077A0  48 04 E0 89 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802077A4  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 802077A8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802077AC  40 82 00 18 */	bne lbl_802077C4
/* 802077B0  7F E3 FB 78 */	mr r3, r31
/* 802077B4  38 80 00 05 */	li r4, 5
/* 802077B8  48 00 31 95 */	bl hide_button__14dMeterButton_cFUc
/* 802077BC  38 00 00 00 */	li r0, 0
/* 802077C0  98 1F 04 C5 */	stb r0, 0x4c5(r31)
lbl_802077C4:
/* 802077C4  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 802077C8  2C 00 00 00 */	cmpwi r0, 0
/* 802077CC  41 82 00 0C */	beq lbl_802077D8
/* 802077D0  38 00 00 00 */	li r0, 0
/* 802077D4  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
lbl_802077D8:
/* 802077D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802077DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802077E0  7C 08 03 A6 */	mtlr r0
/* 802077E4  38 21 00 10 */	addi r1, r1, 0x10
/* 802077E8  4E 80 00 20 */	blr 
