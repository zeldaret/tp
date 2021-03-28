lbl_80602368:
/* 80602368  54 64 30 32 */	slwi r4, r3, 6
/* 8060236C  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 80602370  38 03 D2 E8 */	addi r0, r3, m_cpadInfo__8mDoCPd_c@l
/* 80602374  7C 60 22 14 */	add r3, r0, r4
/* 80602378  80 03 00 34 */	lwz r0, 0x34(r3)
/* 8060237C  54 03 05 EE */	rlwinm r3, r0, 0, 0x17, 0x17
/* 80602380  4E 80 00 20 */	blr 
