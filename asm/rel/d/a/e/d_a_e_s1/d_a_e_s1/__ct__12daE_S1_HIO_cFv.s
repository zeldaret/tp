lbl_8077AB8C:
/* 8077AB8C  3C 80 80 78 */	lis r4, lit_3903@ha
/* 8077AB90  38 A4 0D C4 */	addi r5, r4, lit_3903@l
/* 8077AB94  3C 80 80 78 */	lis r4, __vt__12daE_S1_HIO_c@ha
/* 8077AB98  38 04 13 28 */	addi r0, r4, __vt__12daE_S1_HIO_c@l
/* 8077AB9C  90 03 00 00 */	stw r0, 0(r3)
/* 8077ABA0  38 00 FF FF */	li r0, -1
/* 8077ABA4  98 03 00 04 */	stb r0, 4(r3)
/* 8077ABA8  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 8077ABAC  D0 03 00 08 */	stfs f0, 8(r3)
/* 8077ABB0  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 8077ABB4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8077ABB8  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 8077ABBC  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8077ABC0  C0 05 00 38 */	lfs f0, 0x38(r5)
/* 8077ABC4  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8077ABC8  38 80 00 14 */	li r4, 0x14
/* 8077ABCC  B0 83 00 1C */	sth r4, 0x1c(r3)
/* 8077ABD0  38 00 00 64 */	li r0, 0x64
/* 8077ABD4  B0 03 00 1E */	sth r0, 0x1e(r3)
/* 8077ABD8  C0 05 00 3C */	lfs f0, 0x3c(r5)
/* 8077ABDC  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8077ABE0  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 8077ABE4  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 8077ABE8  B0 83 00 28 */	sth r4, 0x28(r3)
/* 8077ABEC  38 00 00 00 */	li r0, 0
/* 8077ABF0  98 03 00 2A */	stb r0, 0x2a(r3)
/* 8077ABF4  4E 80 00 20 */	blr 
