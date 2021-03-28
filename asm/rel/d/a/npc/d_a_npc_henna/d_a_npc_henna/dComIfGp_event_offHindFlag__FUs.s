lbl_8054A578:
/* 8054A578  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8054A57C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8054A580  A0 04 4F A4 */	lhz r0, 0x4fa4(r4)
/* 8054A584  7C 00 18 78 */	andc r0, r0, r3
/* 8054A588  B0 04 4F A4 */	sth r0, 0x4fa4(r4)
/* 8054A58C  4E 80 00 20 */	blr 
