lbl_809CB458:
/* 809CB458  3C C0 80 9D */	lis r6, __global_destructor_chain@ha
/* 809CB45C  84 06 FB 60 */	lwzu r0, __global_destructor_chain@l(r6)
/* 809CB460  90 05 00 00 */	stw r0, 0(r5)
/* 809CB464  90 85 00 04 */	stw r4, 4(r5)
/* 809CB468  90 65 00 08 */	stw r3, 8(r5)
/* 809CB46C  90 A6 00 00 */	stw r5, 0(r6)
/* 809CB470  4E 80 00 20 */	blr 
