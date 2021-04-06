lbl_800B7168:
/* 800B7168  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B716C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B7170  80 04 5F 18 */	lwz r0, 0x5f18(r4)
/* 800B7174  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 800B7178  4C 82 00 20 */	bnelr 
/* 800B717C  3C 80 80 39 */	lis r4, m__18daAlinkHIO_item_c0@ha /* 0x8038EB50@ha */
/* 800B7180  38 84 EB 50 */	addi r4, r4, m__18daAlinkHIO_item_c0@l /* 0x8038EB50@l */
/* 800B7184  A8 04 00 28 */	lha r0, 0x28(r4)
/* 800B7188  B0 03 30 8E */	sth r0, 0x308e(r3)
/* 800B718C  4E 80 00 20 */	blr 
