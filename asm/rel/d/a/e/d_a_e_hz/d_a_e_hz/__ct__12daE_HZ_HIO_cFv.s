lbl_806EA60C:
/* 806EA60C  3C 80 80 6F */	lis r4, lit_3966@ha /* 0x806F0860@ha */
/* 806EA610  38 A4 08 60 */	addi r5, r4, lit_3966@l /* 0x806F0860@l */
/* 806EA614  3C 80 80 6F */	lis r4, __vt__12daE_HZ_HIO_c@ha /* 0x806F0B18@ha */
/* 806EA618  38 04 0B 18 */	addi r0, r4, __vt__12daE_HZ_HIO_c@l /* 0x806F0B18@l */
/* 806EA61C  90 03 00 00 */	stw r0, 0(r3)
/* 806EA620  38 00 FF FF */	li r0, -1
/* 806EA624  98 03 00 04 */	stb r0, 4(r3)
/* 806EA628  C0 25 00 08 */	lfs f1, 8(r5)
/* 806EA62C  D0 23 00 08 */	stfs f1, 8(r3)
/* 806EA630  38 00 00 00 */	li r0, 0
/* 806EA634  98 03 00 0C */	stb r0, 0xc(r3)
/* 806EA638  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 806EA63C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 806EA640  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 806EA644  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 806EA648  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 806EA64C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806EA650  C0 05 00 38 */	lfs f0, 0x38(r5)
/* 806EA654  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 806EA658  C0 05 00 3C */	lfs f0, 0x3c(r5)
/* 806EA65C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 806EA660  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 806EA664  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 806EA668  C0 05 00 44 */	lfs f0, 0x44(r5)
/* 806EA66C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 806EA670  C0 05 00 48 */	lfs f0, 0x48(r5)
/* 806EA674  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 806EA678  C0 05 00 4C */	lfs f0, 0x4c(r5)
/* 806EA67C  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 806EA680  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 806EA684  C0 05 00 50 */	lfs f0, 0x50(r5)
/* 806EA688  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 806EA68C  4E 80 00 20 */	blr 
