lbl_8073A2CC:
/* 8073A2CC  3C 80 80 74 */	lis r4, lit_3910@ha
/* 8073A2D0  38 A4 CE A8 */	addi r5, r4, lit_3910@l
/* 8073A2D4  3C 80 80 74 */	lis r4, __vt__12daE_OT_HIO_c@ha
/* 8073A2D8  38 04 D2 58 */	addi r0, r4, __vt__12daE_OT_HIO_c@l
/* 8073A2DC  90 03 00 00 */	stw r0, 0(r3)
/* 8073A2E0  38 00 FF FF */	li r0, -1
/* 8073A2E4  98 03 00 04 */	stb r0, 4(r3)
/* 8073A2E8  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 8073A2EC  D0 03 00 08 */	stfs f0, 8(r3)
/* 8073A2F0  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 8073A2F4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8073A2F8  C0 05 00 04 */	lfs f0, 4(r5)
/* 8073A2FC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8073A300  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8073A304  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8073A308  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 8073A30C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8073A310  4E 80 00 20 */	blr 
