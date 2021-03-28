lbl_80D584E4:
/* 80D584E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D584E8  7C 08 02 A6 */	mflr r0
/* 80D584EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D584F0  4B FF F4 F9 */	bl execute__10daTagCsw_cFv
/* 80D584F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D584F8  7C 08 03 A6 */	mtlr r0
/* 80D584FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D58500  4E 80 00 20 */	blr 
