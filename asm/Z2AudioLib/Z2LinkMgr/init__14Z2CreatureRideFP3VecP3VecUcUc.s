lbl_802C520C:
/* 802C520C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C5210  7C 08 02 A6 */	mflr r0
/* 802C5214  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C5218  4B FF B3 19 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 802C521C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C5220  7C 08 03 A6 */	mtlr r0
/* 802C5224  38 21 00 10 */	addi r1, r1, 0x10
/* 802C5228  4E 80 00 20 */	blr 
