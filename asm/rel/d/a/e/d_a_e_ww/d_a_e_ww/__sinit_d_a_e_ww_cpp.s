lbl_807EEF04:
/* 807EEF04  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 807EEF08  7C 08 02 A6 */	mflr r0
/* 807EEF0C  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 807EEF10  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 807EEF14  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 807EEF18  3C 60 80 7F */	lis r3, lit_1109@ha /* 0x807EFB80@ha */
/* 807EEF1C  3B C3 FB 80 */	addi r30, r3, lit_1109@l /* 0x807EFB80@l */
/* 807EEF20  3C 60 80 7F */	lis r3, lit_3905@ha /* 0x807EF770@ha */
/* 807EEF24  3B E3 F7 70 */	addi r31, r3, lit_3905@l /* 0x807EF770@l */
/* 807EEF28  38 7E 00 4C */	addi r3, r30, 0x4c
/* 807EEF2C  4B FF 87 C1 */	bl __ct__12daE_WW_HIO_cFv
/* 807EEF30  3C 80 80 7F */	lis r4, __dt__12daE_WW_HIO_cFv@ha /* 0x807EEEBC@ha */
/* 807EEF34  38 84 EE BC */	addi r4, r4, __dt__12daE_WW_HIO_cFv@l /* 0x807EEEBC@l */
/* 807EEF38  38 BE 00 40 */	addi r5, r30, 0x40
/* 807EEF3C  4B FF 87 3D */	bl __register_global_object
/* 807EEF40  C0 5F 00 B0 */	lfs f2, 0xb0(r31)
/* 807EEF44  D0 41 00 B0 */	stfs f2, 0xb0(r1)
/* 807EEF48  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EEF4C  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 807EEF50  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 807EEF54  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 807EEF58  D0 5E 01 2C */	stfs f2, 0x12c(r30)
/* 807EEF5C  38 7E 01 2C */	addi r3, r30, 0x12c
/* 807EEF60  D0 23 00 04 */	stfs f1, 4(r3)
/* 807EEF64  D0 03 00 08 */	stfs f0, 8(r3)
/* 807EEF68  3C 80 80 7F */	lis r4, __dt__4cXyzFv@ha /* 0x807EF708@ha */
/* 807EEF6C  38 84 F7 08 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807EF708@l */
/* 807EEF70  38 BE 00 78 */	addi r5, r30, 0x78
/* 807EEF74  4B FF 87 05 */	bl __register_global_object
/* 807EEF78  C0 5F 01 28 */	lfs f2, 0x128(r31)
/* 807EEF7C  D0 41 00 A4 */	stfs f2, 0xa4(r1)
/* 807EEF80  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EEF84  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 807EEF88  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807EEF8C  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 807EEF90  38 7E 01 2C */	addi r3, r30, 0x12c
/* 807EEF94  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 807EEF98  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 807EEF9C  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 807EEFA0  38 63 00 0C */	addi r3, r3, 0xc
/* 807EEFA4  3C 80 80 7F */	lis r4, __dt__4cXyzFv@ha /* 0x807EF708@ha */
/* 807EEFA8  38 84 F7 08 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807EF708@l */
/* 807EEFAC  38 BE 00 84 */	addi r5, r30, 0x84
/* 807EEFB0  4B FF 86 C9 */	bl __register_global_object
/* 807EEFB4  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 807EEFB8  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 807EEFBC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EEFC0  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 807EEFC4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807EEFC8  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 807EEFCC  38 7E 01 2C */	addi r3, r30, 0x12c
/* 807EEFD0  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 807EEFD4  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 807EEFD8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 807EEFDC  38 63 00 18 */	addi r3, r3, 0x18
/* 807EEFE0  3C 80 80 7F */	lis r4, __dt__4cXyzFv@ha /* 0x807EF708@ha */
/* 807EEFE4  38 84 F7 08 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807EF708@l */
/* 807EEFE8  38 BE 00 90 */	addi r5, r30, 0x90
/* 807EEFEC  4B FF 86 8D */	bl __register_global_object
/* 807EEFF0  C0 5F 01 2C */	lfs f2, 0x12c(r31)
/* 807EEFF4  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 807EEFF8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EEFFC  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 807EF000  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 807EF004  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 807EF008  38 7E 01 2C */	addi r3, r30, 0x12c
/* 807EF00C  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 807EF010  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 807EF014  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 807EF018  38 63 00 24 */	addi r3, r3, 0x24
/* 807EF01C  3C 80 80 7F */	lis r4, __dt__4cXyzFv@ha /* 0x807EF708@ha */
/* 807EF020  38 84 F7 08 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807EF708@l */
/* 807EF024  38 BE 00 9C */	addi r5, r30, 0x9c
/* 807EF028  4B FF 86 51 */	bl __register_global_object
/* 807EF02C  C0 5F 01 30 */	lfs f2, 0x130(r31)
/* 807EF030  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 807EF034  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EF038  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 807EF03C  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 807EF040  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 807EF044  38 7E 01 2C */	addi r3, r30, 0x12c
/* 807EF048  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 807EF04C  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 807EF050  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 807EF054  38 63 00 30 */	addi r3, r3, 0x30
/* 807EF058  3C 80 80 7F */	lis r4, __dt__4cXyzFv@ha /* 0x807EF708@ha */
/* 807EF05C  38 84 F7 08 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807EF708@l */
/* 807EF060  38 BE 00 A8 */	addi r5, r30, 0xa8
/* 807EF064  4B FF 86 15 */	bl __register_global_object
/* 807EF068  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 807EF06C  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 807EF070  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EF074  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 807EF078  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 807EF07C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807EF080  38 7E 01 2C */	addi r3, r30, 0x12c
/* 807EF084  D0 43 00 3C */	stfs f2, 0x3c(r3)
/* 807EF088  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 807EF08C  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 807EF090  38 63 00 3C */	addi r3, r3, 0x3c
/* 807EF094  3C 80 80 7F */	lis r4, __dt__4cXyzFv@ha /* 0x807EF708@ha */
/* 807EF098  38 84 F7 08 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807EF708@l */
/* 807EF09C  38 BE 00 B4 */	addi r5, r30, 0xb4
/* 807EF0A0  4B FF 85 D9 */	bl __register_global_object
/* 807EF0A4  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 807EF0A8  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 807EF0AC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EF0B0  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 807EF0B4  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 807EF0B8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807EF0BC  38 7E 01 2C */	addi r3, r30, 0x12c
/* 807EF0C0  D0 43 00 48 */	stfs f2, 0x48(r3)
/* 807EF0C4  D0 23 00 4C */	stfs f1, 0x4c(r3)
/* 807EF0C8  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 807EF0CC  38 63 00 48 */	addi r3, r3, 0x48
/* 807EF0D0  3C 80 80 7F */	lis r4, __dt__4cXyzFv@ha /* 0x807EF708@ha */
/* 807EF0D4  38 84 F7 08 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807EF708@l */
/* 807EF0D8  38 BE 00 C0 */	addi r5, r30, 0xc0
/* 807EF0DC  4B FF 85 9D */	bl __register_global_object
/* 807EF0E0  C0 5F 01 38 */	lfs f2, 0x138(r31)
/* 807EF0E4  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 807EF0E8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EF0EC  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 807EF0F0  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 807EF0F4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807EF0F8  38 7E 01 2C */	addi r3, r30, 0x12c
/* 807EF0FC  D0 43 00 54 */	stfs f2, 0x54(r3)
/* 807EF100  D0 23 00 58 */	stfs f1, 0x58(r3)
/* 807EF104  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 807EF108  38 63 00 54 */	addi r3, r3, 0x54
/* 807EF10C  3C 80 80 7F */	lis r4, __dt__4cXyzFv@ha /* 0x807EF708@ha */
/* 807EF110  38 84 F7 08 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807EF708@l */
/* 807EF114  38 BE 00 CC */	addi r5, r30, 0xcc
/* 807EF118  4B FF 85 61 */	bl __register_global_object
/* 807EF11C  C0 5F 01 28 */	lfs f2, 0x128(r31)
/* 807EF120  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 807EF124  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EF128  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 807EF12C  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 807EF130  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 807EF134  38 7E 01 2C */	addi r3, r30, 0x12c
/* 807EF138  D0 43 00 60 */	stfs f2, 0x60(r3)
/* 807EF13C  D0 23 00 64 */	stfs f1, 0x64(r3)
/* 807EF140  D0 03 00 68 */	stfs f0, 0x68(r3)
/* 807EF144  38 63 00 60 */	addi r3, r3, 0x60
/* 807EF148  3C 80 80 7F */	lis r4, __dt__4cXyzFv@ha /* 0x807EF708@ha */
/* 807EF14C  38 84 F7 08 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807EF708@l */
/* 807EF150  38 BE 00 D8 */	addi r5, r30, 0xd8
/* 807EF154  4B FF 85 25 */	bl __register_global_object
/* 807EF158  C0 5F 01 3C */	lfs f2, 0x13c(r31)
/* 807EF15C  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 807EF160  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EF164  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 807EF168  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 807EF16C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807EF170  38 7E 01 2C */	addi r3, r30, 0x12c
/* 807EF174  D0 43 00 6C */	stfs f2, 0x6c(r3)
/* 807EF178  D0 23 00 70 */	stfs f1, 0x70(r3)
/* 807EF17C  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 807EF180  38 63 00 6C */	addi r3, r3, 0x6c
/* 807EF184  3C 80 80 7F */	lis r4, __dt__4cXyzFv@ha /* 0x807EF708@ha */
/* 807EF188  38 84 F7 08 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807EF708@l */
/* 807EF18C  38 BE 00 E4 */	addi r5, r30, 0xe4
/* 807EF190  4B FF 84 E9 */	bl __register_global_object
/* 807EF194  C0 5F 01 40 */	lfs f2, 0x140(r31)
/* 807EF198  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 807EF19C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EF1A0  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 807EF1A4  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 807EF1A8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807EF1AC  38 7E 01 2C */	addi r3, r30, 0x12c
/* 807EF1B0  D0 43 00 78 */	stfs f2, 0x78(r3)
/* 807EF1B4  D0 23 00 7C */	stfs f1, 0x7c(r3)
/* 807EF1B8  D0 03 00 80 */	stfs f0, 0x80(r3)
/* 807EF1BC  38 63 00 78 */	addi r3, r3, 0x78
/* 807EF1C0  3C 80 80 7F */	lis r4, __dt__4cXyzFv@ha /* 0x807EF708@ha */
/* 807EF1C4  38 84 F7 08 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807EF708@l */
/* 807EF1C8  38 BE 00 F0 */	addi r5, r30, 0xf0
/* 807EF1CC  4B FF 84 AD */	bl __register_global_object
/* 807EF1D0  C0 5F 01 40 */	lfs f2, 0x140(r31)
/* 807EF1D4  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 807EF1D8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EF1DC  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 807EF1E0  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 807EF1E4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807EF1E8  38 7E 01 2C */	addi r3, r30, 0x12c
/* 807EF1EC  D0 43 00 84 */	stfs f2, 0x84(r3)
/* 807EF1F0  D0 23 00 88 */	stfs f1, 0x88(r3)
/* 807EF1F4  D0 03 00 8C */	stfs f0, 0x8c(r3)
/* 807EF1F8  38 63 00 84 */	addi r3, r3, 0x84
/* 807EF1FC  3C 80 80 7F */	lis r4, __dt__4cXyzFv@ha /* 0x807EF708@ha */
/* 807EF200  38 84 F7 08 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807EF708@l */
/* 807EF204  38 BE 00 FC */	addi r5, r30, 0xfc
/* 807EF208  4B FF 84 71 */	bl __register_global_object
/* 807EF20C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807EF210  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807EF214  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807EF218  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807EF21C  38 7E 01 2C */	addi r3, r30, 0x12c
/* 807EF220  D0 03 00 90 */	stfs f0, 0x90(r3)
/* 807EF224  D0 03 00 94 */	stfs f0, 0x94(r3)
/* 807EF228  D0 03 00 98 */	stfs f0, 0x98(r3)
/* 807EF22C  38 63 00 90 */	addi r3, r3, 0x90
/* 807EF230  3C 80 80 7F */	lis r4, __dt__4cXyzFv@ha /* 0x807EF708@ha */
/* 807EF234  38 84 F7 08 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807EF708@l */
/* 807EF238  38 BE 01 08 */	addi r5, r30, 0x108
/* 807EF23C  4B FF 84 3D */	bl __register_global_object
/* 807EF240  C0 5F 01 44 */	lfs f2, 0x144(r31)
/* 807EF244  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 807EF248  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EF24C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 807EF250  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 807EF254  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807EF258  38 7E 01 2C */	addi r3, r30, 0x12c
/* 807EF25C  D0 43 00 9C */	stfs f2, 0x9c(r3)
/* 807EF260  D0 23 00 A0 */	stfs f1, 0xa0(r3)
/* 807EF264  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 807EF268  38 63 00 9C */	addi r3, r3, 0x9c
/* 807EF26C  3C 80 80 7F */	lis r4, __dt__4cXyzFv@ha /* 0x807EF708@ha */
/* 807EF270  38 84 F7 08 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807EF708@l */
/* 807EF274  38 BE 01 14 */	addi r5, r30, 0x114
/* 807EF278  4B FF 84 01 */	bl __register_global_object
/* 807EF27C  C0 3F 01 44 */	lfs f1, 0x144(r31)
/* 807EF280  D0 21 00 08 */	stfs f1, 8(r1)
/* 807EF284  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807EF288  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807EF28C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 807EF290  38 7E 01 2C */	addi r3, r30, 0x12c
/* 807EF294  D0 23 00 A8 */	stfs f1, 0xa8(r3)
/* 807EF298  D0 03 00 AC */	stfs f0, 0xac(r3)
/* 807EF29C  D0 23 00 B0 */	stfs f1, 0xb0(r3)
/* 807EF2A0  38 63 00 A8 */	addi r3, r3, 0xa8
/* 807EF2A4  3C 80 80 7F */	lis r4, __dt__4cXyzFv@ha /* 0x807EF708@ha */
/* 807EF2A8  38 84 F7 08 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807EF708@l */
/* 807EF2AC  38 BE 01 20 */	addi r5, r30, 0x120
/* 807EF2B0  4B FF 83 C9 */	bl __register_global_object
/* 807EF2B4  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 807EF2B8  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 807EF2BC  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 807EF2C0  7C 08 03 A6 */	mtlr r0
/* 807EF2C4  38 21 00 D0 */	addi r1, r1, 0xd0
/* 807EF2C8  4E 80 00 20 */	blr 
