lbl_804E4958:
/* 804E4958  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E495C  7C 08 02 A6 */	mflr r0
/* 804E4960  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E4964  4B FF FE 09 */	bl draw__11daBdoorL1_cFv
/* 804E4968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E496C  7C 08 03 A6 */	mtlr r0
/* 804E4970  38 21 00 10 */	addi r1, r1, 0x10
/* 804E4974  4E 80 00 20 */	blr 
