lbl_80A48F8C:
/* 80A48F8C  3C 80 80 A6 */	lis r4, lit_4030@ha
/* 80A48F90  38 A4 DE FC */	addi r5, r4, lit_4030@l
/* 80A48F94  3C 80 80 A6 */	lis r4, __vt__14daNpc_Ks_HIO_c@ha
/* 80A48F98  38 04 FE 30 */	addi r0, r4, __vt__14daNpc_Ks_HIO_c@l
/* 80A48F9C  90 03 00 00 */	stw r0, 0(r3)
/* 80A48FA0  38 00 FF FF */	li r0, -1
/* 80A48FA4  98 03 00 04 */	stb r0, 4(r3)
/* 80A48FA8  C0 05 00 00 */	lfs f0, 0(r5)
/* 80A48FAC  D0 03 00 08 */	stfs f0, 8(r3)
/* 80A48FB0  C0 05 00 04 */	lfs f0, 4(r5)
/* 80A48FB4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80A48FB8  C0 45 00 08 */	lfs f2, 8(r5)
/* 80A48FBC  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 80A48FC0  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80A48FC4  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 80A48FC8  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 80A48FCC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80A48FD0  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80A48FD4  D0 43 00 20 */	stfs f2, 0x20(r3)
/* 80A48FD8  C0 05 00 14 */	lfs f0, 0x14(r5)
/* 80A48FDC  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 80A48FE0  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 80A48FE4  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80A48FE8  C0 05 00 1C */	lfs f0, 0x1c(r5)
/* 80A48FEC  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 80A48FF0  38 00 00 01 */	li r0, 1
/* 80A48FF4  98 03 00 28 */	stb r0, 0x28(r3)
/* 80A48FF8  D0 43 00 2C */	stfs f2, 0x2c(r3)
/* 80A48FFC  4E 80 00 20 */	blr 
