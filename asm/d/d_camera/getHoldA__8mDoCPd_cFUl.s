lbl_8016C314:
/* 8016C314  54 64 30 32 */	slwi r4, r3, 6
/* 8016C318  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 8016C31C  38 03 D2 E8 */	addi r0, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 8016C320  7C 60 22 14 */	add r3, r0, r4
/* 8016C324  80 03 00 30 */	lwz r0, 0x30(r3)
/* 8016C328  54 03 05 EE */	rlwinm r3, r0, 0, 0x17, 0x17
/* 8016C32C  4E 80 00 20 */	blr 
