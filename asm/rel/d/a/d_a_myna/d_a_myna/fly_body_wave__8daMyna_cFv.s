lbl_80948DFC:
/* 80948DFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80948E00  88 03 09 35 */	lbz r0, 0x935(r3)
/* 80948E04  28 00 00 00 */	cmplwi r0, 0
/* 80948E08  40 82 00 74 */	bne lbl_80948E7C
/* 80948E0C  A8 C3 09 1A */	lha r6, 0x91a(r3)
/* 80948E10  3C 80 80 95 */	lis r4, l_HOSTIO@ha /* 0x8094BA3C@ha */
/* 80948E14  38 A4 BA 3C */	addi r5, r4, l_HOSTIO@l /* 0x8094BA3C@l */
/* 80948E18  A8 05 00 2E */	lha r0, 0x2e(r5)
/* 80948E1C  7C 06 02 14 */	add r0, r6, r0
/* 80948E20  B0 03 09 1A */	sth r0, 0x91a(r3)
/* 80948E24  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80948E28  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80948E2C  A8 03 09 1A */	lha r0, 0x91a(r3)
/* 80948E30  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80948E34  7C 84 02 14 */	add r4, r4, r0
/* 80948E38  C0 44 00 04 */	lfs f2, 4(r4)
/* 80948E3C  A8 05 00 2C */	lha r0, 0x2c(r5)
/* 80948E40  3C 80 80 95 */	lis r4, lit_5332@ha /* 0x8094B238@ha */
/* 80948E44  C8 24 B2 38 */	lfd f1, lit_5332@l(r4)  /* 0x8094B238@l */
/* 80948E48  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80948E4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80948E50  3C 00 43 30 */	lis r0, 0x4330
/* 80948E54  90 01 00 08 */	stw r0, 8(r1)
/* 80948E58  C8 01 00 08 */	lfd f0, 8(r1)
/* 80948E5C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80948E60  EC 20 00 B2 */	fmuls f1, f0, f2
/* 80948E64  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80948E68  EC 00 08 2A */	fadds f0, f0, f1
/* 80948E6C  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80948E70  C0 03 08 60 */	lfs f0, 0x860(r3)
/* 80948E74  EC 00 08 2A */	fadds f0, f0, f1
/* 80948E78  D0 03 08 60 */	stfs f0, 0x860(r3)
lbl_80948E7C:
/* 80948E7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80948E80  4E 80 00 20 */	blr 
