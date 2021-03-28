lbl_80208D84:
/* 80208D84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80208D88  7C 08 02 A6 */	mflr r0
/* 80208D8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80208D90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80208D94  7C 7F 1B 78 */	mr r31, r3
/* 80208D98  80 63 00 68 */	lwz r3, 0x68(r3)
/* 80208D9C  28 03 00 00 */	cmplwi r3, 0
/* 80208DA0  41 82 00 68 */	beq lbl_80208E08
/* 80208DA4  48 04 CA 85 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80208DA8  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80208DAC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80208DB0  41 82 00 58 */	beq lbl_80208E08
/* 80208DB4  A8 1F 04 AA */	lha r0, 0x4aa(r31)
/* 80208DB8  2C 00 00 00 */	cmpwi r0, 0
/* 80208DBC  40 82 00 0C */	bne lbl_80208DC8
/* 80208DC0  38 00 00 1E */	li r0, 0x1e
/* 80208DC4  B0 1F 04 AA */	sth r0, 0x4aa(r31)
lbl_80208DC8:
/* 80208DC8  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 80208DCC  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 80208DD0  48 04 CA 01 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80208DD4  38 00 00 00 */	li r0, 0
/* 80208DD8  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 80208DDC  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80208DE0  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 80208DE4  48 04 CA 45 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80208DE8  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80208DEC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80208DF0  40 82 00 18 */	bne lbl_80208E08
/* 80208DF4  7F E3 FB 78 */	mr r3, r31
/* 80208DF8  38 80 00 13 */	li r4, 0x13
/* 80208DFC  48 00 1B 51 */	bl hide_button__14dMeterButton_cFUc
/* 80208E00  38 00 00 00 */	li r0, 0
/* 80208E04  98 1F 04 D3 */	stb r0, 0x4d3(r31)
lbl_80208E08:
/* 80208E08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80208E0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80208E10  7C 08 03 A6 */	mtlr r0
/* 80208E14  38 21 00 10 */	addi r1, r1, 0x10
/* 80208E18  4E 80 00 20 */	blr 
