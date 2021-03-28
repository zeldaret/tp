lbl_80CCCFB8:
/* 80CCCFB8  3C C0 80 CD */	lis r6, __global_destructor_chain@ha
/* 80CCCFBC  84 06 DA F8 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80CCCFC0  90 05 00 00 */	stw r0, 0(r5)
/* 80CCCFC4  90 85 00 04 */	stw r4, 4(r5)
/* 80CCCFC8  90 65 00 08 */	stw r3, 8(r5)
/* 80CCCFCC  90 A6 00 00 */	stw r5, 0(r6)
/* 80CCCFD0  4E 80 00 20 */	blr 
