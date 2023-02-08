lbl_804855C4:
/* 804855C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804855C8  7C 08 02 A6 */	mflr r0
/* 804855CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804855D0  4B FF FC 9D */	bl _delete__Q210daObjTimer5Act_cFv
/* 804855D4  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 804855D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804855DC  7C 08 03 A6 */	mtlr r0
/* 804855E0  38 21 00 10 */	addi r1, r1, 0x10
/* 804855E4  4E 80 00 20 */	blr 
