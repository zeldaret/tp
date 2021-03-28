lbl_800985A8:
/* 800985A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800985AC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 800985B0  A8 64 5D CC */	lha r3, 0x5dcc(r4)
/* 800985B4  38 03 00 10 */	addi r0, r3, 0x10
/* 800985B8  B0 04 5D CC */	sth r0, 0x5dcc(r4)
/* 800985BC  A8 64 5D D0 */	lha r3, 0x5dd0(r4)
/* 800985C0  38 03 00 10 */	addi r0, r3, 0x10
/* 800985C4  B0 04 5D D0 */	sth r0, 0x5dd0(r4)
/* 800985C8  4E 80 00 20 */	blr 
