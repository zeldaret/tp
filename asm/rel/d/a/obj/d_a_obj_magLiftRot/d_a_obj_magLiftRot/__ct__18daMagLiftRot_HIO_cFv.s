lbl_80C8E94C:
/* 80C8E94C  3C 80 80 C9 */	lis r4, lit_3627@ha /* 0x80C8FAE8@ha */
/* 80C8E950  38 A4 FA E8 */	addi r5, r4, lit_3627@l /* 0x80C8FAE8@l */
/* 80C8E954  3C 80 80 C9 */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80C8FCAC@ha */
/* 80C8E958  38 04 FC AC */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80C8FCAC@l */
/* 80C8E95C  90 03 00 00 */	stw r0, 0(r3)
/* 80C8E960  3C 80 80 C9 */	lis r4, __vt__18daMagLiftRot_HIO_c@ha /* 0x80C8FCA0@ha */
/* 80C8E964  38 04 FC A0 */	addi r0, r4, __vt__18daMagLiftRot_HIO_c@l /* 0x80C8FCA0@l */
/* 80C8E968  90 03 00 00 */	stw r0, 0(r3)
/* 80C8E96C  38 00 00 3C */	li r0, 0x3c
/* 80C8E970  98 03 00 04 */	stb r0, 4(r3)
/* 80C8E974  C0 05 00 00 */	lfs f0, 0(r5)
/* 80C8E978  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C8E97C  C0 05 00 04 */	lfs f0, 4(r5)
/* 80C8E980  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C8E984  C0 05 00 08 */	lfs f0, 8(r5)
/* 80C8E988  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80C8E98C  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80C8E990  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80C8E994  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 80C8E998  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C8E99C  C0 05 00 14 */	lfs f0, 0x14(r5)
/* 80C8E9A0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C8E9A4  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 80C8E9A8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C8E9AC  C0 45 00 1C */	lfs f2, 0x1c(r5)
/* 80C8E9B0  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 80C8E9B4  C0 05 00 20 */	lfs f0, 0x20(r5)
/* 80C8E9B8  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 80C8E9BC  C0 05 00 24 */	lfs f0, 0x24(r5)
/* 80C8E9C0  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80C8E9C4  C0 25 00 28 */	lfs f1, 0x28(r5)
/* 80C8E9C8  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 80C8E9CC  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 80C8E9D0  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80C8E9D4  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 80C8E9D8  D0 43 00 3C */	stfs f2, 0x3c(r3)
/* 80C8E9DC  4E 80 00 20 */	blr 
