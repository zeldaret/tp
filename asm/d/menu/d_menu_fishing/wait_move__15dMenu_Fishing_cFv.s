lbl_801C55A8:
/* 801C55A8  80 8D 86 48 */	lwz r4, mFader__13mDoGph_gInf_c(r13)
/* 801C55AC  80 04 00 04 */	lwz r0, 4(r4)
/* 801C55B0  2C 00 00 01 */	cmpwi r0, 1
/* 801C55B4  4C 82 00 20 */	bnelr 
/* 801C55B8  3C 80 80 3E */	lis r4, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 801C55BC  38 84 D2 E8 */	addi r4, r4, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 801C55C0  80 04 00 34 */	lwz r0, 0x34(r4)
/* 801C55C4  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 801C55C8  4D 82 00 20 */	beqlr 
/* 801C55CC  38 00 00 03 */	li r0, 3
/* 801C55D0  98 03 01 FA */	stb r0, 0x1fa(r3)
/* 801C55D4  4E 80 00 20 */	blr 
