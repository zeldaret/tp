lbl_805AA19C:
/* 805AA19C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AA1A0  3C 60 80 5B */	lis r3, lit_3864@ha /* 0x805AA454@ha */
/* 805AA1A4  38 83 A4 54 */	addi r4, r3, lit_3864@l /* 0x805AA454@l */
/* 805AA1A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805AA1AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805AA1B0  80 A3 5D AC */	lwz r5, 0x5dac(r3)
/* 805AA1B4  88 03 09 74 */	lbz r0, 0x974(r3)
/* 805AA1B8  28 00 00 00 */	cmplwi r0, 0
/* 805AA1BC  40 82 00 0C */	bne lbl_805AA1C8
/* 805AA1C0  38 60 00 00 */	li r3, 0
/* 805AA1C4  48 00 00 58 */	b lbl_805AA21C
lbl_805AA1C8:
/* 805AA1C8  C0 45 04 D0 */	lfs f2, 0x4d0(r5)
/* 805AA1CC  D0 41 00 08 */	stfs f2, 8(r1)
/* 805AA1D0  C0 05 04 D4 */	lfs f0, 0x4d4(r5)
/* 805AA1D4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805AA1D8  C0 25 04 D8 */	lfs f1, 0x4d8(r5)
/* 805AA1DC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805AA1E0  C0 04 00 58 */	lfs f0, 0x58(r4)
/* 805AA1E4  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 805AA1E8  40 80 00 30 */	bge lbl_805AA218
/* 805AA1EC  C0 04 00 5C */	lfs f0, 0x5c(r4)
/* 805AA1F0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805AA1F4  40 80 00 24 */	bge lbl_805AA218
/* 805AA1F8  C0 04 00 60 */	lfs f0, 0x60(r4)
/* 805AA1FC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805AA200  40 80 00 18 */	bge lbl_805AA218
/* 805AA204  C0 04 00 64 */	lfs f0, 0x64(r4)
/* 805AA208  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AA20C  40 80 00 0C */	bge lbl_805AA218
/* 805AA210  38 60 00 01 */	li r3, 1
/* 805AA214  48 00 00 08 */	b lbl_805AA21C
lbl_805AA218:
/* 805AA218  38 60 00 00 */	li r3, 0
lbl_805AA21C:
/* 805AA21C  38 21 00 20 */	addi r1, r1, 0x20
/* 805AA220  4E 80 00 20 */	blr 
