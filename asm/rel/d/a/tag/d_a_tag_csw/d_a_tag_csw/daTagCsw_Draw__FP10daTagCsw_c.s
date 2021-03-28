lbl_80D584C4:
/* 80D584C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D584C8  7C 08 02 A6 */	mflr r0
/* 80D584CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D584D0  4B FF FE E9 */	bl draw__10daTagCsw_cFv
/* 80D584D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D584D8  7C 08 03 A6 */	mtlr r0
/* 80D584DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D584E0  4E 80 00 20 */	blr 
