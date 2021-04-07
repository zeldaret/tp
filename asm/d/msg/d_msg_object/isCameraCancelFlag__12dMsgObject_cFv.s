lbl_80237934:
/* 80237934  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80237938  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8023793C  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 80237940  88 63 01 9E */	lbz r3, 0x19e(r3)
/* 80237944  30 03 FF FF */	addic r0, r3, -1
/* 80237948  7C 60 19 10 */	subfe r3, r0, r3
/* 8023794C  4E 80 00 20 */	blr 
