lbl_802A33F4:
/* 802A33F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A33F8  7C 08 02 A6 */	mflr r0
/* 802A33FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A3400  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A3404  7C 7F 1B 78 */	mr r31, r3
/* 802A3408  88 03 02 C6 */	lbz r0, 0x2c6(r3)
/* 802A340C  28 00 00 00 */	cmplwi r0, 0
/* 802A3410  40 82 00 74 */	bne lbl_802A3484
/* 802A3414  88 1F 00 1E */	lbz r0, 0x1e(r31)
/* 802A3418  2C 00 00 04 */	cmpwi r0, 4
/* 802A341C  41 82 00 5C */	beq lbl_802A3478
/* 802A3420  40 80 00 64 */	bge lbl_802A3484
/* 802A3424  2C 00 00 01 */	cmpwi r0, 1
/* 802A3428  41 82 00 38 */	beq lbl_802A3460
/* 802A342C  40 80 00 58 */	bge lbl_802A3484
/* 802A3430  2C 00 00 00 */	cmpwi r0, 0
/* 802A3434  40 80 00 0C */	bge lbl_802A3440
/* 802A3438  48 00 00 4C */	b lbl_802A3484
/* 802A343C  48 00 00 48 */	b lbl_802A3484
lbl_802A3440:
/* 802A3440  4B FF FD F1 */	bl prepare_prepareStream___9JAIStreamFv
/* 802A3444  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A3448  41 82 00 3C */	beq lbl_802A3484
/* 802A344C  38 00 00 05 */	li r0, 5
/* 802A3450  98 1F 00 1E */	stb r0, 0x1e(r31)
/* 802A3454  7F E3 FB 78 */	mr r3, r31
/* 802A3458  48 00 00 41 */	bl prepare_startStream___9JAIStreamFv
/* 802A345C  48 00 00 28 */	b lbl_802A3484
lbl_802A3460:
/* 802A3460  4B FF FD D1 */	bl prepare_prepareStream___9JAIStreamFv
/* 802A3464  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A3468  41 82 00 1C */	beq lbl_802A3484
/* 802A346C  38 00 00 03 */	li r0, 3
/* 802A3470  98 1F 00 1E */	stb r0, 0x1e(r31)
/* 802A3474  48 00 00 10 */	b lbl_802A3484
lbl_802A3478:
/* 802A3478  38 00 00 05 */	li r0, 5
/* 802A347C  98 1F 00 1E */	stb r0, 0x1e(r31)
/* 802A3480  48 00 00 19 */	bl prepare_startStream___9JAIStreamFv
lbl_802A3484:
/* 802A3484  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A3488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A348C  7C 08 03 A6 */	mtlr r0
/* 802A3490  38 21 00 10 */	addi r1, r1, 0x10
/* 802A3494  4E 80 00 20 */	blr 
