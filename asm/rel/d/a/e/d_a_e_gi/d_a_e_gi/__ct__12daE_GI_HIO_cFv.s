lbl_806CD48C:
/* 806CD48C  3C 80 80 6D */	lis r4, lit_3907@ha /* 0x806D0E60@ha */
/* 806CD490  38 A4 0E 60 */	addi r5, r4, lit_3907@l /* 0x806D0E60@l */
/* 806CD494  3C 80 80 6D */	lis r4, __vt__12daE_GI_HIO_c@ha /* 0x806D1114@ha */
/* 806CD498  38 04 11 14 */	addi r0, r4, __vt__12daE_GI_HIO_c@l /* 0x806D1114@l */
/* 806CD49C  90 03 00 00 */	stw r0, 0(r3)
/* 806CD4A0  38 00 FF FF */	li r0, -1
/* 806CD4A4  98 03 00 04 */	stb r0, 4(r3)
/* 806CD4A8  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 806CD4AC  D0 03 00 08 */	stfs f0, 8(r3)
/* 806CD4B0  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 806CD4B4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 806CD4B8  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 806CD4BC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 806CD4C0  C0 05 00 38 */	lfs f0, 0x38(r5)
/* 806CD4C4  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 806CD4C8  C0 05 00 3C */	lfs f0, 0x3c(r5)
/* 806CD4CC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806CD4D0  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 806CD4D4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 806CD4D8  C0 05 00 44 */	lfs f0, 0x44(r5)
/* 806CD4DC  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 806CD4E0  C0 05 00 48 */	lfs f0, 0x48(r5)
/* 806CD4E4  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 806CD4E8  C0 05 00 4C */	lfs f0, 0x4c(r5)
/* 806CD4EC  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 806CD4F0  4E 80 00 20 */	blr 
