lbl_805ECA0C:
/* 805ECA0C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805ECA10  7C 08 02 A6 */	mflr r0
/* 805ECA14  90 01 00 64 */	stw r0, 0x64(r1)
/* 805ECA18  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 805ECA1C  93 C1 00 58 */	stw r30, 0x58(r1)
/* 805ECA20  3C 60 80 5F */	lis r3, lit_1109@ha
/* 805ECA24  3B C3 D6 C0 */	addi r30, r3, lit_1109@l
/* 805ECA28  3C 60 80 5F */	lis r3, lit_3911@ha
/* 805ECA2C  3B E3 D0 60 */	addi r31, r3, lit_3911@l
/* 805ECA30  38 7E 00 4C */	addi r3, r30, 0x4c
/* 805ECA34  4B FF 19 D9 */	bl __ct__12daB_GG_HIO_cFv
/* 805ECA38  3C 80 80 5F */	lis r4, __dt__12daB_GG_HIO_cFv@ha
/* 805ECA3C  38 84 C9 C4 */	addi r4, r4, __dt__12daB_GG_HIO_cFv@l
/* 805ECA40  38 BE 00 40 */	addi r5, r30, 0x40
/* 805ECA44  4B FF 19 55 */	bl __register_global_object
/* 805ECA48  C0 1F 02 28 */	lfs f0, 0x228(r31)
/* 805ECA4C  D0 1E 00 80 */	stfs f0, 0x80(r30)
/* 805ECA50  C0 1F 03 44 */	lfs f0, 0x344(r31)
/* 805ECA54  38 7E 00 80 */	addi r3, r30, 0x80
/* 805ECA58  D0 03 00 04 */	stfs f0, 4(r3)
/* 805ECA5C  C0 1F 02 2C */	lfs f0, 0x22c(r31)
/* 805ECA60  D0 03 00 08 */	stfs f0, 8(r3)
/* 805ECA64  3C 80 80 5F */	lis r4, __dt__4cXyzFv@ha
/* 805ECA68  38 84 D0 10 */	addi r4, r4, __dt__4cXyzFv@l
/* 805ECA6C  38 BE 00 74 */	addi r5, r30, 0x74
/* 805ECA70  4B FF 19 29 */	bl __register_global_object
/* 805ECA74  C0 5F 03 48 */	lfs f2, 0x348(r31)
/* 805ECA78  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 805ECA7C  C0 3F 02 B0 */	lfs f1, 0x2b0(r31)
/* 805ECA80  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 805ECA84  C0 1F 03 4C */	lfs f0, 0x34c(r31)
/* 805ECA88  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805ECA8C  D0 5E 00 B4 */	stfs f2, 0xb4(r30)
/* 805ECA90  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 805ECA94  D0 23 00 04 */	stfs f1, 4(r3)
/* 805ECA98  D0 03 00 08 */	stfs f0, 8(r3)
/* 805ECA9C  3C 80 80 5F */	lis r4, __dt__4cXyzFv@ha
/* 805ECAA0  38 84 D0 10 */	addi r4, r4, __dt__4cXyzFv@l
/* 805ECAA4  38 BE 00 90 */	addi r5, r30, 0x90
/* 805ECAA8  4B FF 18 F1 */	bl __register_global_object
/* 805ECAAC  C0 5F 02 94 */	lfs f2, 0x294(r31)
/* 805ECAB0  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 805ECAB4  C0 3F 03 50 */	lfs f1, 0x350(r31)
/* 805ECAB8  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 805ECABC  C0 1F 03 54 */	lfs f0, 0x354(r31)
/* 805ECAC0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805ECAC4  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 805ECAC8  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 805ECACC  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 805ECAD0  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 805ECAD4  38 63 00 0C */	addi r3, r3, 0xc
/* 805ECAD8  3C 80 80 5F */	lis r4, __dt__4cXyzFv@ha
/* 805ECADC  38 84 D0 10 */	addi r4, r4, __dt__4cXyzFv@l
/* 805ECAE0  38 BE 00 9C */	addi r5, r30, 0x9c
/* 805ECAE4  4B FF 18 B5 */	bl __register_global_object
/* 805ECAE8  C0 5F 03 58 */	lfs f2, 0x358(r31)
/* 805ECAEC  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 805ECAF0  C0 3F 02 B0 */	lfs f1, 0x2b0(r31)
/* 805ECAF4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 805ECAF8  C0 1F 03 5C */	lfs f0, 0x35c(r31)
/* 805ECAFC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805ECB00  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 805ECB04  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 805ECB08  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 805ECB0C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 805ECB10  38 63 00 18 */	addi r3, r3, 0x18
/* 805ECB14  3C 80 80 5F */	lis r4, __dt__4cXyzFv@ha
/* 805ECB18  38 84 D0 10 */	addi r4, r4, __dt__4cXyzFv@l
/* 805ECB1C  38 BE 00 A8 */	addi r5, r30, 0xa8
/* 805ECB20  4B FF 18 79 */	bl __register_global_object
/* 805ECB24  C0 5F 03 60 */	lfs f2, 0x360(r31)
/* 805ECB28  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 805ECB2C  C0 3F 02 B0 */	lfs f1, 0x2b0(r31)
/* 805ECB30  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 805ECB34  C0 1F 03 64 */	lfs f0, 0x364(r31)
/* 805ECB38  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805ECB3C  D0 5E 00 FC */	stfs f2, 0xfc(r30)
/* 805ECB40  38 7E 00 FC */	addi r3, r30, 0xfc
/* 805ECB44  D0 23 00 04 */	stfs f1, 4(r3)
/* 805ECB48  D0 03 00 08 */	stfs f0, 8(r3)
/* 805ECB4C  3C 80 80 5F */	lis r4, __dt__4cXyzFv@ha
/* 805ECB50  38 84 D0 10 */	addi r4, r4, __dt__4cXyzFv@l
/* 805ECB54  38 BE 00 D8 */	addi r5, r30, 0xd8
/* 805ECB58  4B FF 18 41 */	bl __register_global_object
/* 805ECB5C  C0 5F 03 68 */	lfs f2, 0x368(r31)
/* 805ECB60  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 805ECB64  C0 3F 03 50 */	lfs f1, 0x350(r31)
/* 805ECB68  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805ECB6C  C0 1F 03 6C */	lfs f0, 0x36c(r31)
/* 805ECB70  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805ECB74  38 7E 00 FC */	addi r3, r30, 0xfc
/* 805ECB78  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 805ECB7C  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 805ECB80  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 805ECB84  38 63 00 0C */	addi r3, r3, 0xc
/* 805ECB88  3C 80 80 5F */	lis r4, __dt__4cXyzFv@ha
/* 805ECB8C  38 84 D0 10 */	addi r4, r4, __dt__4cXyzFv@l
/* 805ECB90  38 BE 00 E4 */	addi r5, r30, 0xe4
/* 805ECB94  4B FF 18 05 */	bl __register_global_object
/* 805ECB98  C0 5F 03 70 */	lfs f2, 0x370(r31)
/* 805ECB9C  D0 41 00 08 */	stfs f2, 8(r1)
/* 805ECBA0  C0 3F 02 B0 */	lfs f1, 0x2b0(r31)
/* 805ECBA4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805ECBA8  C0 1F 03 04 */	lfs f0, 0x304(r31)
/* 805ECBAC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805ECBB0  38 7E 00 FC */	addi r3, r30, 0xfc
/* 805ECBB4  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 805ECBB8  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 805ECBBC  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 805ECBC0  38 63 00 18 */	addi r3, r3, 0x18
/* 805ECBC4  3C 80 80 5F */	lis r4, __dt__4cXyzFv@ha
/* 805ECBC8  38 84 D0 10 */	addi r4, r4, __dt__4cXyzFv@l
/* 805ECBCC  38 BE 00 F0 */	addi r5, r30, 0xf0
/* 805ECBD0  4B FF 17 C9 */	bl __register_global_object
/* 805ECBD4  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 805ECBD8  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 805ECBDC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805ECBE0  7C 08 03 A6 */	mtlr r0
/* 805ECBE4  38 21 00 60 */	addi r1, r1, 0x60
/* 805ECBE8  4E 80 00 20 */	blr 
