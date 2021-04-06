lbl_806AD90C:
/* 806AD90C  3C 80 80 6B */	lis r4, lit_3792@ha /* 0x806B5CD4@ha */
/* 806AD910  38 A4 5C D4 */	addi r5, r4, lit_3792@l /* 0x806B5CD4@l */
/* 806AD914  3C 80 80 6B */	lis r4, __vt__12daE_DT_HIO_c@ha /* 0x806B6248@ha */
/* 806AD918  38 04 62 48 */	addi r0, r4, __vt__12daE_DT_HIO_c@l /* 0x806B6248@l */
/* 806AD91C  90 03 00 00 */	stw r0, 0(r3)
/* 806AD920  38 00 FF FF */	li r0, -1
/* 806AD924  98 03 00 04 */	stb r0, 4(r3)
/* 806AD928  C0 05 00 00 */	lfs f0, 0(r5)
/* 806AD92C  D0 03 00 08 */	stfs f0, 8(r3)
/* 806AD930  C0 05 00 04 */	lfs f0, 4(r5)
/* 806AD934  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 806AD938  C0 05 00 08 */	lfs f0, 8(r5)
/* 806AD93C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 806AD940  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 806AD944  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 806AD948  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 806AD94C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 806AD950  C0 05 00 14 */	lfs f0, 0x14(r5)
/* 806AD954  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806AD958  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 806AD95C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 806AD960  C0 05 00 1C */	lfs f0, 0x1c(r5)
/* 806AD964  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 806AD968  C0 05 00 20 */	lfs f0, 0x20(r5)
/* 806AD96C  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 806AD970  C0 05 00 24 */	lfs f0, 0x24(r5)
/* 806AD974  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 806AD978  4E 80 00 20 */	blr 
