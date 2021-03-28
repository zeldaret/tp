lbl_805A4378:
/* 805A4378  3C C0 80 5A */	lis r6, __global_destructor_chain@ha
/* 805A437C  84 06 4B 78 */	lwzu r0, __global_destructor_chain@l(r6)
/* 805A4380  90 05 00 00 */	stw r0, 0(r5)
/* 805A4384  90 85 00 04 */	stw r4, 4(r5)
/* 805A4388  90 65 00 08 */	stw r3, 8(r5)
/* 805A438C  90 A6 00 00 */	stw r5, 0(r6)
/* 805A4390  4E 80 00 20 */	blr 
