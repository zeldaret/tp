lbl_80D58548:
/* 80D58548  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5854C  7C 08 02 A6 */	mflr r0
/* 80D58550  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D58554  4B FF EE 6D */	bl create__10daTagCsw_cFv
/* 80D58558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5855C  7C 08 03 A6 */	mtlr r0
/* 80D58560  38 21 00 10 */	addi r1, r1, 0x10
/* 80D58564  4E 80 00 20 */	blr 
