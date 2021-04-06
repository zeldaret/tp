lbl_8015F398:
/* 8015F398  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8015F39C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8015F3A0  88 03 00 14 */	lbz r0, 0x14(r3)
/* 8015F3A4  38 60 00 00 */	li r3, 0
/* 8015F3A8  28 00 00 29 */	cmplwi r0, 0x29
/* 8015F3AC  41 82 00 0C */	beq lbl_8015F3B8
/* 8015F3B0  28 00 00 49 */	cmplwi r0, 0x49
/* 8015F3B4  40 82 00 08 */	bne lbl_8015F3BC
lbl_8015F3B8:
/* 8015F3B8  38 60 00 01 */	li r3, 1
lbl_8015F3BC:
/* 8015F3BC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8015F3C0  4E 80 00 20 */	blr 
