lbl_80A434F8:
/* 80A434F8  3C C0 80 A4 */	lis r6, __global_destructor_chain@ha
/* 80A434FC  84 06 58 88 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80A43500  90 05 00 00 */	stw r0, 0(r5)
/* 80A43504  90 85 00 04 */	stw r4, 4(r5)
/* 80A43508  90 65 00 08 */	stw r3, 8(r5)
/* 80A4350C  90 A6 00 00 */	stw r5, 0(r6)
/* 80A43510  4E 80 00 20 */	blr 
