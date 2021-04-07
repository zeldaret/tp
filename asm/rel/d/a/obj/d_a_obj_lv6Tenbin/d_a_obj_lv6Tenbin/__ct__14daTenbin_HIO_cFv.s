lbl_80C768EC:
/* 80C768EC  3C 80 80 C7 */	lis r4, lit_3668@ha /* 0x80C779B0@ha */
/* 80C768F0  38 A4 79 B0 */	addi r5, r4, lit_3668@l /* 0x80C779B0@l */
/* 80C768F4  3C 80 80 C7 */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80C77ABC@ha */
/* 80C768F8  38 04 7A BC */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80C77ABC@l */
/* 80C768FC  90 03 00 00 */	stw r0, 0(r3)
/* 80C76900  3C 80 80 C7 */	lis r4, __vt__14daTenbin_HIO_c@ha /* 0x80C77AB0@ha */
/* 80C76904  38 04 7A B0 */	addi r0, r4, __vt__14daTenbin_HIO_c@l /* 0x80C77AB0@l */
/* 80C76908  90 03 00 00 */	stw r0, 0(r3)
/* 80C7690C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80C76910  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C76914  C0 05 00 04 */	lfs f0, 4(r5)
/* 80C76918  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C7691C  C0 05 00 08 */	lfs f0, 8(r5)
/* 80C76920  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C76924  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80C76928  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C7692C  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80C76930  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 80C76934  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80C76938  C0 05 00 14 */	lfs f0, 0x14(r5)
/* 80C7693C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C76940  C0 25 00 18 */	lfs f1, 0x18(r5)
/* 80C76944  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 80C76948  C0 05 00 1C */	lfs f0, 0x1c(r5)
/* 80C7694C  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 80C76950  C0 05 00 20 */	lfs f0, 0x20(r5)
/* 80C76954  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80C76958  C0 05 00 24 */	lfs f0, 0x24(r5)
/* 80C7695C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80C76960  C0 05 00 28 */	lfs f0, 0x28(r5)
/* 80C76964  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 80C76968  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 80C7696C  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80C76970  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 80C76974  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 80C76978  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 80C7697C  38 00 00 0F */	li r0, 0xf
/* 80C76980  98 03 00 40 */	stb r0, 0x40(r3)
/* 80C76984  4E 80 00 20 */	blr 
