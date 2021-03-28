lbl_8003D92C:
/* 8003D92C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003D930  7C 08 02 A6 */	mflr r0
/* 8003D934  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003D938  88 C3 00 10 */	lbz r6, 0x10(r3)
/* 8003D93C  80 03 00 00 */	lwz r0, 0(r3)
/* 8003D940  28 00 00 00 */	cmplwi r0, 0
/* 8003D944  41 82 00 08 */	beq lbl_8003D94C
/* 8003D948  4B FF FF 21 */	bl buildTresTypeGroup__22dMenu_Fmap_room_data_cFiii
lbl_8003D94C:
/* 8003D94C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003D950  7C 08 03 A6 */	mtlr r0
/* 8003D954  38 21 00 10 */	addi r1, r1, 0x10
/* 8003D958  4E 80 00 20 */	blr 
