lbl_802D51F8:
/* 802D51F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D51FC  7C 08 02 A6 */	mflr r0
/* 802D5200  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D5204  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D5208  93 C1 00 08 */	stw r30, 8(r1)
/* 802D520C  7C 7E 1B 78 */	mr r30, r3
/* 802D5210  48 00 01 A9 */	bl findCacheBlock__12JKRFileCacheCFPCv
/* 802D5214  7C 7F 1B 79 */	or. r31, r3, r3
/* 802D5218  40 82 00 0C */	bne lbl_802D5224
/* 802D521C  38 60 00 00 */	li r3, 0
/* 802D5220  48 00 00 34 */	b lbl_802D5254
lbl_802D5224:
/* 802D5224  38 7E 00 3C */	addi r3, r30, 0x3c
/* 802D5228  7F E4 FB 78 */	mr r4, r31
/* 802D522C  48 00 6F 31 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802D5230  28 1F 00 00 */	cmplwi r31, 0
/* 802D5234  41 82 00 1C */	beq lbl_802D5250
/* 802D5238  41 82 00 10 */	beq lbl_802D5248
/* 802D523C  7F E3 FB 78 */	mr r3, r31
/* 802D5240  38 80 00 00 */	li r4, 0
/* 802D5244  48 00 6B D1 */	bl __dt__10JSUPtrLinkFv
lbl_802D5248:
/* 802D5248  7F E3 FB 78 */	mr r3, r31
/* 802D524C  4B FF 9A F1 */	bl __dl__FPv
lbl_802D5250:
/* 802D5250  38 60 00 01 */	li r3, 1
lbl_802D5254:
/* 802D5254  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D5258  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D525C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D5260  7C 08 03 A6 */	mtlr r0
/* 802D5264  38 21 00 10 */	addi r1, r1, 0x10
/* 802D5268  4E 80 00 20 */	blr 
