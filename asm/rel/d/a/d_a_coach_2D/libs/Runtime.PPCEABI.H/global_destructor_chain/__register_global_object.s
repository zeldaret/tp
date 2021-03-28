lbl_80656958:
/* 80656958  3C C0 80 65 */	lis r6, __global_destructor_chain@ha
/* 8065695C  84 06 7A 88 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80656960  90 05 00 00 */	stw r0, 0(r5)
/* 80656964  90 85 00 04 */	stw r4, 4(r5)
/* 80656968  90 65 00 08 */	stw r3, 8(r5)
/* 8065696C  90 A6 00 00 */	stw r5, 0(r6)
/* 80656970  4E 80 00 20 */	blr 
