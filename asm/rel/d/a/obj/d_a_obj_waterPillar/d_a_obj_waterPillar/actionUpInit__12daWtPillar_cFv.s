lbl_80D2D7B8:
/* 80D2D7B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2D7BC  3C 80 80 D3 */	lis r4, lit_3645@ha /* 0x80D2E770@ha */
/* 80D2D7C0  38 84 E7 70 */	addi r4, r4, lit_3645@l /* 0x80D2E770@l */
/* 80D2D7C4  C0 64 00 84 */	lfs f3, 0x84(r4)
/* 80D2D7C8  C0 44 00 8C */	lfs f2, 0x8c(r4)
/* 80D2D7CC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D2D7D0  54 00 56 FE */	rlwinm r0, r0, 0xa, 0x1b, 0x1f
/* 80D2D7D4  C8 24 00 98 */	lfd f1, 0x98(r4)
/* 80D2D7D8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D2D7DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D2D7E0  3C 00 43 30 */	lis r0, 0x4330
/* 80D2D7E4  90 01 00 08 */	stw r0, 8(r1)
/* 80D2D7E8  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D2D7EC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D2D7F0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D2D7F4  EC 23 00 32 */	fmuls f1, f3, f0
/* 80D2D7F8  C0 04 00 AC */	lfs f0, 0xac(r4)
/* 80D2D7FC  EC 01 00 24 */	fdivs f0, f1, f0
/* 80D2D800  D0 03 0B 04 */	stfs f0, 0xb04(r3)
/* 80D2D804  88 03 0B 79 */	lbz r0, 0xb79(r3)
/* 80D2D808  28 00 00 00 */	cmplwi r0, 0
/* 80D2D80C  41 82 00 10 */	beq lbl_80D2D81C
/* 80D2D810  C0 04 00 C4 */	lfs f0, 0xc4(r4)
/* 80D2D814  D0 03 0B 18 */	stfs f0, 0xb18(r3)
/* 80D2D818  48 00 00 0C */	b lbl_80D2D824
lbl_80D2D81C:
/* 80D2D81C  C0 04 00 90 */	lfs f0, 0x90(r4)
/* 80D2D820  D0 03 0B 18 */	stfs f0, 0xb18(r3)
lbl_80D2D824:
/* 80D2D824  38 00 00 00 */	li r0, 0
/* 80D2D828  98 03 0B 46 */	stb r0, 0xb46(r3)
/* 80D2D82C  38 00 00 01 */	li r0, 1
/* 80D2D830  98 03 0B 45 */	stb r0, 0xb45(r3)
/* 80D2D834  98 03 0B 78 */	stb r0, 0xb78(r3)
/* 80D2D838  C0 04 00 90 */	lfs f0, 0x90(r4)
/* 80D2D83C  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80D2D840  38 00 00 04 */	li r0, 4
/* 80D2D844  98 03 0B 00 */	stb r0, 0xb00(r3)
/* 80D2D848  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2D84C  4E 80 00 20 */	blr 
