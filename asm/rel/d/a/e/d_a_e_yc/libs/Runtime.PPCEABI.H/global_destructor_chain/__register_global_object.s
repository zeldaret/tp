lbl_807EFE58:
/* 807EFE58  3C C0 80 7F */	lis r6, __global_destructor_chain@ha
/* 807EFE5C  84 06 2B 00 */	lwzu r0, __global_destructor_chain@l(r6)
/* 807EFE60  90 05 00 00 */	stw r0, 0(r5)
/* 807EFE64  90 85 00 04 */	stw r4, 4(r5)
/* 807EFE68  90 65 00 08 */	stw r3, 8(r5)
/* 807EFE6C  90 A6 00 00 */	stw r5, 0(r6)
/* 807EFE70  4E 80 00 20 */	blr 
