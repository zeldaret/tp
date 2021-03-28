lbl_80182BF8:
/* 80182BF8  54 64 30 32 */	slwi r4, r3, 6
/* 80182BFC  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 80182C00  38 03 D2 E8 */	addi r0, r3, m_cpadInfo__8mDoCPd_c@l
/* 80182C04  7C 60 22 14 */	add r3, r0, r4
/* 80182C08  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80182C0C  54 03 05 EE */	rlwinm r3, r0, 0, 0x17, 0x17
/* 80182C10  4E 80 00 20 */	blr 
