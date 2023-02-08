lbl_80CFFB70:
/* 80CFFB70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFFB74  7C 08 02 A6 */	mflr r0
/* 80CFFB78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFFB7C  4B FF EE C1 */	bl Mthd_Delete__Q212daObjSwpush25Act_cFv
/* 80CFFB80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFFB84  7C 08 03 A6 */	mtlr r0
/* 80CFFB88  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFFB8C  4E 80 00 20 */	blr 
