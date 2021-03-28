lbl_8014196C:
/* 8014196C  3C 80 80 43 */	lis r4, g_meter2_info@ha
/* 80141970  38 A4 01 88 */	addi r5, r4, g_meter2_info@l
/* 80141974  A0 85 00 AE */	lhz r4, 0xae(r5)
/* 80141978  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8014197C  7C 80 00 78 */	andc r0, r4, r0
/* 80141980  B0 05 00 AE */	sth r0, 0xae(r5)
/* 80141984  4E 80 00 20 */	blr 
