lbl_80549E88:
/* 80549E88  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80549E8C  7C 08 02 A6 */	mflr r0
/* 80549E90  90 01 01 04 */	stw r0, 0x104(r1)
/* 80549E94  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 80549E98  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 80549E9C  3C 60 80 55 */	lis r3, lit_1109@ha /* 0x8054AF80@ha */
/* 80549EA0  3B C3 AF 80 */	addi r30, r3, lit_1109@l /* 0x8054AF80@l */
/* 80549EA4  3C 60 80 55 */	lis r3, lit_3905@ha /* 0x8054A964@ha */
/* 80549EA8  3B E3 A9 64 */	addi r31, r3, lit_3905@l /* 0x8054A964@l */
/* 80549EAC  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80549EB0  4B FF 90 5D */	bl __ct__17daNpc_Henna_HIO_cFv
/* 80549EB4  3C 80 80 55 */	lis r4, __dt__17daNpc_Henna_HIO_cFv@ha /* 0x80549E40@ha */
/* 80549EB8  38 84 9E 40 */	addi r4, r4, __dt__17daNpc_Henna_HIO_cFv@l /* 0x80549E40@l */
/* 80549EBC  38 BE 00 40 */	addi r5, r30, 0x40
/* 80549EC0  4B FF 8F D9 */	bl __register_global_object
/* 80549EC4  C0 5F 02 88 */	lfs f2, 0x288(r31)
/* 80549EC8  D0 41 00 EC */	stfs f2, 0xec(r1)
/* 80549ECC  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80549ED0  D0 21 00 F0 */	stfs f1, 0xf0(r1)
/* 80549ED4  C0 1F 01 28 */	lfs f0, 0x128(r31)
/* 80549ED8  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 80549EDC  D0 5E 01 7C */	stfs f2, 0x17c(r30)
/* 80549EE0  38 7E 01 7C */	addi r3, r30, 0x17c
/* 80549EE4  D0 23 00 04 */	stfs f1, 4(r3)
/* 80549EE8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80549EEC  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x805434C0@ha */
/* 80549EF0  38 84 34 C0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805434C0@l */
/* 80549EF4  38 BE 00 8C */	addi r5, r30, 0x8c
/* 80549EF8  4B FF 8F A1 */	bl __register_global_object
/* 80549EFC  C0 3F 02 8C */	lfs f1, 0x28c(r31)
/* 80549F00  D0 21 00 E0 */	stfs f1, 0xe0(r1)
/* 80549F04  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80549F08  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80549F0C  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 80549F10  38 7E 01 7C */	addi r3, r30, 0x17c
/* 80549F14  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 80549F18  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80549F1C  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80549F20  38 63 00 0C */	addi r3, r3, 0xc
/* 80549F24  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x805434C0@ha */
/* 80549F28  38 84 34 C0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805434C0@l */
/* 80549F2C  38 BE 00 98 */	addi r5, r30, 0x98
/* 80549F30  4B FF 8F 69 */	bl __register_global_object
/* 80549F34  C0 5F 01 C8 */	lfs f2, 0x1c8(r31)
/* 80549F38  D0 41 00 D4 */	stfs f2, 0xd4(r1)
/* 80549F3C  C0 3F 02 90 */	lfs f1, 0x290(r31)
/* 80549F40  D0 21 00 D8 */	stfs f1, 0xd8(r1)
/* 80549F44  C0 1F 02 94 */	lfs f0, 0x294(r31)
/* 80549F48  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80549F4C  38 7E 01 7C */	addi r3, r30, 0x17c
/* 80549F50  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 80549F54  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80549F58  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80549F5C  38 63 00 18 */	addi r3, r3, 0x18
/* 80549F60  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x805434C0@ha */
/* 80549F64  38 84 34 C0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805434C0@l */
/* 80549F68  38 BE 00 A4 */	addi r5, r30, 0xa4
/* 80549F6C  4B FF 8F 2D */	bl __register_global_object
/* 80549F70  C0 5F 02 98 */	lfs f2, 0x298(r31)
/* 80549F74  D0 41 00 C8 */	stfs f2, 0xc8(r1)
/* 80549F78  C0 3F 02 9C */	lfs f1, 0x29c(r31)
/* 80549F7C  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 80549F80  C0 1F 02 94 */	lfs f0, 0x294(r31)
/* 80549F84  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80549F88  38 7E 01 7C */	addi r3, r30, 0x17c
/* 80549F8C  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 80549F90  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 80549F94  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80549F98  38 63 00 24 */	addi r3, r3, 0x24
/* 80549F9C  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x805434C0@ha */
/* 80549FA0  38 84 34 C0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805434C0@l */
/* 80549FA4  38 BE 00 B0 */	addi r5, r30, 0xb0
/* 80549FA8  4B FF 8E F1 */	bl __register_global_object
/* 80549FAC  C0 5F 02 A0 */	lfs f2, 0x2a0(r31)
/* 80549FB0  D0 41 00 BC */	stfs f2, 0xbc(r1)
/* 80549FB4  C0 3F 02 6C */	lfs f1, 0x26c(r31)
/* 80549FB8  D0 21 00 C0 */	stfs f1, 0xc0(r1)
/* 80549FBC  C0 1F 01 F0 */	lfs f0, 0x1f0(r31)
/* 80549FC0  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80549FC4  38 7E 01 7C */	addi r3, r30, 0x17c
/* 80549FC8  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 80549FCC  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 80549FD0  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 80549FD4  38 63 00 30 */	addi r3, r3, 0x30
/* 80549FD8  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x805434C0@ha */
/* 80549FDC  38 84 34 C0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805434C0@l */
/* 80549FE0  38 BE 00 BC */	addi r5, r30, 0xbc
/* 80549FE4  4B FF 8E B5 */	bl __register_global_object
/* 80549FE8  C0 5F 02 A4 */	lfs f2, 0x2a4(r31)
/* 80549FEC  D0 41 00 B0 */	stfs f2, 0xb0(r1)
/* 80549FF0  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80549FF4  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 80549FF8  C0 1F 01 84 */	lfs f0, 0x184(r31)
/* 80549FFC  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8054A000  38 7E 01 7C */	addi r3, r30, 0x17c
/* 8054A004  D0 43 00 3C */	stfs f2, 0x3c(r3)
/* 8054A008  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 8054A00C  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 8054A010  38 63 00 3C */	addi r3, r3, 0x3c
/* 8054A014  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x805434C0@ha */
/* 8054A018  38 84 34 C0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805434C0@l */
/* 8054A01C  38 BE 00 C8 */	addi r5, r30, 0xc8
/* 8054A020  4B FF 8E 79 */	bl __register_global_object
/* 8054A024  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 8054A028  D0 41 00 A4 */	stfs f2, 0xa4(r1)
/* 8054A02C  C0 3F 02 A8 */	lfs f1, 0x2a8(r31)
/* 8054A030  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 8054A034  C0 1F 02 AC */	lfs f0, 0x2ac(r31)
/* 8054A038  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8054A03C  38 7E 01 7C */	addi r3, r30, 0x17c
/* 8054A040  D0 43 00 48 */	stfs f2, 0x48(r3)
/* 8054A044  D0 23 00 4C */	stfs f1, 0x4c(r3)
/* 8054A048  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 8054A04C  38 63 00 48 */	addi r3, r3, 0x48
/* 8054A050  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x805434C0@ha */
/* 8054A054  38 84 34 C0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805434C0@l */
/* 8054A058  38 BE 00 D4 */	addi r5, r30, 0xd4
/* 8054A05C  4B FF 8E 3D */	bl __register_global_object
/* 8054A060  C0 5F 02 B0 */	lfs f2, 0x2b0(r31)
/* 8054A064  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 8054A068  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 8054A06C  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 8054A070  C0 1F 02 B4 */	lfs f0, 0x2b4(r31)
/* 8054A074  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8054A078  38 7E 01 7C */	addi r3, r30, 0x17c
/* 8054A07C  D0 43 00 54 */	stfs f2, 0x54(r3)
/* 8054A080  D0 23 00 58 */	stfs f1, 0x58(r3)
/* 8054A084  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 8054A088  38 63 00 54 */	addi r3, r3, 0x54
/* 8054A08C  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x805434C0@ha */
/* 8054A090  38 84 34 C0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805434C0@l */
/* 8054A094  38 BE 00 E0 */	addi r5, r30, 0xe0
/* 8054A098  4B FF 8E 01 */	bl __register_global_object
/* 8054A09C  C0 5F 02 B8 */	lfs f2, 0x2b8(r31)
/* 8054A0A0  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 8054A0A4  C0 3F 02 BC */	lfs f1, 0x2bc(r31)
/* 8054A0A8  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 8054A0AC  C0 1F 02 C0 */	lfs f0, 0x2c0(r31)
/* 8054A0B0  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8054A0B4  38 7E 01 7C */	addi r3, r30, 0x17c
/* 8054A0B8  D0 43 00 60 */	stfs f2, 0x60(r3)
/* 8054A0BC  D0 23 00 64 */	stfs f1, 0x64(r3)
/* 8054A0C0  D0 03 00 68 */	stfs f0, 0x68(r3)
/* 8054A0C4  38 63 00 60 */	addi r3, r3, 0x60
/* 8054A0C8  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x805434C0@ha */
/* 8054A0CC  38 84 34 C0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805434C0@l */
/* 8054A0D0  38 BE 00 EC */	addi r5, r30, 0xec
/* 8054A0D4  4B FF 8D C5 */	bl __register_global_object
/* 8054A0D8  C0 5F 02 C4 */	lfs f2, 0x2c4(r31)
/* 8054A0DC  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 8054A0E0  C0 3F 01 68 */	lfs f1, 0x168(r31)
/* 8054A0E4  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 8054A0E8  C0 1F 02 C8 */	lfs f0, 0x2c8(r31)
/* 8054A0EC  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8054A0F0  38 7E 01 7C */	addi r3, r30, 0x17c
/* 8054A0F4  D0 43 00 6C */	stfs f2, 0x6c(r3)
/* 8054A0F8  D0 23 00 70 */	stfs f1, 0x70(r3)
/* 8054A0FC  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 8054A100  38 63 00 6C */	addi r3, r3, 0x6c
/* 8054A104  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x805434C0@ha */
/* 8054A108  38 84 34 C0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805434C0@l */
/* 8054A10C  38 BE 00 F8 */	addi r5, r30, 0xf8
/* 8054A110  4B FF 8D 89 */	bl __register_global_object
/* 8054A114  C0 5F 02 CC */	lfs f2, 0x2cc(r31)
/* 8054A118  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 8054A11C  C0 3F 02 D0 */	lfs f1, 0x2d0(r31)
/* 8054A120  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 8054A124  C0 1F 02 D4 */	lfs f0, 0x2d4(r31)
/* 8054A128  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8054A12C  38 7E 01 7C */	addi r3, r30, 0x17c
/* 8054A130  D0 43 00 78 */	stfs f2, 0x78(r3)
/* 8054A134  D0 23 00 7C */	stfs f1, 0x7c(r3)
/* 8054A138  D0 03 00 80 */	stfs f0, 0x80(r3)
/* 8054A13C  38 63 00 78 */	addi r3, r3, 0x78
/* 8054A140  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x805434C0@ha */
/* 8054A144  38 84 34 C0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805434C0@l */
/* 8054A148  38 BE 01 04 */	addi r5, r30, 0x104
/* 8054A14C  4B FF 8D 4D */	bl __register_global_object
/* 8054A150  C0 5F 02 D8 */	lfs f2, 0x2d8(r31)
/* 8054A154  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 8054A158  C0 3F 02 DC */	lfs f1, 0x2dc(r31)
/* 8054A15C  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 8054A160  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 8054A164  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8054A168  38 7E 01 7C */	addi r3, r30, 0x17c
/* 8054A16C  D0 43 00 84 */	stfs f2, 0x84(r3)
/* 8054A170  D0 23 00 88 */	stfs f1, 0x88(r3)
/* 8054A174  D0 03 00 8C */	stfs f0, 0x8c(r3)
/* 8054A178  38 63 00 84 */	addi r3, r3, 0x84
/* 8054A17C  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x805434C0@ha */
/* 8054A180  38 84 34 C0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805434C0@l */
/* 8054A184  38 BE 01 10 */	addi r5, r30, 0x110
/* 8054A188  4B FF 8D 11 */	bl __register_global_object
/* 8054A18C  C0 5F 02 E0 */	lfs f2, 0x2e0(r31)
/* 8054A190  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 8054A194  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 8054A198  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 8054A19C  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 8054A1A0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8054A1A4  38 7E 01 7C */	addi r3, r30, 0x17c
/* 8054A1A8  D0 43 00 90 */	stfs f2, 0x90(r3)
/* 8054A1AC  D0 23 00 94 */	stfs f1, 0x94(r3)
/* 8054A1B0  D0 03 00 98 */	stfs f0, 0x98(r3)
/* 8054A1B4  38 63 00 90 */	addi r3, r3, 0x90
/* 8054A1B8  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x805434C0@ha */
/* 8054A1BC  38 84 34 C0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805434C0@l */
/* 8054A1C0  38 BE 01 1C */	addi r5, r30, 0x11c
/* 8054A1C4  4B FF 8C D5 */	bl __register_global_object
/* 8054A1C8  C0 5F 02 E4 */	lfs f2, 0x2e4(r31)
/* 8054A1CC  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 8054A1D0  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 8054A1D4  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8054A1D8  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 8054A1DC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8054A1E0  38 7E 01 7C */	addi r3, r30, 0x17c
/* 8054A1E4  D0 43 00 9C */	stfs f2, 0x9c(r3)
/* 8054A1E8  D0 23 00 A0 */	stfs f1, 0xa0(r3)
/* 8054A1EC  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 8054A1F0  38 63 00 9C */	addi r3, r3, 0x9c
/* 8054A1F4  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x805434C0@ha */
/* 8054A1F8  38 84 34 C0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805434C0@l */
/* 8054A1FC  38 BE 01 28 */	addi r5, r30, 0x128
/* 8054A200  4B FF 8C 99 */	bl __register_global_object
/* 8054A204  C0 5F 02 E8 */	lfs f2, 0x2e8(r31)
/* 8054A208  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8054A20C  C0 3F 02 EC */	lfs f1, 0x2ec(r31)
/* 8054A210  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8054A214  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 8054A218  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8054A21C  38 7E 01 7C */	addi r3, r30, 0x17c
/* 8054A220  D0 43 00 A8 */	stfs f2, 0xa8(r3)
/* 8054A224  D0 23 00 AC */	stfs f1, 0xac(r3)
/* 8054A228  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 8054A22C  38 63 00 A8 */	addi r3, r3, 0xa8
/* 8054A230  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x805434C0@ha */
/* 8054A234  38 84 34 C0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805434C0@l */
/* 8054A238  38 BE 01 34 */	addi r5, r30, 0x134
/* 8054A23C  4B FF 8C 5D */	bl __register_global_object
/* 8054A240  C0 5F 02 F0 */	lfs f2, 0x2f0(r31)
/* 8054A244  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8054A248  C0 3F 02 EC */	lfs f1, 0x2ec(r31)
/* 8054A24C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8054A250  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 8054A254  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8054A258  38 7E 01 7C */	addi r3, r30, 0x17c
/* 8054A25C  D0 43 00 B4 */	stfs f2, 0xb4(r3)
/* 8054A260  D0 23 00 B8 */	stfs f1, 0xb8(r3)
/* 8054A264  D0 03 00 BC */	stfs f0, 0xbc(r3)
/* 8054A268  38 63 00 B4 */	addi r3, r3, 0xb4
/* 8054A26C  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x805434C0@ha */
/* 8054A270  38 84 34 C0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805434C0@l */
/* 8054A274  38 BE 01 40 */	addi r5, r30, 0x140
/* 8054A278  4B FF 8C 21 */	bl __register_global_object
/* 8054A27C  C0 5F 02 F4 */	lfs f2, 0x2f4(r31)
/* 8054A280  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8054A284  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 8054A288  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8054A28C  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 8054A290  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8054A294  38 7E 01 7C */	addi r3, r30, 0x17c
/* 8054A298  D0 43 00 C0 */	stfs f2, 0xc0(r3)
/* 8054A29C  D0 23 00 C4 */	stfs f1, 0xc4(r3)
/* 8054A2A0  D0 03 00 C8 */	stfs f0, 0xc8(r3)
/* 8054A2A4  38 63 00 C0 */	addi r3, r3, 0xc0
/* 8054A2A8  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x805434C0@ha */
/* 8054A2AC  38 84 34 C0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805434C0@l */
/* 8054A2B0  38 BE 01 4C */	addi r5, r30, 0x14c
/* 8054A2B4  4B FF 8B E5 */	bl __register_global_object
/* 8054A2B8  C0 5F 02 F8 */	lfs f2, 0x2f8(r31)
/* 8054A2BC  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8054A2C0  C0 3F 01 34 */	lfs f1, 0x134(r31)
/* 8054A2C4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8054A2C8  C0 1F 02 FC */	lfs f0, 0x2fc(r31)
/* 8054A2CC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8054A2D0  38 7E 01 7C */	addi r3, r30, 0x17c
/* 8054A2D4  D0 43 00 CC */	stfs f2, 0xcc(r3)
/* 8054A2D8  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 8054A2DC  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 8054A2E0  38 63 00 CC */	addi r3, r3, 0xcc
/* 8054A2E4  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x805434C0@ha */
/* 8054A2E8  38 84 34 C0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805434C0@l */
/* 8054A2EC  38 BE 01 58 */	addi r5, r30, 0x158
/* 8054A2F0  4B FF 8B A9 */	bl __register_global_object
/* 8054A2F4  C0 5F 03 00 */	lfs f2, 0x300(r31)
/* 8054A2F8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8054A2FC  C0 3F 01 70 */	lfs f1, 0x170(r31)
/* 8054A300  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8054A304  C0 1F 03 04 */	lfs f0, 0x304(r31)
/* 8054A308  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8054A30C  38 7E 01 7C */	addi r3, r30, 0x17c
/* 8054A310  D0 43 00 D8 */	stfs f2, 0xd8(r3)
/* 8054A314  D0 23 00 DC */	stfs f1, 0xdc(r3)
/* 8054A318  D0 03 00 E0 */	stfs f0, 0xe0(r3)
/* 8054A31C  38 63 00 D8 */	addi r3, r3, 0xd8
/* 8054A320  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x805434C0@ha */
/* 8054A324  38 84 34 C0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805434C0@l */
/* 8054A328  38 BE 01 64 */	addi r5, r30, 0x164
/* 8054A32C  4B FF 8B 6D */	bl __register_global_object
/* 8054A330  C0 5F 03 08 */	lfs f2, 0x308(r31)
/* 8054A334  D0 41 00 08 */	stfs f2, 8(r1)
/* 8054A338  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 8054A33C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8054A340  C0 1F 01 AC */	lfs f0, 0x1ac(r31)
/* 8054A344  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8054A348  38 7E 01 7C */	addi r3, r30, 0x17c
/* 8054A34C  D0 43 00 E4 */	stfs f2, 0xe4(r3)
/* 8054A350  D0 23 00 E8 */	stfs f1, 0xe8(r3)
/* 8054A354  D0 03 00 EC */	stfs f0, 0xec(r3)
/* 8054A358  38 63 00 E4 */	addi r3, r3, 0xe4
/* 8054A35C  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha /* 0x805434C0@ha */
/* 8054A360  38 84 34 C0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805434C0@l */
/* 8054A364  38 BE 01 70 */	addi r5, r30, 0x170
/* 8054A368  4B FF 8B 31 */	bl __register_global_object
/* 8054A36C  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 8054A370  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 8054A374  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8054A378  7C 08 03 A6 */	mtlr r0
/* 8054A37C  38 21 01 00 */	addi r1, r1, 0x100
/* 8054A380  4E 80 00 20 */	blr 
