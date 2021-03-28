lbl_802090B4:
/* 802090B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802090B8  7C 08 02 A6 */	mflr r0
/* 802090BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802090C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802090C4  7C 7F 1B 78 */	mr r31, r3
/* 802090C8  80 63 00 70 */	lwz r3, 0x70(r3)
/* 802090CC  28 03 00 00 */	cmplwi r3, 0
/* 802090D0  41 82 00 68 */	beq lbl_80209138
/* 802090D4  48 04 C7 55 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802090D8  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 802090DC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802090E0  41 82 00 58 */	beq lbl_80209138
/* 802090E4  A8 1F 04 AE */	lha r0, 0x4ae(r31)
/* 802090E8  2C 00 00 00 */	cmpwi r0, 0
/* 802090EC  40 82 00 0C */	bne lbl_802090F8
/* 802090F0  38 00 00 1E */	li r0, 0x1e
/* 802090F4  B0 1F 04 AE */	sth r0, 0x4ae(r31)
lbl_802090F8:
/* 802090F8  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802090FC  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 80209100  48 04 C6 D1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80209104  38 00 00 00 */	li r0, 0
/* 80209108  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 8020910C  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80209110  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 80209114  48 04 C7 15 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80209118  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 8020911C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80209120  40 82 00 18 */	bne lbl_80209138
/* 80209124  7F E3 FB 78 */	mr r3, r31
/* 80209128  38 80 00 15 */	li r4, 0x15
/* 8020912C  48 00 18 21 */	bl hide_button__14dMeterButton_cFUc
/* 80209130  38 00 00 00 */	li r0, 0
/* 80209134  98 1F 04 D5 */	stb r0, 0x4d5(r31)
lbl_80209138:
/* 80209138  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020913C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80209140  7C 08 03 A6 */	mtlr r0
/* 80209144  38 21 00 10 */	addi r1, r1, 0x10
/* 80209148  4E 80 00 20 */	blr 
