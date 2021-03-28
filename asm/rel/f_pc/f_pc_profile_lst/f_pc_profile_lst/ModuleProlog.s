lbl_80456C58:
/* 80456C58  3C 60 80 45 */	lis r3, g_fpcPfLst_ProfileList@ha
/* 80456C5C  38 03 6C 84 */	addi r0, r3, g_fpcPfLst_ProfileList@l
/* 80456C60  3C 60 80 45 */	lis r3, g_fpcPf_ProfileList_p@ha
/* 80456C64  90 03 0D 50 */	stw r0, g_fpcPf_ProfileList_p@l(r3)
/* 80456C68  4E 80 00 20 */	blr 
