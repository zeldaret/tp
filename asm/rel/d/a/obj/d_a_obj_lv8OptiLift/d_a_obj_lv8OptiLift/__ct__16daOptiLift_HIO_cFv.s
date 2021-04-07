lbl_80C8A30C:
/* 80C8A30C  3C 80 80 C9 */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80C8BBCC@ha */
/* 80C8A310  38 04 BB CC */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80C8BBCC@l */
/* 80C8A314  90 03 00 00 */	stw r0, 0(r3)
/* 80C8A318  3C 80 80 C9 */	lis r4, __vt__16daOptiLift_HIO_c@ha /* 0x80C8BBC0@ha */
/* 80C8A31C  38 04 BB C0 */	addi r0, r4, __vt__16daOptiLift_HIO_c@l /* 0x80C8BBC0@l */
/* 80C8A320  90 03 00 00 */	stw r0, 0(r3)
/* 80C8A324  38 00 00 1E */	li r0, 0x1e
/* 80C8A328  98 03 00 04 */	stb r0, 4(r3)
/* 80C8A32C  98 03 00 05 */	stb r0, 5(r3)
/* 80C8A330  98 03 00 06 */	stb r0, 6(r3)
/* 80C8A334  38 A0 00 03 */	li r5, 3
/* 80C8A338  98 A3 00 07 */	stb r5, 7(r3)
/* 80C8A33C  38 80 00 96 */	li r4, 0x96
/* 80C8A340  98 83 00 08 */	stb r4, 8(r3)
/* 80C8A344  38 00 00 FF */	li r0, 0xff
/* 80C8A348  98 03 00 09 */	stb r0, 9(r3)
/* 80C8A34C  98 A3 00 10 */	stb r5, 0x10(r3)
/* 80C8A350  98 83 00 11 */	stb r4, 0x11(r3)
/* 80C8A354  98 03 00 12 */	stb r0, 0x12(r3)
/* 80C8A358  3C 80 80 C9 */	lis r4, lit_3661@ha /* 0x80C8B9AC@ha */
/* 80C8A35C  C0 04 B9 AC */	lfs f0, lit_3661@l(r4)  /* 0x80C8B9AC@l */
/* 80C8A360  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C8A364  4E 80 00 20 */	blr 
