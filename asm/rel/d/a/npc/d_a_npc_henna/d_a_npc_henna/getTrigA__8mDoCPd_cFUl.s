lbl_8054A510:
/* 8054A510  54 64 30 32 */	slwi r4, r3, 6
/* 8054A514  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 8054A518  38 03 D2 E8 */	addi r0, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 8054A51C  7C 60 22 14 */	add r3, r0, r4
/* 8054A520  80 03 00 34 */	lwz r0, 0x34(r3)
/* 8054A524  54 03 05 EE */	rlwinm r3, r0, 0, 0x17, 0x17
/* 8054A528  4E 80 00 20 */	blr 
