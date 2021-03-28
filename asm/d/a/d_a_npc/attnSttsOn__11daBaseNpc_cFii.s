lbl_8014EFA4:
/* 8014EFA4  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha
/* 8014EFA8  38 C6 61 C0 */	addi r6, r6, g_dComIfG_gameInfo@l
/* 8014EFAC  80 C6 5D B4 */	lwz r6, 0x5db4(r6)
/* 8014EFB0  80 06 05 74 */	lwz r0, 0x574(r6)
/* 8014EFB4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8014EFB8  41 82 00 1C */	beq lbl_8014EFD4
/* 8014EFBC  2C 05 00 00 */	cmpwi r5, 0
/* 8014EFC0  41 82 00 0C */	beq lbl_8014EFCC
/* 8014EFC4  38 00 00 0A */	li r0, 0xa
/* 8014EFC8  48 00 00 20 */	b lbl_8014EFE8
lbl_8014EFCC:
/* 8014EFCC  38 00 00 01 */	li r0, 1
/* 8014EFD0  48 00 00 18 */	b lbl_8014EFE8
lbl_8014EFD4:
/* 8014EFD4  2C 04 00 00 */	cmpwi r4, 0
/* 8014EFD8  41 82 00 0C */	beq lbl_8014EFE4
/* 8014EFDC  38 00 00 0A */	li r0, 0xa
/* 8014EFE0  48 00 00 08 */	b lbl_8014EFE8
lbl_8014EFE4:
/* 8014EFE4  38 00 00 01 */	li r0, 1
lbl_8014EFE8:
/* 8014EFE8  90 03 05 5C */	stw r0, 0x55c(r3)
/* 8014EFEC  4E 80 00 20 */	blr 
