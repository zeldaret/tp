lbl_80991858:
/* 80991858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099185C  7C 08 02 A6 */	mflr r0
/* 80991860  90 01 00 14 */	stw r0, 0x14(r1)
/* 80991864  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80991868  7C 7F 1B 78 */	mr r31, r3
/* 8099186C  4B 7C 0F 01 */	bl setMtx__8daNpcF_cFv
/* 80991870  38 7F 0E 30 */	addi r3, r31, 0xe30
/* 80991874  4B FF A7 8D */	bl setMtx__Q211daNpcChin_c12_SpotLight_cFv
/* 80991878  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099187C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80991880  7C 08 03 A6 */	mtlr r0
/* 80991884  38 21 00 10 */	addi r1, r1, 0x10
/* 80991888  4E 80 00 20 */	blr 
