lbl_80D21B18:
/* 80D21B18  88 03 06 00 */	lbz r0, 0x600(r3)
/* 80D21B1C  1C 80 00 54 */	mulli r4, r0, 0x54
/* 80D21B20  3C 60 80 D2 */	lis r3, l_param@ha
/* 80D21B24  38 03 3E B0 */	addi r0, r3, l_param@l
/* 80D21B28  7C 60 22 14 */	add r3, r0, r4
/* 80D21B2C  4E 80 00 20 */	blr 
