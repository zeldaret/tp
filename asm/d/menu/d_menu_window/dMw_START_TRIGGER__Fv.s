lbl_801FA078:
/* 801FA078  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 801FA07C  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 801FA080  80 03 00 34 */	lwz r0, 0x34(r3)
/* 801FA084  54 03 A7 FE */	rlwinm r3, r0, 0x14, 0x1f, 0x1f
/* 801FA088  4E 80 00 20 */	blr 
