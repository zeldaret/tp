lbl_804855A4:
/* 804855A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804855A8  7C 08 02 A6 */	mflr r0
/* 804855AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804855B0  4B FF FB E9 */	bl _create__Q210daObjTimer5Act_cFv
/* 804855B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804855B8  7C 08 03 A6 */	mtlr r0
/* 804855BC  38 21 00 10 */	addi r1, r1, 0x10
/* 804855C0  4E 80 00 20 */	blr 
