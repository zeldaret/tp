lbl_806FA70C:
/* 806FA70C  3C 80 80 70 */	lis r4, lit_3792@ha /* 0x806FF5E8@ha */
/* 806FA710  38 A4 F5 E8 */	addi r5, r4, lit_3792@l /* 0x806FF5E8@l */
/* 806FA714  3C 80 80 70 */	lis r4, __vt__12daE_KK_HIO_c@ha /* 0x806FF868@ha */
/* 806FA718  38 04 F8 68 */	addi r0, r4, __vt__12daE_KK_HIO_c@l /* 0x806FF868@l */
/* 806FA71C  90 03 00 00 */	stw r0, 0(r3)
/* 806FA720  38 00 FF FF */	li r0, -1
/* 806FA724  98 03 00 04 */	stb r0, 4(r3)
/* 806FA728  C0 05 00 08 */	lfs f0, 8(r5)
/* 806FA72C  D0 03 00 08 */	stfs f0, 8(r3)
/* 806FA730  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 806FA734  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 806FA738  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 806FA73C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 806FA740  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 806FA744  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 806FA748  38 00 00 64 */	li r0, 0x64
/* 806FA74C  B0 03 00 18 */	sth r0, 0x18(r3)
/* 806FA750  38 00 00 00 */	li r0, 0
/* 806FA754  98 03 00 1A */	stb r0, 0x1a(r3)
/* 806FA758  4E 80 00 20 */	blr 
