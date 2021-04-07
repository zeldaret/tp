lbl_801FA050:
/* 801FA050  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 801FA054  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 801FA058  80 03 00 34 */	lwz r0, 0x34(r3)
/* 801FA05C  54 03 BF FE */	rlwinm r3, r0, 0x17, 0x1f, 0x1f
/* 801FA060  4E 80 00 20 */	blr 
