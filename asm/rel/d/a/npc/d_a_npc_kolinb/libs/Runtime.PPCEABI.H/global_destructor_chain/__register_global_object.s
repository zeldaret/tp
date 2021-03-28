lbl_80A45918:
/* 80A45918  3C C0 80 A5 */	lis r6, __global_destructor_chain@ha
/* 80A4591C  84 06 8E 80 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80A45920  90 05 00 00 */	stw r0, 0(r5)
/* 80A45924  90 85 00 04 */	stw r4, 4(r5)
/* 80A45928  90 65 00 08 */	stw r3, 8(r5)
/* 80A4592C  90 A6 00 00 */	stw r5, 0(r6)
/* 80A45930  4E 80 00 20 */	blr 
