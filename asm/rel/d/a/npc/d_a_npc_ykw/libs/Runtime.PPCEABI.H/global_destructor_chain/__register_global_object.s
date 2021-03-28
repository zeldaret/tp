lbl_80B5EE98:
/* 80B5EE98  3C C0 80 B7 */	lis r6, __global_destructor_chain@ha
/* 80B5EE9C  84 06 8D 60 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80B5EEA0  90 05 00 00 */	stw r0, 0(r5)
/* 80B5EEA4  90 85 00 04 */	stw r4, 4(r5)
/* 80B5EEA8  90 65 00 08 */	stw r3, 8(r5)
/* 80B5EEAC  90 A6 00 00 */	stw r5, 0(r6)
/* 80B5EEB0  4E 80 00 20 */	blr 
