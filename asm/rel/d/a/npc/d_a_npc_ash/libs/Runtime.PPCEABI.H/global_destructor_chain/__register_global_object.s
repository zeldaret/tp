lbl_80958278:
/* 80958278  3C C0 80 96 */	lis r6, __global_destructor_chain@ha
/* 8095827C  84 06 DD 38 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80958280  90 05 00 00 */	stw r0, 0(r5)
/* 80958284  90 85 00 04 */	stw r4, 4(r5)
/* 80958288  90 65 00 08 */	stw r3, 8(r5)
/* 8095828C  90 A6 00 00 */	stw r5, 0(r6)
/* 80958290  4E 80 00 20 */	blr 
