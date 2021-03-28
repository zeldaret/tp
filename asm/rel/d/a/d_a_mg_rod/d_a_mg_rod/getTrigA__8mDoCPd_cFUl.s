lbl_804BB4DC:
/* 804BB4DC  54 64 30 32 */	slwi r4, r3, 6
/* 804BB4E0  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 804BB4E4  38 03 D2 E8 */	addi r0, r3, m_cpadInfo__8mDoCPd_c@l
/* 804BB4E8  7C 60 22 14 */	add r3, r0, r4
/* 804BB4EC  80 03 00 34 */	lwz r0, 0x34(r3)
/* 804BB4F0  54 03 05 EE */	rlwinm r3, r0, 0, 0x17, 0x17
/* 804BB4F4  4E 80 00 20 */	blr 
