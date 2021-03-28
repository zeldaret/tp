lbl_80C5356C:
/* 80C5356C  3C 80 80 C5 */	lis r4, __vt__16daObj_Lbox_HIO_c@ha
/* 80C53570  38 04 40 D4 */	addi r0, r4, __vt__16daObj_Lbox_HIO_c@l
/* 80C53574  90 03 00 00 */	stw r0, 0(r3)
/* 80C53578  38 00 FF FF */	li r0, -1
/* 80C5357C  98 03 00 04 */	stb r0, 4(r3)
/* 80C53580  3C 80 80 C5 */	lis r4, lit_3768@ha
/* 80C53584  C0 04 3F BC */	lfs f0, lit_3768@l(r4)
/* 80C53588  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C5358C  3C 80 80 C5 */	lis r4, lit_3769@ha
/* 80C53590  C0 04 3F C0 */	lfs f0, lit_3769@l(r4)
/* 80C53594  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C53598  4E 80 00 20 */	blr 
