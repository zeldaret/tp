lbl_80D5D85C:
/* 80D5D85C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5D860  7C 08 02 A6 */	mflr r0
/* 80D5D864  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5D868  4B FF FD 09 */	bl create__11daTagPati_cFv
/* 80D5D86C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5D870  7C 08 03 A6 */	mtlr r0
/* 80D5D874  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5D878  4E 80 00 20 */	blr 
