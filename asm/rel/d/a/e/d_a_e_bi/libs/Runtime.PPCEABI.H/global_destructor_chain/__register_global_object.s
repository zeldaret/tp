lbl_8068A578:
/* 8068A578  3C C0 80 69 */	lis r6, __global_destructor_chain@ha
/* 8068A57C  84 06 DA D8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 8068A580  90 05 00 00 */	stw r0, 0(r5)
/* 8068A584  90 85 00 04 */	stw r4, 4(r5)
/* 8068A588  90 65 00 08 */	stw r3, 8(r5)
/* 8068A58C  90 A6 00 00 */	stw r5, 0(r6)
/* 8068A590  4E 80 00 20 */	blr 
