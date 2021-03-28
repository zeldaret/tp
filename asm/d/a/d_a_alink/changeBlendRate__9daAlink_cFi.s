lbl_8009E91C:
/* 8009E91C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009E920  7C 08 02 A6 */	mflr r0
/* 8009E924  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009E928  88 03 2F B6 */	lbz r0, 0x2fb6(r3)
/* 8009E92C  28 00 00 05 */	cmplwi r0, 5
/* 8009E930  40 82 00 54 */	bne lbl_8009E984
/* 8009E934  2C 04 00 00 */	cmpwi r4, 0
/* 8009E938  40 82 00 10 */	bne lbl_8009E948
/* 8009E93C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8009E940  D0 03 1F 50 */	stfs f0, 0x1f50(r3)
/* 8009E944  48 00 01 C4 */	b lbl_8009EB08
lbl_8009E948:
/* 8009E948  2C 04 00 05 */	cmpwi r4, 5
/* 8009E94C  40 82 00 10 */	bne lbl_8009E95C
/* 8009E950  C0 03 34 44 */	lfs f0, 0x3444(r3)
/* 8009E954  D0 03 1F 50 */	stfs f0, 0x1f50(r3)
/* 8009E958  48 00 01 B0 */	b lbl_8009EB08
lbl_8009E95C:
/* 8009E95C  2C 04 00 0A */	cmpwi r4, 0xa
/* 8009E960  40 82 00 10 */	bne lbl_8009E970
/* 8009E964  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8009E968  D0 03 1F 50 */	stfs f0, 0x1f50(r3)
/* 8009E96C  48 00 01 9C */	b lbl_8009EB08
lbl_8009E970:
/* 8009E970  2C 04 00 0F */	cmpwi r4, 0xf
/* 8009E974  40 82 01 94 */	bne lbl_8009EB08
/* 8009E978  C0 03 34 44 */	lfs f0, 0x3444(r3)
/* 8009E97C  D0 03 1F 50 */	stfs f0, 0x1f50(r3)
/* 8009E980  48 00 01 88 */	b lbl_8009EB08
lbl_8009E984:
/* 8009E984  28 00 00 01 */	cmplwi r0, 1
/* 8009E988  40 82 00 2C */	bne lbl_8009E9B4
/* 8009E98C  2C 04 00 00 */	cmpwi r4, 0
/* 8009E990  40 82 00 10 */	bne lbl_8009E9A0
/* 8009E994  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8009E998  D0 03 1F 50 */	stfs f0, 0x1f50(r3)
/* 8009E99C  48 00 01 6C */	b lbl_8009EB08
lbl_8009E9A0:
/* 8009E9A0  2C 04 00 05 */	cmpwi r4, 5
/* 8009E9A4  40 82 01 64 */	bne lbl_8009EB08
/* 8009E9A8  C0 03 34 44 */	lfs f0, 0x3444(r3)
/* 8009E9AC  D0 03 1F 50 */	stfs f0, 0x1f50(r3)
/* 8009E9B0  48 00 01 58 */	b lbl_8009EB08
lbl_8009E9B4:
/* 8009E9B4  28 00 00 02 */	cmplwi r0, 2
/* 8009E9B8  40 82 00 2C */	bne lbl_8009E9E4
/* 8009E9BC  2C 04 00 0A */	cmpwi r4, 0xa
/* 8009E9C0  40 82 00 10 */	bne lbl_8009E9D0
/* 8009E9C4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8009E9C8  D0 03 1F 50 */	stfs f0, 0x1f50(r3)
/* 8009E9CC  48 00 01 3C */	b lbl_8009EB08
lbl_8009E9D0:
/* 8009E9D0  2C 04 00 0F */	cmpwi r4, 0xf
/* 8009E9D4  40 82 01 34 */	bne lbl_8009EB08
/* 8009E9D8  C0 03 34 44 */	lfs f0, 0x3444(r3)
/* 8009E9DC  D0 03 1F 50 */	stfs f0, 0x1f50(r3)
/* 8009E9E0  48 00 01 28 */	b lbl_8009EB08
lbl_8009E9E4:
/* 8009E9E4  28 00 00 03 */	cmplwi r0, 3
/* 8009E9E8  40 82 00 2C */	bne lbl_8009EA14
/* 8009E9EC  2C 04 00 04 */	cmpwi r4, 4
/* 8009E9F0  40 82 00 10 */	bne lbl_8009EA00
/* 8009E9F4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8009E9F8  D0 03 1F 50 */	stfs f0, 0x1f50(r3)
/* 8009E9FC  48 00 01 0C */	b lbl_8009EB08
lbl_8009EA00:
/* 8009EA00  2C 04 00 05 */	cmpwi r4, 5
/* 8009EA04  40 82 01 04 */	bne lbl_8009EB08
/* 8009EA08  C0 03 34 44 */	lfs f0, 0x3444(r3)
/* 8009EA0C  D0 03 1F 50 */	stfs f0, 0x1f50(r3)
/* 8009EA10  48 00 00 F8 */	b lbl_8009EB08
lbl_8009EA14:
/* 8009EA14  28 00 00 07 */	cmplwi r0, 7
/* 8009EA18  40 82 00 54 */	bne lbl_8009EA6C
/* 8009EA1C  2C 04 00 00 */	cmpwi r4, 0
/* 8009EA20  40 82 00 10 */	bne lbl_8009EA30
/* 8009EA24  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8009EA28  D0 03 1F 50 */	stfs f0, 0x1f50(r3)
/* 8009EA2C  48 00 00 DC */	b lbl_8009EB08
lbl_8009EA30:
/* 8009EA30  2C 04 00 04 */	cmpwi r4, 4
/* 8009EA34  40 82 00 10 */	bne lbl_8009EA44
/* 8009EA38  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8009EA3C  D0 03 1F 50 */	stfs f0, 0x1f50(r3)
/* 8009EA40  48 00 00 C8 */	b lbl_8009EB08
lbl_8009EA44:
/* 8009EA44  2C 04 00 05 */	cmpwi r4, 5
/* 8009EA48  40 82 00 10 */	bne lbl_8009EA58
/* 8009EA4C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8009EA50  D0 03 1F 50 */	stfs f0, 0x1f50(r3)
/* 8009EA54  48 00 00 B4 */	b lbl_8009EB08
lbl_8009EA58:
/* 8009EA58  2C 04 00 0F */	cmpwi r4, 0xf
/* 8009EA5C  40 82 00 AC */	bne lbl_8009EB08
/* 8009EA60  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8009EA64  D0 03 1F 50 */	stfs f0, 0x1f50(r3)
/* 8009EA68  48 00 00 A0 */	b lbl_8009EB08
lbl_8009EA6C:
/* 8009EA6C  28 00 00 06 */	cmplwi r0, 6
/* 8009EA70  40 82 00 2C */	bne lbl_8009EA9C
/* 8009EA74  2C 04 00 04 */	cmpwi r4, 4
/* 8009EA78  40 82 00 10 */	bne lbl_8009EA88
/* 8009EA7C  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8009EA80  48 00 DC B9 */	bl setDoubleAnimeBlendRatio__9daAlink_cFf
/* 8009EA84  48 00 00 84 */	b lbl_8009EB08
lbl_8009EA88:
/* 8009EA88  2C 04 00 05 */	cmpwi r4, 5
/* 8009EA8C  40 82 00 7C */	bne lbl_8009EB08
/* 8009EA90  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8009EA94  48 00 DC A5 */	bl setDoubleAnimeBlendRatio__9daAlink_cFf
/* 8009EA98  48 00 00 70 */	b lbl_8009EB08
lbl_8009EA9C:
/* 8009EA9C  28 00 00 08 */	cmplwi r0, 8
/* 8009EAA0  40 82 00 3C */	bne lbl_8009EADC
/* 8009EAA4  2C 04 00 04 */	cmpwi r4, 4
/* 8009EAA8  40 82 00 18 */	bne lbl_8009EAC0
/* 8009EAAC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8009EAB0  D0 03 1F 50 */	stfs f0, 0x1f50(r3)
/* 8009EAB4  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8009EAB8  D0 03 1F 48 */	stfs f0, 0x1f48(r3)
/* 8009EABC  48 00 00 4C */	b lbl_8009EB08
lbl_8009EAC0:
/* 8009EAC0  2C 04 00 05 */	cmpwi r4, 5
/* 8009EAC4  40 82 00 44 */	bne lbl_8009EB08
/* 8009EAC8  C0 03 34 44 */	lfs f0, 0x3444(r3)
/* 8009EACC  D0 03 1F 50 */	stfs f0, 0x1f50(r3)
/* 8009EAD0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8009EAD4  D0 03 1F 48 */	stfs f0, 0x1f48(r3)
/* 8009EAD8  48 00 00 30 */	b lbl_8009EB08
lbl_8009EADC:
/* 8009EADC  28 00 00 04 */	cmplwi r0, 4
/* 8009EAE0  40 82 00 28 */	bne lbl_8009EB08
/* 8009EAE4  2C 04 00 00 */	cmpwi r4, 0
/* 8009EAE8  40 82 00 10 */	bne lbl_8009EAF8
/* 8009EAEC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8009EAF0  D0 03 1F 50 */	stfs f0, 0x1f50(r3)
/* 8009EAF4  48 00 00 14 */	b lbl_8009EB08
lbl_8009EAF8:
/* 8009EAF8  2C 04 00 0D */	cmpwi r4, 0xd
/* 8009EAFC  40 82 00 0C */	bne lbl_8009EB08
/* 8009EB00  C0 03 34 44 */	lfs f0, 0x3444(r3)
/* 8009EB04  D0 03 1F 50 */	stfs f0, 0x1f50(r3)
lbl_8009EB08:
/* 8009EB08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009EB0C  7C 08 03 A6 */	mtlr r0
/* 8009EB10  38 21 00 10 */	addi r1, r1, 0x10
/* 8009EB14  4E 80 00 20 */	blr 
