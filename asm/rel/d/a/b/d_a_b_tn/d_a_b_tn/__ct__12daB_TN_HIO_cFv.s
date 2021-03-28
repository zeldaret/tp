lbl_8061EBEC:
/* 8061EBEC  3C 80 80 63 */	lis r4, lit_3920@ha
/* 8061EBF0  38 A4 E6 34 */	addi r5, r4, lit_3920@l
/* 8061EBF4  3C 80 80 63 */	lis r4, __vt__12daB_TN_HIO_c@ha
/* 8061EBF8  38 04 EF CC */	addi r0, r4, __vt__12daB_TN_HIO_c@l
/* 8061EBFC  90 03 00 00 */	stw r0, 0(r3)
/* 8061EC00  38 00 FF FF */	li r0, -1
/* 8061EC04  98 03 00 04 */	stb r0, 4(r3)
/* 8061EC08  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 8061EC0C  D0 03 00 08 */	stfs f0, 8(r3)
/* 8061EC10  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 8061EC14  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8061EC18  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 8061EC1C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8061EC20  C0 05 00 38 */	lfs f0, 0x38(r5)
/* 8061EC24  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8061EC28  C0 05 00 3C */	lfs f0, 0x3c(r5)
/* 8061EC2C  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8061EC30  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 8061EC34  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8061EC38  C0 05 00 44 */	lfs f0, 0x44(r5)
/* 8061EC3C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8061EC40  C0 05 00 48 */	lfs f0, 0x48(r5)
/* 8061EC44  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 8061EC48  C0 05 00 04 */	lfs f0, 4(r5)
/* 8061EC4C  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8061EC50  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8061EC54  4E 80 00 20 */	blr 
