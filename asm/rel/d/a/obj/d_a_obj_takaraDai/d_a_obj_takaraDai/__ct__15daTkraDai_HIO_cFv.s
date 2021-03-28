lbl_80D06D8C:
/* 80D06D8C  3C 80 80 D0 */	lis r4, lit_3627@ha
/* 80D06D90  38 A4 78 08 */	addi r5, r4, lit_3627@l
/* 80D06D94  3C 80 80 D0 */	lis r4, __vt__14mDoHIO_entry_c@ha
/* 80D06D98  38 04 78 FC */	addi r0, r4, __vt__14mDoHIO_entry_c@l
/* 80D06D9C  90 03 00 00 */	stw r0, 0(r3)
/* 80D06DA0  3C 80 80 D0 */	lis r4, __vt__15daTkraDai_HIO_c@ha
/* 80D06DA4  38 04 78 F0 */	addi r0, r4, __vt__15daTkraDai_HIO_c@l
/* 80D06DA8  90 03 00 00 */	stw r0, 0(r3)
/* 80D06DAC  C0 05 00 00 */	lfs f0, 0(r5)
/* 80D06DB0  D0 03 00 04 */	stfs f0, 4(r3)
/* 80D06DB4  C0 05 00 04 */	lfs f0, 4(r5)
/* 80D06DB8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80D06DBC  C0 05 00 08 */	lfs f0, 8(r5)
/* 80D06DC0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D06DC4  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80D06DC8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80D06DCC  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 80D06DD0  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80D06DD4  C0 25 00 14 */	lfs f1, 0x14(r5)
/* 80D06DD8  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 80D06DDC  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 80D06DE0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80D06DE4  C0 05 00 1C */	lfs f0, 0x1c(r5)
/* 80D06DE8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80D06DEC  C0 05 00 20 */	lfs f0, 0x20(r5)
/* 80D06DF0  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 80D06DF4  C0 05 00 24 */	lfs f0, 0x24(r5)
/* 80D06DF8  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80D06DFC  C0 05 00 28 */	lfs f0, 0x28(r5)
/* 80D06E00  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80D06E04  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 80D06E08  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 80D06E0C  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80D06E10  38 00 00 0F */	li r0, 0xf
/* 80D06E14  98 03 00 38 */	stb r0, 0x38(r3)
/* 80D06E18  4E 80 00 20 */	blr 
