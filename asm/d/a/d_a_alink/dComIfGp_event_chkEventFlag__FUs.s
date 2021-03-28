lbl_80141438:
/* 80141438  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8014143C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80141440  A0 04 4F A0 */	lhz r0, 0x4fa0(r4)
/* 80141444  7C 60 00 38 */	and r0, r3, r0
/* 80141448  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8014144C  4E 80 00 20 */	blr 
