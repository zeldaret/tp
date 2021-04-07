lbl_802632AC:
/* 802632AC  54 64 30 32 */	slwi r4, r3, 6
/* 802632B0  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 802632B4  38 03 D2 E8 */	addi r0, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 802632B8  7C 60 22 14 */	add r3, r0, r4
/* 802632BC  80 03 00 34 */	lwz r0, 0x34(r3)
/* 802632C0  70 03 13 00 */	andi. r3, r0, 0x1300
/* 802632C4  4E 80 00 20 */	blr 
