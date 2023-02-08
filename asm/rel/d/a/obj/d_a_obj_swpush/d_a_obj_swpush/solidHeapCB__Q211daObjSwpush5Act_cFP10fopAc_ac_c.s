lbl_80482DC4:
/* 80482DC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80482DC8  7C 08 02 A6 */	mflr r0
/* 80482DCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80482DD0  48 00 00 19 */	bl create_heap__Q211daObjSwpush5Act_cFv
/* 80482DD4  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80482DD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80482DDC  7C 08 03 A6 */	mtlr r0
/* 80482DE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80482DE4  4E 80 00 20 */	blr 
