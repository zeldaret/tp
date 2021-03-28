lbl_80023564:
/* 80023564  80 8D 87 D0 */	lwz r4, g_fpcPf_ProfileList_p(r13)
/* 80023568  7C 60 07 34 */	extsh r0, r3
/* 8002356C  54 00 10 3A */	slwi r0, r0, 2
/* 80023570  7C 64 00 2E */	lwzx r3, r4, r0
/* 80023574  4E 80 00 20 */	blr 
