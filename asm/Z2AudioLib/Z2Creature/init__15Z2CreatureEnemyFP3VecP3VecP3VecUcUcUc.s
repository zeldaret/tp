lbl_802C10B4:
/* 802C10B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C10B8  7C 08 02 A6 */	mflr r0
/* 802C10BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C10C0  4B FF F4 F1 */	bl init__10Z2CreatureFP3VecP3VecP3VecUcUcUc
/* 802C10C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C10C8  7C 08 03 A6 */	mtlr r0
/* 802C10CC  38 21 00 10 */	addi r1, r1, 0x10
/* 802C10D0  4E 80 00 20 */	blr 
