lbl_802C0CE4:
/* 802C0CE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C0CE8  7C 08 02 A6 */	mflr r0
/* 802C0CEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C0CF0  4B FF F8 41 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 802C0CF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C0CF8  7C 08 03 A6 */	mtlr r0
/* 802C0CFC  38 21 00 10 */	addi r1, r1, 0x10
/* 802C0D00  4E 80 00 20 */	blr 
