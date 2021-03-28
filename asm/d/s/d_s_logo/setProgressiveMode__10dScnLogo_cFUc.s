lbl_802584D8:
/* 802584D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802584DC  7C 08 02 A6 */	mflr r0
/* 802584E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802584E4  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 802584E8  48 0E 82 3D */	bl OSSetProgressiveMode
/* 802584EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802584F0  7C 08 03 A6 */	mtlr r0
/* 802584F4  38 21 00 10 */	addi r1, r1, 0x10
/* 802584F8  4E 80 00 20 */	blr 
