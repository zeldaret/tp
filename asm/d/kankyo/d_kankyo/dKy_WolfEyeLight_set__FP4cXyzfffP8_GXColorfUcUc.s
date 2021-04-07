lbl_801AAC5C:
/* 801AAC5C  3C E0 80 43 */	lis r7, g_env_light@ha /* 0x8042CA54@ha */
/* 801AAC60  38 E7 CA 54 */	addi r7, r7, g_env_light@l /* 0x8042CA54@l */
/* 801AAC64  C0 03 00 00 */	lfs f0, 0(r3)
/* 801AAC68  D0 07 0C 18 */	stfs f0, 0xc18(r7)
/* 801AAC6C  C0 03 00 04 */	lfs f0, 4(r3)
/* 801AAC70  D0 07 0C 1C */	stfs f0, 0xc1c(r7)
/* 801AAC74  C0 03 00 08 */	lfs f0, 8(r3)
/* 801AAC78  D0 07 0C 20 */	stfs f0, 0xc20(r7)
/* 801AAC7C  88 04 00 00 */	lbz r0, 0(r4)
/* 801AAC80  98 07 0C 24 */	stb r0, 0xc24(r7)
/* 801AAC84  88 04 00 01 */	lbz r0, 1(r4)
/* 801AAC88  98 07 0C 25 */	stb r0, 0xc25(r7)
/* 801AAC8C  88 04 00 02 */	lbz r0, 2(r4)
/* 801AAC90  98 07 0C 26 */	stb r0, 0xc26(r7)
/* 801AAC94  38 00 00 FF */	li r0, 0xff
/* 801AAC98  98 07 0C 27 */	stb r0, 0xc27(r7)
/* 801AAC9C  D0 87 0C 28 */	stfs f4, 0xc28(r7)
/* 801AACA0  C0 02 A2 90 */	lfs f0, lit_5191(r2)
/* 801AACA4  D0 07 0C 2C */	stfs f0, 0xc2c(r7)
/* 801AACA8  D0 67 0C 30 */	stfs f3, 0xc30(r7)
/* 801AACAC  D0 27 0C 34 */	stfs f1, 0xc34(r7)
/* 801AACB0  C0 02 A2 2C */	lfs f0, lit_4442(r2)
/* 801AACB4  EC 00 10 2A */	fadds f0, f0, f2
/* 801AACB8  D0 07 0C 38 */	stfs f0, 0xc38(r7)
/* 801AACBC  98 A7 0C 3C */	stb r5, 0xc3c(r7)
/* 801AACC0  98 C7 0C 3D */	stb r6, 0xc3d(r7)
/* 801AACC4  88 07 13 09 */	lbz r0, 0x1309(r7)
/* 801AACC8  2C 00 00 02 */	cmpwi r0, 2
/* 801AACCC  41 82 00 3C */	beq lbl_801AAD08
/* 801AACD0  40 80 00 48 */	bge lbl_801AAD18
/* 801AACD4  2C 00 00 00 */	cmpwi r0, 0
/* 801AACD8  41 82 00 10 */	beq lbl_801AACE8
/* 801AACDC  40 80 00 1C */	bge lbl_801AACF8
/* 801AACE0  48 00 00 38 */	b lbl_801AAD18
/* 801AACE4  48 00 00 34 */	b lbl_801AAD18
lbl_801AACE8:
/* 801AACE8  C0 02 A3 AC */	lfs f0, lit_8975(r2)
/* 801AACEC  C0 22 A2 48 */	lfs f1, lit_4505(r2)
/* 801AACF0  C0 42 A3 88 */	lfs f2, lit_7026(r2)
/* 801AACF4  48 00 00 30 */	b lbl_801AAD24
lbl_801AACF8:
/* 801AACF8  C0 02 A2 8C */	lfs f0, lit_5106(r2)
/* 801AACFC  C0 22 A2 48 */	lfs f1, lit_4505(r2)
/* 801AAD00  FC 40 08 90 */	fmr f2, f1
/* 801AAD04  48 00 00 20 */	b lbl_801AAD24
lbl_801AAD08:
/* 801AAD08  C0 02 A3 C8 */	lfs f0, lit_9676(r2)
/* 801AAD0C  C0 22 A3 CC */	lfs f1, lit_9677(r2)
/* 801AAD10  FC 40 08 90 */	fmr f2, f1
/* 801AAD14  48 00 00 10 */	b lbl_801AAD24
lbl_801AAD18:
/* 801AAD18  C0 02 A1 FC */	lfs f0, lit_4360(r2)
/* 801AAD1C  C0 22 A2 58 */	lfs f1, lit_4509(r2)
/* 801AAD20  C0 42 A3 CC */	lfs f2, lit_9677(r2)
lbl_801AAD24:
/* 801AAD24  D0 07 12 7C */	stfs f0, 0x127c(r7)
/* 801AAD28  C0 07 0C 28 */	lfs f0, 0xc28(r7)
/* 801AAD2C  EC 00 00 72 */	fmuls f0, f0, f1
/* 801AAD30  D0 07 0C 28 */	stfs f0, 0xc28(r7)
/* 801AAD34  C0 07 0C 30 */	lfs f0, 0xc30(r7)
/* 801AAD38  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801AAD3C  D0 07 0C 30 */	stfs f0, 0xc30(r7)
/* 801AAD40  38 00 00 01 */	li r0, 1
/* 801AAD44  98 07 0C 3E */	stb r0, 0xc3e(r7)
/* 801AAD48  38 60 00 01 */	li r3, 1
/* 801AAD4C  4E 80 00 20 */	blr 
