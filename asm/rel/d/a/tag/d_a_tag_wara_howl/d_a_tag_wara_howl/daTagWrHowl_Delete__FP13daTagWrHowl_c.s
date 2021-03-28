lbl_80D64198:
/* 80D64198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D6419C  7C 08 02 A6 */	mflr r0
/* 80D641A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D641A4  4B FF FE 89 */	bl Delete__13daTagWrHowl_cFv
/* 80D641A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D641AC  7C 08 03 A6 */	mtlr r0
/* 80D641B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D641B4  4E 80 00 20 */	blr 
