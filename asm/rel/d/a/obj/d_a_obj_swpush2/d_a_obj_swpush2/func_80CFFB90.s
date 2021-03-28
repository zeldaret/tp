lbl_80CFFB90:
/* 80CFFB90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFFB94  7C 08 02 A6 */	mflr r0
/* 80CFFB98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFFB9C  4B FF F9 CD */	bl Mthd_Execute__Q212daObjSwpush25Act_cFv
/* 80CFFBA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFFBA4  7C 08 03 A6 */	mtlr r0
/* 80CFFBA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFFBAC  4E 80 00 20 */	blr 
