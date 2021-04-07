lbl_80C79E4C:
/* 80C79E4C  3C 80 80 C8 */	lis r4, lit_3631@ha /* 0x80C7C618@ha */
/* 80C79E50  38 A4 C6 18 */	addi r5, r4, lit_3631@l /* 0x80C7C618@l */
/* 80C79E54  3C 80 80 C8 */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80C7CA44@ha */
/* 80C79E58  38 04 CA 44 */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80C7CA44@l */
/* 80C79E5C  90 03 00 00 */	stw r0, 0(r3)
/* 80C79E60  3C 80 80 C8 */	lis r4, __vt__19daLv6TogeTrap_HIO_c@ha /* 0x80C7CA38@ha */
/* 80C79E64  38 04 CA 38 */	addi r0, r4, __vt__19daLv6TogeTrap_HIO_c@l /* 0x80C7CA38@l */
/* 80C79E68  90 03 00 00 */	stw r0, 0(r3)
/* 80C79E6C  38 00 00 3C */	li r0, 0x3c
/* 80C79E70  98 03 00 04 */	stb r0, 4(r3)
/* 80C79E74  38 00 00 01 */	li r0, 1
/* 80C79E78  98 03 00 05 */	stb r0, 5(r3)
/* 80C79E7C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80C79E80  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C79E84  C0 05 00 04 */	lfs f0, 4(r5)
/* 80C79E88  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C79E8C  38 00 00 0F */	li r0, 0xf
/* 80C79E90  98 03 00 16 */	stb r0, 0x16(r3)
/* 80C79E94  C0 05 00 08 */	lfs f0, 8(r5)
/* 80C79E98  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C79E9C  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C79EA0  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80C79EA4  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 80C79EA8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80C79EAC  98 03 00 14 */	stb r0, 0x14(r3)
/* 80C79EB0  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 80C79EB4  38 00 00 00 */	li r0, 0
/* 80C79EB8  98 03 00 15 */	stb r0, 0x15(r3)
/* 80C79EBC  C0 05 00 14 */	lfs f0, 0x14(r5)
/* 80C79EC0  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C79EC4  4E 80 00 20 */	blr 
