lbl_8023723C:
/* 8023723C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80237240  7C 08 02 A6 */	mflr r0
/* 80237244  90 01 00 14 */	stw r0, 0x14(r1)
/* 80237248  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023724C  7C 7F 1B 78 */	mr r31, r3
/* 80237250  4B FF FE 6D */	bl isKanbanMessage__12dMsgObject_cFv
/* 80237254  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80237258  40 82 00 54 */	bne lbl_802372AC
/* 8023725C  7F E3 FB 78 */	mr r3, r31
/* 80237260  4B FF FF 85 */	bl isPlaceMessage__12dMsgObject_cFv
/* 80237264  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80237268  40 82 00 44 */	bne lbl_802372AC
/* 8023726C  7F E3 FB 78 */	mr r3, r31
/* 80237270  4B FF FF 89 */	bl isBossMessage__12dMsgObject_cFv
/* 80237274  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80237278  40 82 00 34 */	bne lbl_802372AC
/* 8023727C  7F E3 FB 78 */	mr r3, r31
/* 80237280  4B FF FF 8D */	bl isBookMessage__12dMsgObject_cFv
/* 80237284  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80237288  40 82 00 24 */	bne lbl_802372AC
/* 8023728C  7F E3 FB 78 */	mr r3, r31
/* 80237290  4B FF FE 59 */	bl isHowlMessage__12dMsgObject_cFv
/* 80237294  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80237298  40 82 00 14 */	bne lbl_802372AC
/* 8023729C  7F E3 FB 78 */	mr r3, r31
/* 802372A0  4B FF FF 75 */	bl isStaffMessage__12dMsgObject_cFv
/* 802372A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802372A8  41 82 00 0C */	beq lbl_802372B4
lbl_802372AC:
/* 802372AC  38 60 00 00 */	li r3, 0
/* 802372B0  48 00 00 08 */	b lbl_802372B8
lbl_802372B4:
/* 802372B4  38 60 00 01 */	li r3, 1
lbl_802372B8:
/* 802372B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802372BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802372C0  7C 08 03 A6 */	mtlr r0
/* 802372C4  38 21 00 10 */	addi r1, r1, 0x10
/* 802372C8  4E 80 00 20 */	blr 
