lbl_805CD844:
/* 805CD844  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805CD848  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805CD84C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805CD850  88 03 05 68 */	lbz r0, 0x568(r3)
/* 805CD854  28 00 00 08 */	cmplwi r0, 8
/* 805CD858  41 82 00 20 */	beq lbl_805CD878
/* 805CD85C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 805CD860  28 00 00 0A */	cmplwi r0, 0xa
/* 805CD864  41 82 00 14 */	beq lbl_805CD878
/* 805CD868  28 00 00 1E */	cmplwi r0, 0x1e
/* 805CD86C  41 82 00 0C */	beq lbl_805CD878
/* 805CD870  28 00 00 16 */	cmplwi r0, 0x16
/* 805CD874  40 82 00 0C */	bne lbl_805CD880
lbl_805CD878:
/* 805CD878  38 60 00 01 */	li r3, 1
/* 805CD87C  4E 80 00 20 */	blr 
lbl_805CD880:
/* 805CD880  28 00 00 13 */	cmplwi r0, 0x13
/* 805CD884  41 82 00 2C */	beq lbl_805CD8B0
/* 805CD888  28 00 00 14 */	cmplwi r0, 0x14
/* 805CD88C  41 82 00 24 */	beq lbl_805CD8B0
/* 805CD890  28 00 00 17 */	cmplwi r0, 0x17
/* 805CD894  41 82 00 1C */	beq lbl_805CD8B0
/* 805CD898  28 00 00 18 */	cmplwi r0, 0x18
/* 805CD89C  41 82 00 14 */	beq lbl_805CD8B0
/* 805CD8A0  28 00 00 1A */	cmplwi r0, 0x1a
/* 805CD8A4  41 82 00 0C */	beq lbl_805CD8B0
/* 805CD8A8  28 00 00 1F */	cmplwi r0, 0x1f
/* 805CD8AC  40 82 00 0C */	bne lbl_805CD8B8
lbl_805CD8B0:
/* 805CD8B0  38 60 00 01 */	li r3, 1
/* 805CD8B4  4E 80 00 20 */	blr 
lbl_805CD8B8:
/* 805CD8B8  28 00 00 05 */	cmplwi r0, 5
/* 805CD8BC  41 82 00 0C */	beq lbl_805CD8C8
/* 805CD8C0  28 00 00 1E */	cmplwi r0, 0x1e
/* 805CD8C4  40 82 00 0C */	bne lbl_805CD8D0
lbl_805CD8C8:
/* 805CD8C8  38 60 00 01 */	li r3, 1
/* 805CD8CC  4E 80 00 20 */	blr 
lbl_805CD8D0:
/* 805CD8D0  38 60 00 00 */	li r3, 0
/* 805CD8D4  4E 80 00 20 */	blr 
