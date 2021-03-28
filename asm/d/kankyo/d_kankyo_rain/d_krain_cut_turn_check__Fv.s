lbl_8005E8B0:
/* 8005E8B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8005E8B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8005E8B8  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 8005E8BC  38 60 00 00 */	li r3, 0
/* 8005E8C0  28 04 00 00 */	cmplwi r4, 0
/* 8005E8C4  4D 82 00 20 */	beqlr 
/* 8005E8C8  88 04 05 68 */	lbz r0, 0x568(r4)
/* 8005E8CC  28 00 00 08 */	cmplwi r0, 8
/* 8005E8D0  41 82 00 20 */	beq lbl_8005E8F0
/* 8005E8D4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8005E8D8  28 00 00 16 */	cmplwi r0, 0x16
/* 8005E8DC  41 82 00 14 */	beq lbl_8005E8F0
/* 8005E8E0  28 00 00 17 */	cmplwi r0, 0x17
/* 8005E8E4  41 82 00 0C */	beq lbl_8005E8F0
/* 8005E8E8  28 00 00 18 */	cmplwi r0, 0x18
/* 8005E8EC  4C 82 00 20 */	bnelr 
lbl_8005E8F0:
/* 8005E8F0  38 60 00 01 */	li r3, 1
/* 8005E8F4  4E 80 00 20 */	blr 
