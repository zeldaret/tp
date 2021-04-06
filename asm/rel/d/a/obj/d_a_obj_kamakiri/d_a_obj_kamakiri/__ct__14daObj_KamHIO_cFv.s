lbl_80C3518C:
/* 80C3518C  3C 80 80 C4 */	lis r4, __vt__14daObj_KamHIO_c@ha /* 0x80C385BC@ha */
/* 80C35190  38 04 85 BC */	addi r0, r4, __vt__14daObj_KamHIO_c@l /* 0x80C385BC@l */
/* 80C35194  90 03 00 00 */	stw r0, 0(r3)
/* 80C35198  38 00 FF FF */	li r0, -1
/* 80C3519C  98 03 00 04 */	stb r0, 4(r3)
/* 80C351A0  3C 80 80 C4 */	lis r4, lit_3775@ha /* 0x80C38408@ha */
/* 80C351A4  C0 04 84 08 */	lfs f0, lit_3775@l(r4)  /* 0x80C38408@l */
/* 80C351A8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C351AC  3C 80 80 C4 */	lis r4, lit_3776@ha /* 0x80C3840C@ha */
/* 80C351B0  C0 04 84 0C */	lfs f0, lit_3776@l(r4)  /* 0x80C3840C@l */
/* 80C351B4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C351B8  4E 80 00 20 */	blr 
