lbl_8015F660:
/* 8015F660  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015F664  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8015F668  80 03 0D D0 */	lwz r0, 0xdd0(r3)
/* 8015F66C  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 8015F670  28 00 00 04 */	cmplwi r0, 4
/* 8015F674  41 82 00 14 */	beq lbl_8015F688
/* 8015F678  28 00 00 08 */	cmplwi r0, 8
/* 8015F67C  41 82 00 0C */	beq lbl_8015F688
/* 8015F680  28 00 00 05 */	cmplwi r0, 5
/* 8015F684  40 82 00 0C */	bne lbl_8015F690
lbl_8015F688:
/* 8015F688  38 60 00 01 */	li r3, 1
/* 8015F68C  4E 80 00 20 */	blr 
lbl_8015F690:
/* 8015F690  38 60 00 00 */	li r3, 0
/* 8015F694  4E 80 00 20 */	blr 
