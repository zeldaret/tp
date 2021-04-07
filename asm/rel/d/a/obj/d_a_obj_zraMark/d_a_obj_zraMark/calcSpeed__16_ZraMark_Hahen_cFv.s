lbl_80D43808:
/* 80D43808  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D4380C  A8 03 03 BC */	lha r0, 0x3bc(r3)
/* 80D43810  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D43814  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80D43818  38 A4 9A 20 */	addi r5, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80D4381C  7C 05 04 2E */	lfsx f0, r5, r0
/* 80D43820  C0 63 03 C0 */	lfs f3, 0x3c0(r3)
/* 80D43824  EC 43 00 32 */	fmuls f2, f3, f0
/* 80D43828  D0 41 00 08 */	stfs f2, 8(r1)
/* 80D4382C  C0 23 03 9C */	lfs f1, 0x39c(r3)
/* 80D43830  3C 80 80 D4 */	lis r4, lit_4571@ha /* 0x80D43F8C@ha */
/* 80D43834  C0 04 3F 8C */	lfs f0, lit_4571@l(r4)  /* 0x80D43F8C@l */
/* 80D43838  EC 21 00 28 */	fsubs f1, f1, f0
/* 80D4383C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80D43840  7C 85 02 14 */	add r4, r5, r0
/* 80D43844  C0 04 00 04 */	lfs f0, 4(r4)
/* 80D43848  EC 03 00 32 */	fmuls f0, f3, f0
/* 80D4384C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D43850  D0 43 03 98 */	stfs f2, 0x398(r3)
/* 80D43854  D0 23 03 9C */	stfs f1, 0x39c(r3)
/* 80D43858  D0 03 03 A0 */	stfs f0, 0x3a0(r3)
/* 80D4385C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D43860  4E 80 00 20 */	blr 
