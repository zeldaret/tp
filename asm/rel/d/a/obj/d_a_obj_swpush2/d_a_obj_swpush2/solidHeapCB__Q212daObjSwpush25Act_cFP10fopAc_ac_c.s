lbl_80CFE1AC:
/* 80CFE1AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFE1B0  7C 08 02 A6 */	mflr r0
/* 80CFE1B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFE1B8  48 00 00 19 */	bl create_heap__Q212daObjSwpush25Act_cFv
/* 80CFE1BC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80CFE1C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFE1C4  7C 08 03 A6 */	mtlr r0
/* 80CFE1C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFE1CC  4E 80 00 20 */	blr 
