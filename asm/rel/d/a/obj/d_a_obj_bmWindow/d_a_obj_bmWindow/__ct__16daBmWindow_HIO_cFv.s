lbl_80BB820C:
/* 80BB820C  3C 80 80 BC */	lis r4, lit_3653@ha
/* 80BB8210  38 A4 97 3C */	addi r5, r4, lit_3653@l
/* 80BB8214  3C 80 80 BC */	lis r4, __vt__14mDoHIO_entry_c@ha
/* 80BB8218  38 04 99 78 */	addi r0, r4, __vt__14mDoHIO_entry_c@l
/* 80BB821C  90 03 00 00 */	stw r0, 0(r3)
/* 80BB8220  3C 80 80 BC */	lis r4, __vt__18fOpAcm_HIO_entry_c@ha
/* 80BB8224  38 04 99 6C */	addi r0, r4, __vt__18fOpAcm_HIO_entry_c@l
/* 80BB8228  90 03 00 00 */	stw r0, 0(r3)
/* 80BB822C  3C 80 80 BC */	lis r4, __vt__16daBmWindow_HIO_c@ha
/* 80BB8230  38 04 99 60 */	addi r0, r4, __vt__16daBmWindow_HIO_c@l
/* 80BB8234  90 03 00 00 */	stw r0, 0(r3)
/* 80BB8238  38 00 00 0A */	li r0, 0xa
/* 80BB823C  98 03 00 04 */	stb r0, 4(r3)
/* 80BB8240  38 80 00 03 */	li r4, 3
/* 80BB8244  98 83 00 05 */	stb r4, 5(r3)
/* 80BB8248  C0 65 00 00 */	lfs f3, 0(r5)
/* 80BB824C  D0 63 00 0C */	stfs f3, 0xc(r3)
/* 80BB8250  C0 45 00 04 */	lfs f2, 4(r5)
/* 80BB8254  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 80BB8258  C0 05 00 08 */	lfs f0, 8(r5)
/* 80BB825C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BB8260  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80BB8264  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80BB8268  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 80BB826C  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 80BB8270  C0 05 00 14 */	lfs f0, 0x14(r5)
/* 80BB8274  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80BB8278  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 80BB827C  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 80BB8280  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 80BB8284  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80BB8288  C0 05 00 1C */	lfs f0, 0x1c(r5)
/* 80BB828C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80BB8290  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 80BB8294  C0 05 00 20 */	lfs f0, 0x20(r5)
/* 80BB8298  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80BB829C  38 00 00 3C */	li r0, 0x3c
/* 80BB82A0  98 03 00 38 */	stb r0, 0x38(r3)
/* 80BB82A4  98 83 00 39 */	stb r4, 0x39(r3)
/* 80BB82A8  4E 80 00 20 */	blr 
