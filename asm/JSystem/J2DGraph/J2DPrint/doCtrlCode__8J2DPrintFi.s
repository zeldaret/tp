lbl_802F52E8:
/* 802F52E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F52EC  38 04 FF F8 */	addi r0, r4, -8
/* 802F52F0  28 00 00 17 */	cmplwi r0, 0x17
/* 802F52F4  41 81 01 14 */	bgt lbl_802F5408
/* 802F52F8  3C 80 80 3D */	lis r4, lit_938@ha /* 0x803CCF40@ha */
/* 802F52FC  38 84 CF 40 */	addi r4, r4, lit_938@l /* 0x803CCF40@l */
/* 802F5300  54 00 10 3A */	slwi r0, r0, 2
/* 802F5304  7C 04 00 2E */	lwzx r0, r4, r0
/* 802F5308  7C 09 03 A6 */	mtctr r0
/* 802F530C  4E 80 04 20 */	bctr 
/* 802F5310  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 802F5314  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 802F5318  EC 01 00 28 */	fsubs f0, f1, f0
/* 802F531C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802F5320  C0 02 C7 C8 */	lfs f0, lit_418(r2)
/* 802F5324  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 802F5328  48 00 00 E0 */	b lbl_802F5408
/* 802F532C  A8 83 00 20 */	lha r4, 0x20(r3)
/* 802F5330  7C 80 07 35 */	extsh. r0, r4
/* 802F5334  40 81 00 D4 */	ble lbl_802F5408
/* 802F5338  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 802F533C  FC 00 10 1E */	fctiwz f0, f2
/* 802F5340  D8 01 00 08 */	stfd f0, 8(r1)
/* 802F5344  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802F5348  7C 00 23 D6 */	divw r0, r0, r4
/* 802F534C  7C 04 01 D6 */	mullw r0, r4, r0
/* 802F5350  7C 04 02 14 */	add r0, r4, r0
/* 802F5354  C8 22 C7 D0 */	lfd f1, lit_650(r2)
/* 802F5358  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802F535C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F5360  3C 00 43 30 */	lis r0, 0x4330
/* 802F5364  90 01 00 10 */	stw r0, 0x10(r1)
/* 802F5368  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802F536C  EC 00 08 28 */	fsubs f0, f0, f1
/* 802F5370  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802F5374  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 802F5378  EC 00 10 28 */	fsubs f0, f0, f2
/* 802F537C  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 802F5380  48 00 00 88 */	b lbl_802F5408
/* 802F5384  C0 02 C7 C8 */	lfs f0, lit_418(r2)
/* 802F5388  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 802F538C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 802F5390  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802F5394  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 802F5398  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 802F539C  EC 01 00 2A */	fadds f0, f1, f0
/* 802F53A0  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 802F53A4  48 00 00 64 */	b lbl_802F5408
/* 802F53A8  C0 02 C7 C8 */	lfs f0, lit_418(r2)
/* 802F53AC  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 802F53B0  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 802F53B4  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802F53B8  48 00 00 50 */	b lbl_802F5408
/* 802F53BC  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 802F53C0  C0 02 C7 EC */	lfs f0, lit_937(r2)
/* 802F53C4  EC 01 00 2A */	fadds f0, f1, f0
/* 802F53C8  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802F53CC  48 00 00 3C */	b lbl_802F5408
/* 802F53D0  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 802F53D4  C0 02 C7 EC */	lfs f0, lit_937(r2)
/* 802F53D8  EC 01 00 28 */	fsubs f0, f1, f0
/* 802F53DC  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802F53E0  48 00 00 28 */	b lbl_802F5408
/* 802F53E4  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 802F53E8  C0 02 C7 EC */	lfs f0, lit_937(r2)
/* 802F53EC  EC 01 00 28 */	fsubs f0, f1, f0
/* 802F53F0  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 802F53F4  48 00 00 14 */	b lbl_802F5408
/* 802F53F8  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 802F53FC  C0 02 C7 EC */	lfs f0, lit_937(r2)
/* 802F5400  EC 01 00 2A */	fadds f0, f1, f0
/* 802F5404  D0 03 00 30 */	stfs f0, 0x30(r3)
lbl_802F5408:
/* 802F5408  38 21 00 20 */	addi r1, r1, 0x20
/* 802F540C  4E 80 00 20 */	blr 
