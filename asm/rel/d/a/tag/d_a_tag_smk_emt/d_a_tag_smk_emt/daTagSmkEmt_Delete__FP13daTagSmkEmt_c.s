lbl_80D61598:
/* 80D61598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D6159C  7C 08 02 A6 */	mflr r0
/* 80D615A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D615A4  4B FF FE 39 */	bl Delete__13daTagSmkEmt_cFv
/* 80D615A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D615AC  7C 08 03 A6 */	mtlr r0
/* 80D615B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D615B4  4E 80 00 20 */	blr 
