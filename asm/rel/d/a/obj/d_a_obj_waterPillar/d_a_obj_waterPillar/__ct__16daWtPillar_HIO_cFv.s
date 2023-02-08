lbl_80D2C6CC:
/* 80D2C6CC  3C 80 80 D3 */	lis r4, lit_3645@ha /* 0x80D2E770@ha */
/* 80D2C6D0  38 A4 E7 70 */	addi r5, r4, lit_3645@l /* 0x80D2E770@l */
/* 80D2C6D4  3C 80 80 D3 */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80D2EB1C@ha */
/* 80D2C6D8  38 04 EB 1C */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80D2EB1C@l */
/* 80D2C6DC  90 03 00 00 */	stw r0, 0(r3)
/* 80D2C6E0  3C 80 80 D3 */	lis r4, __vt__16daWtPillar_HIO_c@ha /* 0x80D2EB10@ha */
/* 80D2C6E4  38 04 EB 10 */	addi r0, r4, __vt__16daWtPillar_HIO_c@l /* 0x80D2EB10@l */
/* 80D2C6E8  90 03 00 00 */	stw r0, 0(r3)
/* 80D2C6EC  C0 05 00 00 */	lfs f0, 0(r5)
/* 80D2C6F0  D0 03 00 04 */	stfs f0, 4(r3)
/* 80D2C6F4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80D2C6F8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D2C6FC  38 00 00 00 */	li r0, 0
/* 80D2C700  B0 03 00 10 */	sth r0, 0x10(r3)
/* 80D2C704  B0 03 00 12 */	sth r0, 0x12(r3)
/* 80D2C708  B0 03 00 14 */	sth r0, 0x14(r3)
/* 80D2C70C  98 03 00 16 */	stb r0, 0x16(r3)
/* 80D2C710  98 03 00 17 */	stb r0, 0x17(r3)
/* 80D2C714  38 00 00 1E */	li r0, 0x1e
/* 80D2C718  98 03 00 18 */	stb r0, 0x18(r3)
/* 80D2C71C  C0 05 00 04 */	lfs f0, 4(r5)
/* 80D2C720  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80D2C724  98 03 00 19 */	stb r0, 0x19(r3)
/* 80D2C728  C0 05 00 08 */	lfs f0, 8(r5)
/* 80D2C72C  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80D2C730  38 00 00 3C */	li r0, 0x3c
/* 80D2C734  98 03 00 2C */	stb r0, 0x2c(r3)
/* 80D2C738  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80D2C73C  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 80D2C740  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 80D2C744  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 80D2C748  C0 05 00 14 */	lfs f0, 0x14(r5)
/* 80D2C74C  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 80D2C750  C0 25 00 18 */	lfs f1, 0x18(r5)
/* 80D2C754  D0 23 00 4C */	stfs f1, 0x4c(r3)
/* 80D2C758  C0 05 00 1C */	lfs f0, 0x1c(r5)
/* 80D2C75C  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 80D2C760  D0 23 00 54 */	stfs f1, 0x54(r3)
/* 80D2C764  4E 80 00 20 */	blr 
