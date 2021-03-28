lbl_8082A4C8:
/* 8082A4C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8082A4CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8082A4D0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8082A4D4  88 03 05 68 */	lbz r0, 0x568(r3)
/* 8082A4D8  28 00 00 13 */	cmplwi r0, 0x13
/* 8082A4DC  41 82 00 30 */	beq lbl_8082A50C
/* 8082A4E0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8082A4E4  28 00 00 14 */	cmplwi r0, 0x14
/* 8082A4E8  41 82 00 24 */	beq lbl_8082A50C
/* 8082A4EC  28 00 00 17 */	cmplwi r0, 0x17
/* 8082A4F0  41 82 00 1C */	beq lbl_8082A50C
/* 8082A4F4  28 00 00 18 */	cmplwi r0, 0x18
/* 8082A4F8  41 82 00 14 */	beq lbl_8082A50C
/* 8082A4FC  28 00 00 1A */	cmplwi r0, 0x1a
/* 8082A500  41 82 00 0C */	beq lbl_8082A50C
/* 8082A504  28 00 00 1F */	cmplwi r0, 0x1f
/* 8082A508  40 82 00 0C */	bne lbl_8082A514
lbl_8082A50C:
/* 8082A50C  38 60 00 01 */	li r3, 1
/* 8082A510  4E 80 00 20 */	blr 
lbl_8082A514:
/* 8082A514  28 00 00 05 */	cmplwi r0, 5
/* 8082A518  41 82 00 0C */	beq lbl_8082A524
/* 8082A51C  28 00 00 1E */	cmplwi r0, 0x1e
/* 8082A520  40 82 00 0C */	bne lbl_8082A52C
lbl_8082A524:
/* 8082A524  38 60 00 01 */	li r3, 1
/* 8082A528  4E 80 00 20 */	blr 
lbl_8082A52C:
/* 8082A52C  38 60 00 00 */	li r3, 0
/* 8082A530  4E 80 00 20 */	blr 
