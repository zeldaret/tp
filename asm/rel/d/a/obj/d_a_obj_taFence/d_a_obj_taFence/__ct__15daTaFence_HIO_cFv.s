lbl_80D04E6C:
/* 80D04E6C  3C 80 80 D0 */	lis r4, lit_3651@ha
/* 80D04E70  38 A4 60 E0 */	addi r5, r4, lit_3651@l
/* 80D04E74  3C 80 80 D0 */	lis r4, __vt__14mDoHIO_entry_c@ha
/* 80D04E78  38 04 63 1C */	addi r0, r4, __vt__14mDoHIO_entry_c@l
/* 80D04E7C  90 03 00 00 */	stw r0, 0(r3)
/* 80D04E80  3C 80 80 D0 */	lis r4, __vt__15daTaFence_HIO_c@ha
/* 80D04E84  38 04 63 10 */	addi r0, r4, __vt__15daTaFence_HIO_c@l
/* 80D04E88  90 03 00 00 */	stw r0, 0(r3)
/* 80D04E8C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80D04E90  D0 03 00 04 */	stfs f0, 4(r3)
/* 80D04E94  C0 05 00 04 */	lfs f0, 4(r5)
/* 80D04E98  D0 03 00 08 */	stfs f0, 8(r3)
/* 80D04E9C  38 00 00 04 */	li r0, 4
/* 80D04EA0  98 03 00 0C */	stb r0, 0xc(r3)
/* 80D04EA4  C0 05 00 08 */	lfs f0, 8(r5)
/* 80D04EA8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80D04EAC  C0 85 00 0C */	lfs f4, 0xc(r5)
/* 80D04EB0  D0 83 00 14 */	stfs f4, 0x14(r3)
/* 80D04EB4  C0 65 00 10 */	lfs f3, 0x10(r5)
/* 80D04EB8  D0 63 00 18 */	stfs f3, 0x18(r3)
/* 80D04EBC  C0 25 00 14 */	lfs f1, 0x14(r5)
/* 80D04EC0  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80D04EC4  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 80D04EC8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80D04ECC  C0 45 00 1C */	lfs f2, 0x1c(r5)
/* 80D04ED0  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 80D04ED4  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 80D04ED8  D0 83 00 28 */	stfs f4, 0x28(r3)
/* 80D04EDC  D0 63 00 2C */	stfs f3, 0x2c(r3)
/* 80D04EE0  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 80D04EE4  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 80D04EE8  D0 43 00 3C */	stfs f2, 0x3c(r3)
/* 80D04EEC  C0 05 00 20 */	lfs f0, 0x20(r5)
/* 80D04EF0  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 80D04EF4  D0 83 00 44 */	stfs f4, 0x44(r3)
/* 80D04EF8  D0 63 00 48 */	stfs f3, 0x48(r3)
/* 80D04EFC  C0 25 00 24 */	lfs f1, 0x24(r5)
/* 80D04F00  D0 23 00 4C */	stfs f1, 0x4c(r3)
/* 80D04F04  C0 05 00 28 */	lfs f0, 0x28(r5)
/* 80D04F08  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 80D04F0C  D0 43 00 54 */	stfs f2, 0x54(r3)
/* 80D04F10  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 80D04F14  D0 03 00 60 */	stfs f0, 0x60(r3)
/* 80D04F18  D0 83 00 58 */	stfs f4, 0x58(r3)
/* 80D04F1C  D0 63 00 5C */	stfs f3, 0x5c(r3)
/* 80D04F20  D0 23 00 64 */	stfs f1, 0x64(r3)
/* 80D04F24  D0 43 00 68 */	stfs f2, 0x68(r3)
/* 80D04F28  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 80D04F2C  D0 03 00 6C */	stfs f0, 0x6c(r3)
/* 80D04F30  38 00 00 0A */	li r0, 0xa
/* 80D04F34  98 03 00 70 */	stb r0, 0x70(r3)
/* 80D04F38  38 00 00 1B */	li r0, 0x1b
/* 80D04F3C  98 03 00 71 */	stb r0, 0x71(r3)
/* 80D04F40  4E 80 00 20 */	blr 
