lbl_806C7A4C:
/* 806C7A4C  3C 80 80 6D */	lis r4, lit_3904@ha /* 0x806CD000@ha */
/* 806C7A50  38 A4 D0 00 */	addi r5, r4, lit_3904@l /* 0x806CD000@l */
/* 806C7A54  3C 80 80 6D */	lis r4, __vt__12daE_GE_HIO_c@ha /* 0x806CD344@ha */
/* 806C7A58  38 04 D3 44 */	addi r0, r4, __vt__12daE_GE_HIO_c@l /* 0x806CD344@l */
/* 806C7A5C  90 03 00 00 */	stw r0, 0(r3)
/* 806C7A60  38 00 FF FF */	li r0, -1
/* 806C7A64  98 03 00 04 */	stb r0, 4(r3)
/* 806C7A68  C0 45 00 2C */	lfs f2, 0x2c(r5)
/* 806C7A6C  D0 43 00 08 */	stfs f2, 8(r3)
/* 806C7A70  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 806C7A74  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 806C7A78  C0 25 00 34 */	lfs f1, 0x34(r5)
/* 806C7A7C  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 806C7A80  C0 05 00 38 */	lfs f0, 0x38(r5)
/* 806C7A84  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 806C7A88  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806C7A8C  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 806C7A90  D0 43 00 20 */	stfs f2, 0x20(r3)
/* 806C7A94  C0 05 00 3C */	lfs f0, 0x3c(r5)
/* 806C7A98  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 806C7A9C  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 806C7AA0  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 806C7AA4  C0 05 00 44 */	lfs f0, 0x44(r5)
/* 806C7AA8  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 806C7AAC  C0 05 00 48 */	lfs f0, 0x48(r5)
/* 806C7AB0  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 806C7AB4  4E 80 00 20 */	blr 
