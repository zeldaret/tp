lbl_80B53478:
/* 80B53478  3C C0 80 B6 */	lis r6, __global_destructor_chain@ha
/* 80B5347C  84 06 ED 20 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80B53480  90 05 00 00 */	stw r0, 0(r5)
/* 80B53484  90 85 00 04 */	stw r4, 4(r5)
/* 80B53488  90 65 00 08 */	stw r3, 8(r5)
/* 80B5348C  90 A6 00 00 */	stw r5, 0(r6)
/* 80B53490  4E 80 00 20 */	blr 
