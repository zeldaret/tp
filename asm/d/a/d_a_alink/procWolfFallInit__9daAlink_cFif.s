lbl_8012EDD0:
/* 8012EDD0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8012EDD4  7C 08 02 A6 */	mflr r0
/* 8012EDD8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8012EDDC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8012EDE0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8012EDE4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8012EDE8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8012EDEC  7C 7E 1B 78 */	mr r30, r3
/* 8012EDF0  7C 9F 23 78 */	mr r31, r4
/* 8012EDF4  FF E0 08 90 */	fmr f31, f1
/* 8012EDF8  38 80 00 FD */	li r4, 0xfd
/* 8012EDFC  4B F9 3F A9 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8012EE00  2C 03 00 00 */	cmpwi r3, 0
/* 8012EE04  40 82 00 0C */	bne lbl_8012EE10
/* 8012EE08  38 60 00 00 */	li r3, 0
/* 8012EE0C  48 00 01 8C */	b lbl_8012EF98
lbl_8012EE10:
/* 8012EE10  38 00 00 00 */	li r0, 0
/* 8012EE14  B0 1E 30 12 */	sth r0, 0x3012(r30)
/* 8012EE18  2C 1F 00 01 */	cmpwi r31, 1
/* 8012EE1C  40 82 00 1C */	bne lbl_8012EE38
/* 8012EE20  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8012EE24  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 8012EE28  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8012EE2C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8012EE30  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8012EE34  48 00 00 8C */	b lbl_8012EEC0
lbl_8012EE38:
/* 8012EE38  2C 1F 00 04 */	cmpwi r31, 4
/* 8012EE3C  40 82 00 84 */	bne lbl_8012EEC0
/* 8012EE40  A8 1E 2F FE */	lha r0, 0x2ffe(r30)
/* 8012EE44  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8012EE48  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8012EE4C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8012EE50  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8012EE54  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8012EE58  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8012EE5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8012EE60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8012EE64  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8012EE68  38 80 00 06 */	li r4, 6
/* 8012EE6C  38 A0 00 1F */	li r5, 0x1f
/* 8012EE70  38 C1 00 08 */	addi r6, r1, 8
/* 8012EE74  4B F4 0B B1 */	bl StartShock__12dVibration_cFii4cXyz
/* 8012EE78  7F C3 F3 78 */	mr r3, r30
/* 8012EE7C  80 9E 31 8C */	lwz r4, 0x318c(r30)
/* 8012EE80  4B FA 85 F9 */	bl setDamagePointNormal__9daAlink_cFi
/* 8012EE84  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 8012EE88  60 00 40 00 */	ori r0, r0, 0x4000
/* 8012EE8C  90 1E 05 74 */	stw r0, 0x574(r30)
/* 8012EE90  A8 1E 05 6C */	lha r0, 0x56c(r30)
/* 8012EE94  2C 00 00 00 */	cmpwi r0, 0
/* 8012EE98  41 82 00 10 */	beq lbl_8012EEA8
/* 8012EE9C  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 8012EEA0  60 00 00 08 */	ori r0, r0, 8
/* 8012EEA4  90 1E 31 A0 */	stw r0, 0x31a0(r30)
lbl_8012EEA8:
/* 8012EEA8  C0 1E 34 08 */	lfs f0, 0x3408(r30)
/* 8012EEAC  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 8012EEB0  C0 1E 34 0C */	lfs f0, 0x340c(r30)
/* 8012EEB4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8012EEB8  38 00 00 01 */	li r0, 1
/* 8012EEBC  B0 1E 30 12 */	sth r0, 0x3012(r30)
lbl_8012EEC0:
/* 8012EEC0  7F C3 F3 78 */	mr r3, r30
/* 8012EEC4  38 80 00 05 */	li r4, 5
/* 8012EEC8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8012EECC  FC 40 F8 90 */	fmr f2, f31
/* 8012EED0  4B FF A8 09 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 8012EED4  A8 1E 1F D8 */	lha r0, 0x1fd8(r30)
/* 8012EED8  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 8012EEDC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8012EEE0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8012EEE4  3C 00 43 30 */	lis r0, 0x4330
/* 8012EEE8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8012EEEC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8012EEF0  EC 20 08 28 */	fsubs f1, f0, f1
/* 8012EEF4  C0 02 93 E4 */	lfs f0, lit_12328(r2)
/* 8012EEF8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8012EEFC  D0 1E 1F E0 */	stfs f0, 0x1fe0(r30)
/* 8012EF00  C0 1E 1F E0 */	lfs f0, 0x1fe0(r30)
/* 8012EF04  80 7E 1F 2C */	lwz r3, 0x1f2c(r30)
/* 8012EF08  D0 03 00 08 */	stfs f0, 8(r3)
/* 8012EF0C  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha /* 0x8042561C@ha */
/* 8012EF10  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)  /* 0x8042561C@l */
/* 8012EF14  D0 1E 35 88 */	stfs f0, 0x3588(r30)
/* 8012EF18  C0 03 00 04 */	lfs f0, 4(r3)
/* 8012EF1C  D0 1E 35 8C */	stfs f0, 0x358c(r30)
/* 8012EF20  C0 03 00 08 */	lfs f0, 8(r3)
/* 8012EF24  D0 1E 35 90 */	stfs f0, 0x3590(r30)
/* 8012EF28  38 00 00 0C */	li r0, 0xc
/* 8012EF2C  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 8012EF30  7F C3 F3 78 */	mr r3, r30
/* 8012EF34  4B F9 05 AD */	bl resetBasAnime__9daAlink_cFv
/* 8012EF38  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 8012EF3C  54 00 03 98 */	rlwinm r0, r0, 0, 0xe, 0xc
/* 8012EF40  90 1E 05 70 */	stw r0, 0x570(r30)
/* 8012EF44  2C 1F 00 04 */	cmpwi r31, 4
/* 8012EF48  41 82 00 3C */	beq lbl_8012EF84
/* 8012EF4C  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 8012EF50  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8012EF54  7C 03 00 00 */	cmpw r3, r0
/* 8012EF58  40 82 00 2C */	bne lbl_8012EF84
/* 8012EF5C  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 8012EF60  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8012EF64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012EF68  40 81 00 10 */	ble lbl_8012EF78
/* 8012EF6C  38 00 00 02 */	li r0, 2
/* 8012EF70  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 8012EF74  48 00 00 18 */	b lbl_8012EF8C
lbl_8012EF78:
/* 8012EF78  38 00 00 01 */	li r0, 1
/* 8012EF7C  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 8012EF80  48 00 00 0C */	b lbl_8012EF8C
lbl_8012EF84:
/* 8012EF84  38 00 00 00 */	li r0, 0
/* 8012EF88  B0 1E 30 08 */	sth r0, 0x3008(r30)
lbl_8012EF8C:
/* 8012EF8C  38 00 00 07 */	li r0, 7
/* 8012EF90  B0 1E 30 0A */	sth r0, 0x300a(r30)
/* 8012EF94  38 60 00 01 */	li r3, 1
lbl_8012EF98:
/* 8012EF98  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8012EF9C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8012EFA0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8012EFA4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8012EFA8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8012EFAC  7C 08 03 A6 */	mtlr r0
/* 8012EFB0  38 21 00 40 */	addi r1, r1, 0x40
/* 8012EFB4  4E 80 00 20 */	blr 
