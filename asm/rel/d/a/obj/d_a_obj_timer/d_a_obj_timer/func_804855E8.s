lbl_804855E8:
/* 804855E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804855EC  7C 08 02 A6 */	mflr r0
/* 804855F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804855F4  4B FF FE C9 */	bl _execute__Q210daObjTimer5Act_cFv
/* 804855F8  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 804855FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80485600  7C 08 03 A6 */	mtlr r0
/* 80485604  38 21 00 10 */	addi r1, r1, 0x10
/* 80485608  4E 80 00 20 */	blr 
