lbl_80D022AC:
/* 80D022AC  3C 80 80 D0 */	lis r4, lit_3662@ha /* 0x80D03F90@ha */
/* 80D022B0  38 A4 3F 90 */	addi r5, r4, lit_3662@l /* 0x80D03F90@l */
/* 80D022B4  3C 80 80 D0 */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80D0424C@ha */
/* 80D022B8  38 04 42 4C */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80D0424C@l */
/* 80D022BC  90 03 00 00 */	stw r0, 0(r3)
/* 80D022C0  3C 80 80 D0 */	lis r4, __vt__14daSyRock_HIO_c@ha /* 0x80D04240@ha */
/* 80D022C4  38 04 42 40 */	addi r0, r4, __vt__14daSyRock_HIO_c@l /* 0x80D04240@l */
/* 80D022C8  90 03 00 00 */	stw r0, 0(r3)
/* 80D022CC  C0 05 00 00 */	lfs f0, 0(r5)
/* 80D022D0  D0 03 00 04 */	stfs f0, 4(r3)
/* 80D022D4  C0 05 00 04 */	lfs f0, 4(r5)
/* 80D022D8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80D022DC  C0 05 00 08 */	lfs f0, 8(r5)
/* 80D022E0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D022E4  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80D022E8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80D022EC  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 80D022F0  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 80D022F4  C0 05 00 14 */	lfs f0, 0x14(r5)
/* 80D022F8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80D022FC  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 80D02300  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80D02304  C0 05 00 1C */	lfs f0, 0x1c(r5)
/* 80D02308  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80D0230C  38 00 00 1E */	li r0, 0x1e
/* 80D02310  98 03 00 24 */	stb r0, 0x24(r3)
/* 80D02314  C0 05 00 20 */	lfs f0, 0x20(r5)
/* 80D02318  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80D0231C  38 00 00 04 */	li r0, 4
/* 80D02320  98 03 00 25 */	stb r0, 0x25(r3)
/* 80D02324  C0 05 00 24 */	lfs f0, 0x24(r5)
/* 80D02328  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80D0232C  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 80D02330  4E 80 00 20 */	blr 
