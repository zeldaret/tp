lbl_804EF078:
/* 804EF078  3C C0 80 50 */	lis r6, __global_destructor_chain@ha
/* 804EF07C  84 06 AE 50 */	lwzu r0, __global_destructor_chain@l(r6)
/* 804EF080  90 05 00 00 */	stw r0, 0(r5)
/* 804EF084  90 85 00 04 */	stw r4, 4(r5)
/* 804EF088  90 65 00 08 */	stw r3, 8(r5)
/* 804EF08C  90 A6 00 00 */	stw r5, 0(r6)
/* 804EF090  4E 80 00 20 */	blr 
