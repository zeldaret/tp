lbl_80C4534C:
/* 80C4534C  3C 80 80 C4 */	lis r4, lit_3769@ha
/* 80C45350  38 A4 5F 1C */	addi r5, r4, lit_3769@l
/* 80C45354  3C 80 80 C4 */	lis r4, __vt__16daObj_Kita_HIO_c@ha
/* 80C45358  38 04 5F DC */	addi r0, r4, __vt__16daObj_Kita_HIO_c@l
/* 80C4535C  90 03 00 00 */	stw r0, 0(r3)
/* 80C45360  38 00 FF FF */	li r0, -1
/* 80C45364  98 03 00 04 */	stb r0, 4(r3)
/* 80C45368  C0 05 00 00 */	lfs f0, 0(r5)
/* 80C4536C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C45370  C0 05 00 04 */	lfs f0, 4(r5)
/* 80C45374  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C45378  C0 05 00 08 */	lfs f0, 8(r5)
/* 80C4537C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80C45380  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80C45384  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80C45388  4E 80 00 20 */	blr 
