lbl_80697F98:
/* 80697F98  3C C0 80 6A */	lis r6, __global_destructor_chain@ha
/* 80697F9C  84 06 9E 80 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80697FA0  90 05 00 00 */	stw r0, 0(r5)
/* 80697FA4  90 85 00 04 */	stw r4, 4(r5)
/* 80697FA8  90 65 00 08 */	stw r3, 8(r5)
/* 80697FAC  90 A6 00 00 */	stw r5, 0(r6)
/* 80697FB0  4E 80 00 20 */	blr 
