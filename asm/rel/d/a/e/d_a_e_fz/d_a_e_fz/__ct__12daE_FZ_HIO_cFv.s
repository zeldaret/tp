lbl_806BE94C:
/* 806BE94C  3C 80 80 6C */	lis r4, lit_3803@ha /* 0x806C1938@ha */
/* 806BE950  38 A4 19 38 */	addi r5, r4, lit_3803@l /* 0x806C1938@l */
/* 806BE954  3C 80 80 6C */	lis r4, __vt__12daE_FZ_HIO_c@ha /* 0x806C1B8C@ha */
/* 806BE958  38 04 1B 8C */	addi r0, r4, __vt__12daE_FZ_HIO_c@l /* 0x806C1B8C@l */
/* 806BE95C  90 03 00 00 */	stw r0, 0(r3)
/* 806BE960  38 00 FF FF */	li r0, -1
/* 806BE964  98 03 00 04 */	stb r0, 4(r3)
/* 806BE968  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 806BE96C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 806BE970  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 806BE974  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 806BE978  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 806BE97C  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 806BE980  C0 05 00 38 */	lfs f0, 0x38(r5)
/* 806BE984  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806BE988  C0 05 00 3C */	lfs f0, 0x3c(r5)
/* 806BE98C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 806BE990  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 806BE994  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 806BE998  C0 05 00 44 */	lfs f0, 0x44(r5)
/* 806BE99C  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 806BE9A0  C0 05 00 48 */	lfs f0, 0x48(r5)
/* 806BE9A4  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 806BE9A8  C0 05 00 4C */	lfs f0, 0x4c(r5)
/* 806BE9AC  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 806BE9B0  38 00 00 28 */	li r0, 0x28
/* 806BE9B4  B0 03 00 06 */	sth r0, 6(r3)
/* 806BE9B8  C0 05 00 50 */	lfs f0, 0x50(r5)
/* 806BE9BC  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 806BE9C0  38 00 00 78 */	li r0, 0x78
/* 806BE9C4  B0 03 00 08 */	sth r0, 8(r3)
/* 806BE9C8  C0 05 00 54 */	lfs f0, 0x54(r5)
/* 806BE9CC  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 806BE9D0  4E 80 00 20 */	blr 
