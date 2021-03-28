lbl_802E1CD8:
/* 802E1CD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E1CDC  7C 08 02 A6 */	mflr r0
/* 802E1CE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E1CE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E1CE8  7C 7F 1B 78 */	mr r31, r3
/* 802E1CEC  4B FF F3 65 */	bl clear__Q210JUTGamePad7CButtonFv
/* 802E1CF0  7F E3 FB 78 */	mr r3, r31
/* 802E1CF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E1CF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E1CFC  7C 08 03 A6 */	mtlr r0
/* 802E1D00  38 21 00 10 */	addi r1, r1, 0x10
/* 802E1D04  4E 80 00 20 */	blr 
