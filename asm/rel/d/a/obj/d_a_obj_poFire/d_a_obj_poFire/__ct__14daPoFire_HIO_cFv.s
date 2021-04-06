lbl_80CB294C:
/* 80CB294C  3C 80 80 CB */	lis r4, lit_3662@ha /* 0x80CB3EEC@ha */
/* 80CB2950  38 A4 3E EC */	addi r5, r4, lit_3662@l /* 0x80CB3EEC@l */
/* 80CB2954  3C 80 80 CB */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80CB40F4@ha */
/* 80CB2958  38 04 40 F4 */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80CB40F4@l */
/* 80CB295C  90 03 00 00 */	stw r0, 0(r3)
/* 80CB2960  3C 80 80 CB */	lis r4, __vt__14daPoFire_HIO_c@ha /* 0x80CB40E8@ha */
/* 80CB2964  38 04 40 E8 */	addi r0, r4, __vt__14daPoFire_HIO_c@l /* 0x80CB40E8@l */
/* 80CB2968  90 03 00 00 */	stw r0, 0(r3)
/* 80CB296C  38 00 00 3C */	li r0, 0x3c
/* 80CB2970  98 03 00 04 */	stb r0, 4(r3)
/* 80CB2974  C0 65 00 00 */	lfs f3, 0(r5)
/* 80CB2978  D0 63 00 08 */	stfs f3, 8(r3)
/* 80CB297C  C0 45 00 04 */	lfs f2, 4(r5)
/* 80CB2980  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 80CB2984  C0 25 00 08 */	lfs f1, 8(r5)
/* 80CB2988  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 80CB298C  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80CB2990  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80CB2994  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 80CB2998  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 80CB299C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80CB29A0  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 80CB29A4  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 80CB29A8  C0 05 00 14 */	lfs f0, 0x14(r5)
/* 80CB29AC  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80CB29B0  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 80CB29B4  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80CB29B8  38 00 00 14 */	li r0, 0x14
/* 80CB29BC  98 03 00 30 */	stb r0, 0x30(r3)
/* 80CB29C0  4E 80 00 20 */	blr 
