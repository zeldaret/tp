lbl_80237DD8:
/* 80237DD8  38 60 00 00 */	li r3, 0
/* 80237DDC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80237DE0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80237DE4  88 84 00 16 */	lbz r4, 0x16(r4)
/* 80237DE8  2C 04 00 B6 */	cmpwi r4, 0xb6
/* 80237DEC  4C 80 00 20 */	bgelr 
/* 80237DF0  2C 04 00 B0 */	cmpwi r4, 0xb0
/* 80237DF4  4D 80 00 20 */	bltlr 
/* 80237DF8  38 04 01 65 */	addi r0, r4, 0x165
/* 80237DFC  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80237E00  4E 80 00 20 */	blr 
