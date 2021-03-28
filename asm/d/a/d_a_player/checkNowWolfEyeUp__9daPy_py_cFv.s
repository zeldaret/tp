lbl_8015F424:
/* 8015F424  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015F428  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8015F42C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8015F430  A8 63 30 AC */	lha r3, 0x30ac(r3)
/* 8015F434  4E 80 00 20 */	blr 
