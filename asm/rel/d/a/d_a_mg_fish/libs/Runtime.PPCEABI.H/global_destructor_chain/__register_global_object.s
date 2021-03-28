lbl_80529CB8:
/* 80529CB8  3C C0 80 53 */	lis r6, __global_destructor_chain@ha
/* 80529CBC  84 06 6B 78 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80529CC0  90 05 00 00 */	stw r0, 0(r5)
/* 80529CC4  90 85 00 04 */	stw r4, 4(r5)
/* 80529CC8  90 65 00 08 */	stw r3, 8(r5)
/* 80529CCC  90 A6 00 00 */	stw r5, 0(r6)
/* 80529CD0  4E 80 00 20 */	blr 
