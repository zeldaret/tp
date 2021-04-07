lbl_806F5A4C:
/* 806F5A4C  3C 80 80 6F */	lis r4, lit_3648@ha /* 0x806F7B6C@ha */
/* 806F5A50  38 A4 7B 6C */	addi r5, r4, lit_3648@l /* 0x806F7B6C@l */
/* 806F5A54  3C 80 80 6F */	lis r4, __vt__12daE_IS_HIO_c@ha /* 0x806F7DBC@ha */
/* 806F5A58  38 04 7D BC */	addi r0, r4, __vt__12daE_IS_HIO_c@l /* 0x806F7DBC@l */
/* 806F5A5C  90 03 00 00 */	stw r0, 0(r3)
/* 806F5A60  38 00 FF FF */	li r0, -1
/* 806F5A64  98 03 00 04 */	stb r0, 4(r3)
/* 806F5A68  C0 05 00 00 */	lfs f0, 0(r5)
/* 806F5A6C  D0 03 00 08 */	stfs f0, 8(r3)
/* 806F5A70  C0 05 00 04 */	lfs f0, 4(r5)
/* 806F5A74  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 806F5A78  C0 05 00 08 */	lfs f0, 8(r5)
/* 806F5A7C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 806F5A80  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 806F5A84  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 806F5A88  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 806F5A8C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806F5A90  4E 80 00 20 */	blr 
