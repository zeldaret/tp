lbl_809688F8:
/* 809688F8  3C C0 80 97 */	lis r6, __global_destructor_chain@ha
/* 809688FC  84 06 CE 80 */	lwzu r0, __global_destructor_chain@l(r6)
/* 80968900  90 05 00 00 */	stw r0, 0(r5)
/* 80968904  90 85 00 04 */	stw r4, 4(r5)
/* 80968908  90 65 00 08 */	stw r3, 8(r5)
/* 8096890C  90 A6 00 00 */	stw r5, 0(r6)
/* 80968910  4E 80 00 20 */	blr 
