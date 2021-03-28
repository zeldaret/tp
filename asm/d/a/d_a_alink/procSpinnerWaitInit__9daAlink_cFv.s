lbl_8010DE78:
/* 8010DE78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010DE7C  7C 08 02 A6 */	mflr r0
/* 8010DE80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010DE84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010DE88  7C 7F 1B 78 */	mr r31, r3
/* 8010DE8C  38 80 00 A5 */	li r4, 0xa5
/* 8010DE90  4B FB 4F 15 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8010DE94  2C 03 00 00 */	cmpwi r3, 0
/* 8010DE98  40 82 00 0C */	bne lbl_8010DEA4
/* 8010DE9C  38 60 00 00 */	li r3, 0
/* 8010DEA0  48 00 00 98 */	b lbl_8010DF38
lbl_8010DEA4:
/* 8010DEA4  38 00 00 05 */	li r0, 5
/* 8010DEA8  98 1F 2F AA */	stb r0, 0x2faa(r31)
/* 8010DEAC  7F E3 FB 78 */	mr r3, r31
/* 8010DEB0  4B FA 38 C1 */	bl setBgCheckParam__9daAlink_cFv
/* 8010DEB4  7F E3 FB 78 */	mr r3, r31
/* 8010DEB8  38 80 00 F4 */	li r4, 0xf4
/* 8010DEBC  3C A0 80 39 */	lis r5, m__19daAlinkHIO_board_c0@ha
/* 8010DEC0  38 A5 E8 70 */	addi r5, r5, m__19daAlinkHIO_board_c0@l
/* 8010DEC4  C0 25 00 68 */	lfs f1, 0x68(r5)
/* 8010DEC8  C0 42 93 24 */	lfs f2, lit_7450(r2)
/* 8010DECC  4B F9 F1 15 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 8010DED0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8010DED4  D0 3F 04 FC */	stfs f1, 0x4fc(r31)
/* 8010DED8  7F E3 FB 78 */	mr r3, r31
/* 8010DEDC  C0 5F 05 34 */	lfs f2, 0x534(r31)
/* 8010DEE0  38 80 00 00 */	li r4, 0
/* 8010DEE4  4B FA D8 8D */	bl setSpecialGravity__9daAlink_cFffi
/* 8010DEE8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010DEEC  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8010DEF0  38 60 00 00 */	li r3, 0
/* 8010DEF4  B0 7F 30 0C */	sth r3, 0x300c(r31)
/* 8010DEF8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8010DEFC  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8010DF00  B0 7F 30 10 */	sth r3, 0x3010(r31)
/* 8010DF04  38 00 00 F4 */	li r0, 0xf4
/* 8010DF08  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 8010DF0C  C0 02 93 10 */	lfs f0, lit_7306(r2)
/* 8010DF10  D0 1F 33 B0 */	stfs f0, 0x33b0(r31)
/* 8010DF14  B0 7F 30 12 */	sth r3, 0x3012(r31)
/* 8010DF18  80 7F 28 18 */	lwz r3, 0x2818(r31)
/* 8010DF1C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8010DF20  D0 1F 37 A4 */	stfs f0, 0x37a4(r31)
/* 8010DF24  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8010DF28  D0 1F 37 A8 */	stfs f0, 0x37a8(r31)
/* 8010DF2C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8010DF30  D0 1F 37 AC */	stfs f0, 0x37ac(r31)
/* 8010DF34  38 60 00 01 */	li r3, 1
lbl_8010DF38:
/* 8010DF38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010DF3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010DF40  7C 08 03 A6 */	mtlr r0
/* 8010DF44  38 21 00 10 */	addi r1, r1, 0x10
/* 8010DF48  4E 80 00 20 */	blr 
