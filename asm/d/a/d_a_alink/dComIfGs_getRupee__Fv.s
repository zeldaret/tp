lbl_80141990:
/* 80141990  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80141994  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80141998  A0 63 00 04 */	lhz r3, 4(r3)
/* 8014199C  4E 80 00 20 */	blr 
