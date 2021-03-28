lbl_80AF7658:
/* 80AF7658  3C C0 80 B0 */	lis r6, __global_destructor_chain@ha
/* 80AF765C  84 06 C6 68 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80AF7660  90 05 00 00 */	stw r0, 0(r5)
/* 80AF7664  90 85 00 04 */	stw r4, 4(r5)
/* 80AF7668  90 65 00 08 */	stw r3, 8(r5)
/* 80AF766C  90 A6 00 00 */	stw r5, 0(r6)
/* 80AF7670  4E 80 00 20 */	blr 
