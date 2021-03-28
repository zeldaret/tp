lbl_8069AA78:
/* 8069AA78  3C C0 80 6A */	lis r6, __global_destructor_chain@ha
/* 8069AA7C  84 06 1D 90 */	lwzu r0, __global_destructor_chain@l(r6)
/* 8069AA80  90 05 00 00 */	stw r0, 0(r5)
/* 8069AA84  90 85 00 04 */	stw r4, 4(r5)
/* 8069AA88  90 65 00 08 */	stw r3, 8(r5)
/* 8069AA8C  90 A6 00 00 */	stw r5, 0(r6)
/* 8069AA90  4E 80 00 20 */	blr 
