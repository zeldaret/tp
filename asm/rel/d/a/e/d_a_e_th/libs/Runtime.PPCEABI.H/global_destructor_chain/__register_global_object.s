lbl_807B0318:
/* 807B0318  3C C0 80 7B */	lis r6, __global_destructor_chain@ha
/* 807B031C  84 06 48 68 */	lwzu r0, __global_destructor_chain@l(r6)
/* 807B0320  90 05 00 00 */	stw r0, 0(r5)
/* 807B0324  90 85 00 04 */	stw r4, 4(r5)
/* 807B0328  90 65 00 08 */	stw r3, 8(r5)
/* 807B032C  90 A6 00 00 */	stw r5, 0(r6)
/* 807B0330  4E 80 00 20 */	blr 
