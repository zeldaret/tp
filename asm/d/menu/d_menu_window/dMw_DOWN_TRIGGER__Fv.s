lbl_801F9F98:
/* 801F9F98  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 801F9F9C  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 801F9FA0  80 03 00 34 */	lwz r0, 0x34(r3)
/* 801F9FA4  54 03 F7 FE */	rlwinm r3, r0, 0x1e, 0x1f, 0x1f
/* 801F9FA8  4E 80 00 20 */	blr 
