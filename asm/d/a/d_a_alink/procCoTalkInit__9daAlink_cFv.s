lbl_80119D98:
/* 80119D98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80119D9C  7C 08 02 A6 */	mflr r0
/* 80119DA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80119DA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80119DA8  93 C1 00 08 */	stw r30, 8(r1)
/* 80119DAC  7C 7F 1B 78 */	mr r31, r3
/* 80119DB0  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 80119DB4  28 00 01 45 */	cmplwi r0, 0x145
/* 80119DB8  40 82 00 0C */	bne lbl_80119DC4
/* 80119DBC  38 60 00 00 */	li r3, 0
/* 80119DC0  48 00 01 8C */	b lbl_80119F4C
lbl_80119DC4:
/* 80119DC4  28 00 01 00 */	cmplwi r0, 0x100
/* 80119DC8  40 82 00 0C */	bne lbl_80119DD4
/* 80119DCC  3B C0 00 01 */	li r30, 1
/* 80119DD0  48 00 00 18 */	b lbl_80119DE8
lbl_80119DD4:
/* 80119DD4  28 00 01 01 */	cmplwi r0, 0x101
/* 80119DD8  40 82 00 0C */	bne lbl_80119DE4
/* 80119DDC  3B C0 00 02 */	li r30, 2
/* 80119DE0  48 00 00 08 */	b lbl_80119DE8
lbl_80119DE4:
/* 80119DE4  3B C0 00 00 */	li r30, 0
lbl_80119DE8:
/* 80119DE8  7F E3 FB 78 */	mr r3, r31
/* 80119DEC  38 80 01 45 */	li r4, 0x145
/* 80119DF0  4B FA 81 7D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80119DF4  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 80119DF8  28 00 00 06 */	cmplwi r0, 6
/* 80119DFC  40 82 00 24 */	bne lbl_80119E20
/* 80119E00  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 80119E04  28 00 00 48 */	cmplwi r0, 0x48
/* 80119E08  41 82 00 18 */	beq lbl_80119E20
/* 80119E0C  28 00 00 FF */	cmplwi r0, 0xff
/* 80119E10  41 82 00 10 */	beq lbl_80119E20
/* 80119E14  7F E3 FB 78 */	mr r3, r31
/* 80119E18  38 80 00 01 */	li r4, 1
/* 80119E1C  4B F9 FA 21 */	bl allUnequip__9daAlink_cFi
lbl_80119E20:
/* 80119E20  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80119E24  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80119E28  41 82 00 D8 */	beq lbl_80119F00
/* 80119E2C  38 00 00 00 */	li r0, 0
/* 80119E30  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 80119E34  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80119E38  D0 3F 33 98 */	stfs f1, 0x3398(r31)
/* 80119E3C  2C 1E 00 00 */	cmpwi r30, 0
/* 80119E40  40 82 00 1C */	bne lbl_80119E5C
/* 80119E44  7F E3 FB 78 */	mr r3, r31
/* 80119E48  3C 80 80 39 */	lis r4, m__20daAlinkHIO_wlMove_c0@ha
/* 80119E4C  38 84 EE 28 */	addi r4, r4, m__20daAlinkHIO_wlMove_c0@l
/* 80119E50  C0 24 00 BC */	lfs f1, 0xbc(r4)
/* 80119E54  48 00 E9 F1 */	bl setBlendWolfMoveAnime__9daAlink_cFf
/* 80119E58  48 00 00 D4 */	b lbl_80119F2C
lbl_80119E5C:
/* 80119E5C  2C 1E 00 01 */	cmpwi r30, 1
/* 80119E60  40 82 00 28 */	bne lbl_80119E88
/* 80119E64  38 00 00 0D */	li r0, 0xd
/* 80119E68  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 80119E6C  7F E3 FB 78 */	mr r3, r31
/* 80119E70  38 80 00 0D */	li r4, 0xd
/* 80119E74  3C A0 80 39 */	lis r5, m__19daAlinkHIO_wlLie_c0@ha
/* 80119E78  38 A5 F1 38 */	addi r5, r5, m__19daAlinkHIO_wlLie_c0@l
/* 80119E7C  C0 45 00 40 */	lfs f2, 0x40(r5)
/* 80119E80  48 00 F8 59 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 80119E84  48 00 00 64 */	b lbl_80119EE8
lbl_80119E88:
/* 80119E88  38 00 00 0D */	li r0, 0xd
/* 80119E8C  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 80119E90  C0 1F 1F E0 */	lfs f0, 0x1fe0(r31)
/* 80119E94  C0 62 94 64 */	lfs f3, lit_14954(r2)
/* 80119E98  EC 00 18 28 */	fsubs f0, f0, f3
/* 80119E9C  FC 00 02 10 */	fabs f0, f0
/* 80119EA0  FC 00 00 18 */	frsp f0, f0
/* 80119EA4  EC 40 18 24 */	fdivs f2, f0, f3
/* 80119EA8  C0 02 92 98 */	lfs f0, lit_5943(r2)
/* 80119EAC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80119EB0  40 80 00 0C */	bge lbl_80119EBC
/* 80119EB4  D0 7F 1F E0 */	stfs f3, 0x1fe0(r31)
/* 80119EB8  48 00 00 08 */	b lbl_80119EC0
lbl_80119EBC:
/* 80119EBC  D0 3F 1F E0 */	stfs f1, 0x1fe0(r31)
lbl_80119EC0:
/* 80119EC0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80119EC4  D0 1F 1F DC */	stfs f0, 0x1fdc(r31)
/* 80119EC8  C0 1F 1F E0 */	lfs f0, 0x1fe0(r31)
/* 80119ECC  80 7F 1F 2C */	lwz r3, 0x1f2c(r31)
/* 80119ED0  D0 03 00 08 */	stfs f0, 8(r3)
/* 80119ED4  80 7F 20 60 */	lwz r3, 0x2060(r31)
/* 80119ED8  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 80119EDC  38 80 00 00 */	li r4, 0
/* 80119EE0  38 A0 00 28 */	li r5, 0x28
/* 80119EE4  4B EF 59 65 */	bl initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs
lbl_80119EE8:
/* 80119EE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80119EEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80119EF0  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80119EF4  64 00 08 00 */	oris r0, r0, 0x800
/* 80119EF8  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 80119EFC  48 00 00 30 */	b lbl_80119F2C
lbl_80119F00:
/* 80119F00  7F E3 FB 78 */	mr r3, r31
/* 80119F04  38 9F 37 C8 */	addi r4, r31, 0x37c8
/* 80119F08  4B FF E4 01 */	bl setTalkStartBack__9daAlink_cFP4cXyz
/* 80119F0C  90 7F 31 98 */	stw r3, 0x3198(r31)
/* 80119F10  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 80119F14  2C 00 00 00 */	cmpwi r0, 0
/* 80119F18  40 82 00 14 */	bne lbl_80119F2C
/* 80119F1C  7F E3 FB 78 */	mr r3, r31
/* 80119F20  4B FF E7 35 */	bl setTalkAnime__9daAlink_cFv
/* 80119F24  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80119F28  D0 1F 33 98 */	stfs f0, 0x3398(r31)
lbl_80119F2C:
/* 80119F2C  38 00 00 1E */	li r0, 0x1e
/* 80119F30  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 80119F34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80119F38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80119F3C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80119F40  60 00 00 10 */	ori r0, r0, 0x10
/* 80119F44  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 80119F48  38 60 00 01 */	li r3, 1
lbl_80119F4C:
/* 80119F4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80119F50  83 C1 00 08 */	lwz r30, 8(r1)
/* 80119F54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80119F58  7C 08 03 A6 */	mtlr r0
/* 80119F5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80119F60  4E 80 00 20 */	blr 
