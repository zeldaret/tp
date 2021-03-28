lbl_80A69B6C:
/* 80A69B6C  3C 80 80 A7 */	lis r4, lit_3769@ha
/* 80A69B70  38 A4 A9 7C */	addi r5, r4, lit_3769@l
/* 80A69B74  3C 80 80 A7 */	lis r4, __vt__14daNPC_LF_HIO_c@ha
/* 80A69B78  38 04 AA 78 */	addi r0, r4, __vt__14daNPC_LF_HIO_c@l
/* 80A69B7C  90 03 00 00 */	stw r0, 0(r3)
/* 80A69B80  38 00 FF FF */	li r0, -1
/* 80A69B84  98 03 00 04 */	stb r0, 4(r3)
/* 80A69B88  C0 05 00 00 */	lfs f0, 0(r5)
/* 80A69B8C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80A69B90  C0 05 00 04 */	lfs f0, 4(r5)
/* 80A69B94  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80A69B98  C0 05 00 08 */	lfs f0, 8(r5)
/* 80A69B9C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80A69BA0  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80A69BA4  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80A69BA8  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 80A69BAC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80A69BB0  4E 80 00 20 */	blr 
