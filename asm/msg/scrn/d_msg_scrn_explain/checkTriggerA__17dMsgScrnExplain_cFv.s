lbl_8023E640:
/* 8023E640  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 8023E644  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 8023E648  80 03 00 34 */	lwz r0, 0x34(r3)
/* 8023E64C  54 03 C7 FE */	rlwinm r3, r0, 0x18, 0x1f, 0x1f
/* 8023E650  4E 80 00 20 */	blr 
