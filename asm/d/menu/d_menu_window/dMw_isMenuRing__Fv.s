lbl_801FA114:
/* 801FA114  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801FA118  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801FA11C  80 63 00 24 */	lwz r3, 0x24(r3)
/* 801FA120  28 03 00 00 */	cmplwi r3, 0
/* 801FA124  41 82 00 10 */	beq lbl_801FA134
/* 801FA128  88 03 01 47 */	lbz r0, 0x147(r3)
/* 801FA12C  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 801FA130  4E 80 00 20 */	blr 
lbl_801FA134:
/* 801FA134  38 60 00 00 */	li r3, 0
/* 801FA138  4E 80 00 20 */	blr 
