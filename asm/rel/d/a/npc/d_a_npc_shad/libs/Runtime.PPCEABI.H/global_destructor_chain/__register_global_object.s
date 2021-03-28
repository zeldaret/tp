lbl_80AD8198:
/* 80AD8198  3C C0 80 AE */	lis r6, __global_destructor_chain@ha
/* 80AD819C  84 06 2C B0 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80AD81A0  90 05 00 00 */	stw r0, 0(r5)
/* 80AD81A4  90 85 00 04 */	stw r4, 4(r5)
/* 80AD81A8  90 65 00 08 */	stw r3, 8(r5)
/* 80AD81AC  90 A6 00 00 */	stw r5, 0(r6)
/* 80AD81B0  4E 80 00 20 */	blr 
