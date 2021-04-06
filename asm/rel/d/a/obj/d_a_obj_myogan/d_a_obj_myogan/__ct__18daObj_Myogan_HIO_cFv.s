lbl_80C9EBAC:
/* 80C9EBAC  3C 80 80 CA */	lis r4, __vt__18daObj_Myogan_HIO_c@ha /* 0x80C9F304@ha */
/* 80C9EBB0  38 04 F3 04 */	addi r0, r4, __vt__18daObj_Myogan_HIO_c@l /* 0x80C9F304@l */
/* 80C9EBB4  90 03 00 00 */	stw r0, 0(r3)
/* 80C9EBB8  38 00 FF FF */	li r0, -1
/* 80C9EBBC  98 03 00 04 */	stb r0, 4(r3)
/* 80C9EBC0  3C 80 80 CA */	lis r4, lit_3762@ha /* 0x80C9F288@ha */
/* 80C9EBC4  C0 04 F2 88 */	lfs f0, lit_3762@l(r4)  /* 0x80C9F288@l */
/* 80C9EBC8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C9EBCC  3C 80 80 CA */	lis r4, lit_3763@ha /* 0x80C9F28C@ha */
/* 80C9EBD0  C0 04 F2 8C */	lfs f0, lit_3763@l(r4)  /* 0x80C9F28C@l */
/* 80C9EBD4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C9EBD8  4E 80 00 20 */	blr 
