lbl_80C1CAEC:
/* 80C1CAEC  3C 80 80 C2 */	lis r4, lit_3647@ha /* 0x80C1DA94@ha */
/* 80C1CAF0  38 A4 DA 94 */	addi r5, r4, lit_3647@l /* 0x80C1DA94@l */
/* 80C1CAF4  3C 80 80 C2 */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80C1DC34@ha */
/* 80C1CAF8  38 04 DC 34 */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80C1DC34@l */
/* 80C1CAFC  90 03 00 00 */	stw r0, 0(r3)
/* 80C1CB00  3C 80 80 C2 */	lis r4, __vt__15daHeavySw_HIO_c@ha /* 0x80C1DC28@ha */
/* 80C1CB04  38 04 DC 28 */	addi r0, r4, __vt__15daHeavySw_HIO_c@l /* 0x80C1DC28@l */
/* 80C1CB08  90 03 00 00 */	stw r0, 0(r3)
/* 80C1CB0C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80C1CB10  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C1CB14  C0 05 00 04 */	lfs f0, 4(r5)
/* 80C1CB18  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C1CB1C  C0 05 00 08 */	lfs f0, 8(r5)
/* 80C1CB20  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C1CB24  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80C1CB28  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80C1CB2C  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 80C1CB30  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80C1CB34  C0 25 00 14 */	lfs f1, 0x14(r5)
/* 80C1CB38  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 80C1CB3C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80C1CB40  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 80C1CB44  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 80C1CB48  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C1CB4C  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 80C1CB50  C0 05 00 1C */	lfs f0, 0x1c(r5)
/* 80C1CB54  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 80C1CB58  38 80 00 1E */	li r4, 0x1e
/* 80C1CB5C  98 83 00 30 */	stb r4, 0x30(r3)
/* 80C1CB60  38 00 00 08 */	li r0, 8
/* 80C1CB64  98 03 00 31 */	stb r0, 0x31(r3)
/* 80C1CB68  98 83 00 32 */	stb r4, 0x32(r3)
/* 80C1CB6C  38 00 00 05 */	li r0, 5
/* 80C1CB70  98 03 00 33 */	stb r0, 0x33(r3)
/* 80C1CB74  38 00 00 04 */	li r0, 4
/* 80C1CB78  98 03 00 34 */	stb r0, 0x34(r3)
/* 80C1CB7C  4E 80 00 20 */	blr 
