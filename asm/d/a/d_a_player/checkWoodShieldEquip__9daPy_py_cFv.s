lbl_8015F3C4:
/* 8015F3C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015F3C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8015F3CC  88 63 00 15 */	lbz r3, 0x15(r3)
/* 8015F3D0  38 80 00 01 */	li r4, 1
/* 8015F3D4  38 03 FF D6 */	addi r0, r3, -42
/* 8015F3D8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8015F3DC  38 60 FF FF */	li r3, -1
/* 8015F3E0  7C 00 20 10 */	subfc r0, r0, r4
/* 8015F3E4  7C 03 01 90 */	subfze r0, r3
/* 8015F3E8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8015F3EC  40 82 00 08 */	bne lbl_8015F3F4
/* 8015F3F0  38 80 00 00 */	li r4, 0
lbl_8015F3F4:
/* 8015F3F4  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 8015F3F8  4E 80 00 20 */	blr 
