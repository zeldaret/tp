lbl_800E0440:
/* 800E0440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E0444  7C 08 02 A6 */	mflr r0
/* 800E0448  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E044C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E0450  3B E0 00 00 */	li r31, 0
/* 800E0454  7F E4 FB 78 */	mr r4, r31
/* 800E0458  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 800E045C  28 00 00 40 */	cmplwi r0, 0x40
/* 800E0460  41 82 00 0C */	beq lbl_800E046C
/* 800E0464  28 00 01 02 */	cmplwi r0, 0x102
/* 800E0468  40 82 00 14 */	bne lbl_800E047C
lbl_800E046C:
/* 800E046C  A0 03 1F BC */	lhz r0, 0x1fbc(r3)
/* 800E0470  28 00 00 54 */	cmplwi r0, 0x54
/* 800E0474  40 82 00 08 */	bne lbl_800E047C
/* 800E0478  38 80 00 01 */	li r4, 1
lbl_800E047C:
/* 800E047C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 800E0480  40 82 00 10 */	bne lbl_800E0490
/* 800E0484  48 00 00 29 */	bl checkBoomerangThrowAnime__9daAlink_cCFv
/* 800E0488  2C 03 00 00 */	cmpwi r3, 0
/* 800E048C  41 82 00 08 */	beq lbl_800E0494
lbl_800E0490:
/* 800E0490  3B E0 00 01 */	li r31, 1
lbl_800E0494:
/* 800E0494  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800E0498  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E049C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E04A0  7C 08 03 A6 */	mtlr r0
/* 800E04A4  38 21 00 10 */	addi r1, r1, 0x10
/* 800E04A8  4E 80 00 20 */	blr 
